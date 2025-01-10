# Outbound Calling API (Kore.ai Voice Gateway)

Outbound calls can be made to external customers using Kore.ai Voice Gateway. The answering machine detection feature can be enabled on outbound calls to indicate whether a person or a machine has answered a call.

When the dialed call is answered, the answering machine detection feature starts listening to the outbound call, and after a short period, sends an indication of whether a person or a machine has answered the call.

This process happens in two parts:

1. The application triggers an Outbound Call.
2. Receiving Call Status Notifications.

## 1. Triggering the Outbound Call via API

The application triggers an outbound call using an HTTP POST request to the endpoint.

| **Method**      | POST                                                                                                     |
|-------------|----------------------------------------------------------------------------------------------------------|
| **Endpoint**    | `[https://{{host}}/api/1.1/public/bot/:/smartassist/dialout](https://{{host}}/api/1.1/public/bot/:/smartassist/dialout)` |
| **Content Type** | `application/json`                                                                                       |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token.](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**   | SmartAssist Dialout                                                                                      |

### Path Parameters

| **PARAMETER** | **DESCRIPTION**                                                                                          | **TYPE**           |
|-----------|------------------------------------------------------------------------------------------------------|----------------|
| host      | Environment URL, for example, https://platform.kore.ai                                             | string, required |
| botId     | botId or streamId. You can access it from the General Settings page of the bot.                      | string, required |

## Query Parameters

| **PARAMETER**           | **DESCRIPTION**                                                                                                                                              | **TYPE**             |
|---------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|------------------|
| target              | URI of the target of the outbound call. For example:                                                                                                     | string, required |
|                     | - “tel:911234567890” with the country code                                                                                                               |                  |
|                     | - “sip:1234567890@1.23.345.678:1234”                                                                                                                    |                  |
| caller              | User part for the caller ID of the outbound call. It is the experience flow number in Contact Center AI.                                                | string, required |
| notifyurl           | Absolute URL of the dialer application where Kore.ai Voice Gateway sends notifications. If not provided, no notifications are sent.                     | string, optional |
| trunk               | The trunk is a carrier for the account. If not provided, It will pick the default carrier for that account.                                             | string, optional |
| metadata            | Data to be sent to the bot (can be used to provide information to the bot about the call, such as the name of the target).                            | object, optional |
| timers              | An object containing various timeout properties. [Learn more](../contact-center/outbound-calling-kore-ai-vg.md#timers-configuration) | object, optional |
| machinedetection    | Activates machine (answering machine and fax) detection. Possible values:                                                                               | string, optional |
|                     | - “disconnect”: Machine detection is enabled, and the call is disconnected in amd.                                                                      |                  |
|                     | - “detect”: Machine detection is enabled, and the call is not disconnected in amd.                                                                      |                  |
|                     | - “disabled”: Machine detection is not enabled.                                                                                                          |                  |
| thresholdWordCount | Number of spoken words in a greeting that result in an amd_machine_detected result.                                                                      | number, optional |

### Timers Configuration

| **PROPERTY**                                   | **DESCRIPTION**                                                                                        | **REQUIRED**     |
|--------------------------------------------|----------------------------------------------------------------------------------------------------|--------------|
| `timers.noSpeechTimeoutMs`                 | Time in milliseconds to wait for a speech before returning amd_no_speech_detected.                 | no, default=5000 |
| `timers.decisionTimeoutMs`                | Time in milliseconds to wait before returning amd_decision_timeout.                                | no, default=15000 |
| `timers.toneTimeoutMs`                    | Time in milliseconds to wait to hear a tone.                                                       | no, default=20000 |
| `timers.greetingCompletionTimeoutMs`      | Silence in milliseconds to wait for during greeting before returning amd_machine_stopped_speaking. | no, default=2000  |
| `timers.noSpeechTimeoutMs`                | Time in milliseconds to wait for a speech before returning amd_no_speech_detected.                 | no, default=5000  |

### Sample Request

```
curl --location --request POST '{{host}}/api/1.1/public/bot/:/smartassist/dialout' \
--header 'Format: application/json' \
--header 'auth: {{JWT_TOKEN}}'
{
   "bot": "st-e38782ff-0d89-52e9-5678769a49fdexxxx",
   "target": "tel:911234567890",
   "caller": "+127061657882",
   "trunk": "TRUNK",
   "timers": {
       "noSpeechTimeoutMs": 12000,
       "decisionTimeoutMs": 15000,
       "toneTimeoutMs": 10000,
       "greetingCompletionTimeoutMs": 10000
   },
   "thresholdWordCount": 4,
   "machineDetection": "detect",
   "notifyurl": "https://de8a-115-114-88-222.ngrok-free.app/notify",
   "metadata": {
       "jobPosition": "Software Engineer",
       "userName": "John Doe",
       "companyName": "abc corporation",
       "jobLocation": "USA"
   }
}
```

### Sample Response

```
{
"sid":"f9bd46ab-ecbd-4216-842e-0c58db3axxxx",
"callId":"2c01240f-6880-123c-179b-02d8f501xxxx"
}
```

## 2. Receiving Call Status Notifications

To receive call status notifications using the `notifyUrl` property on the dial-out request.

When this property is set, Kore.ai Voice Gateway sends an HTTP POST request to the specified URL.

!!! Note

    Only the final call status is sent, indicating whether the call is completed, failed, busy, no-answer, or temporarily unavailable. Intermediate statuses are not shared.

### Sample Response

```
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
"conversationId": "29e2d933-527e-429c-95b9-ba4f7c7bxxxx",
"reasonCode": "caller-disconnected",
"status": "completed",
"reason": "200 OK",
"duration": 14,
"machinedetection": "amd_human_detected",
"callconnecttime": "5/8/2023,11:32:49AM",
"callDisconnectTime": "5/8/2023,11:33:03AM"
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
"conversationId": "29e2d933-527e-429c-95b9-ba4f7c7bxxxx",
"reasonCode": "SAVG-disconnected",
"status": "completed",
"reason": "200 OK",
"duration": 14,
"machinedetection": "amd_machine_detected",
"callconnecttime": "5/8/2023,11:32:49AM",
"callDisconnectTime": "5/8/2023,11:33:03AM"
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
"conversationId": "4e010fea-cd93-47a0-a548-36d5f621xxxx",
"reasonCode": "caller-disconnected",
"status": "completed",
"reason": "200 OK",
"duration": 10,
"machinedetection": "disabled",
"callconnecttime": "5/8/2023,11:29:55AM",
"callDisconnectTime": "5/8/2023,11:30:05AM"
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
"conversationId": "305ae3c4-b527-4bfd-ad75-9b6abdaaxxxx",
"status": "failed",
"reason": "503 Service Unavailable",
"machinedetection": "disconnect",
"callconnecttime": "5/8/2023,11:31:30AM",
"reasonCode": "Service Unavailable",
"callDisconnectTime": "5/8/2023,11:31:30AM"
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
"conversationId": "80af8588-31c7-4877-a798-a3603c30xxxx",
"status": "failed",
"reason": "486 Busy Here",
"machinedetection": "disconnect",
"callconnecttime": "5/8/2023,11:36:33AM",
"reasonCode": "Busy Here",
"callDisconnectTime": "5/8/2023,11:36:33AM"
},
POST /notify HTTP/1.1
Host: 892c-115-114-88-222.ngrok-free.app
User-Agent: abc
{
"conversationId": "40a95de6-949a-4403-b735-233daxxxx",
"status": "failed",
"reason": "480 Temporarily Unavailable",
"machinedetection": "disconnect",
"callconnecttime": "5/8/2023,11:37:46AM",
"reasonCode": "Temporarily Unavailable",
"callDisconnectTime": "5/8/2023,11:37:46AM"
}
```

## Response Body Parameters

| **PARAMETER**          | **DESCRIPTION**                                                                                                                                                              | **TYPE**             |
|--------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------|
| conversationId     | UUID of the conversation (matches the `conversationId` sent in the dial-out trigger response).                                                                            | string, required |
| status             | Call status:                                                                                                                                                             | string, required |
|                    | - “completed”: The call was completed (disconnected) after it was answered.                                                                                               |                  |
|                    | - “failed”: The call ended before it was answered.                                                                                                                        |                  |
|                    | - “answered”: When a call connection is established.                                                                                                                      |                  |
| reasonCode         | If the status is “failed”, it provides the reason for the failure:                                                                                                        | string, required |
|                    | - “Busy here”: The target number was busy.                                                                                                                                 |                  |
|                    | - “Service Unavailable”: When the server is not available.                                                                                                                 |                  |
|                    | - “Temporarily Unavailable”: The end-user declined or rejected the call.                                                                                                   |                  |
|                    | If the status is “completed”, it provides the reason for the call end:                                                                                                     |                  |
|                    | - “Caller-disconnected”: The call was disconnected from the end-user side.                                                                                                 |                  |
|                    | - “Bot-disconnected”: The call was disconnected by the bot.                                                                                                                |                  |
|                    | - “KoreVG-disconnected”: The call was disconnected due to amd-error.                                                                                                       |                  |
| reason             | Free text describing the reason for the failure (for example, the SIP Reason header).                                                                                      | string, required |
| callconnecttime    | The time when the call was connected (when the end-user picked up the phone).                                                                                             | string, required |
| callDisconnecttime | The time when the call was disconnected.                                                                                                                                 | string, required |
| duration           | The duration of the call from connectTime to the end of the call in seconds.                                                                                               | string, required |
| machinedetection   | This property is included when answering machine detection is enabled (`machineDetection` is configured to “disconnect”) and detected, and the call ends. It provides the detection reason: | string, required |
|                    | - `amd_human_detected`: A human is speaking.                                                                                                                              |                  |
|                    | - `amd_machine_detected`: A machine is speaking.                                                                                                                           |                  |
|                    | - `amd_no_speech_detected`: No speech was detected.                                                                                                                        |                  |
|                    | - `amd_decision_timeout`: No decision was made in the time given.                                                                                                          |                  |
|                    | - `amd_machine_stopped_speaking`: A machine has completed the greeting.                                                                                                    |                  |
|                    | - `amd_tone_detected`: A beep was detected.                                                                                                                               |                  |
|                    | - `amd_error`: An error has occurred.                                                                                                                                     |                  |
|                    | - `amd_stopped`: Answering machine detection was stopped.                                                                                                                  |                  |