# Create Voice Campaign API - Agentless Mode

Use this API to create a new outbound voice campaign with agentless dialing mode.

| **Method**        | POST                                                                                                                                                                                                                        |
|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**      | `https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign?campaignType=voice`                                                                                                     |
| **Content-Type**  | `application/json`                                                                                                                                                                                                            |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token).                                                                                 |
| **API Scope**     | Campaign Management                                                                                                                                                                                                           |

## Path Parameters

| **Parameter** | **Description** | **Type** |
|---------------|------------------|----------|
| `host` | Environment URL, for example, `https://platform.kore.ai` | string, required |
| `botId` | You can access it from the General Settings page of the bot. | string, required |

## Query Parameter

| **Parameter**   | **Description**                                  | **Type**           |
|-----------------|--------------------------------------------------|--------------------|
| `campaignType`  | Type of Campaign. Use `"sms"`                    | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign?campaignType=voice' \
--header 'auth: <token>>' \
--header 'Content-Type: application/json' \
--header 'iid: st-0603182c-7ffb-53c3-b307-47ca14b9xxxx' \
--header 'accountId: 67777ce93e25326494e9xxxx' \
--data '{
    "name": "Product Feedback Voice Campaign",
    "description": "This voice campaign collects quick feedback on recent purchases. It asks brief questions on satisfaction, usage, and suggestions to help improve future products and customer experience.",
    "contactLists": [
        "Recent Buyers - Q2 2025"
    ],
    "priority": "5",
    "dialingMode": "Agentless",
    "dialingStrategy": {
        "callerId": {
            "phoneNumber": "+15101234567"
        },
        "callingHours": {
            "frequency": "WEEKLY",
            "timezone": "Asia/Kolkata",
            "days": [
                {
                    "day": "MO",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                },
                {
                    "day": "TU",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                },
                {
                    "day": "WE",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                },
                {
                    "day": "TH",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                },
                {
                    "day": "FR",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                }
            ]
        },
        "dialingOrder": "FIFO",
        "maxAttemptsPerRecord": 3,
        "defaultRetryPeriod": 10,
        "maxRingTime": 30
    },
    "schedule": {
        "isSchedulingEnabled": false
    },
    "experienceFlowName": "Voice Survey Entry Flow",
    "enableMachineDetect": false,
    "campaignType": "voice"
}'
```

## Headers

| **Header** | **Description**                   | **Required/Optional** |
|------------|-----------------------------------|------------------------|
| `auth`     | JWT token for authentication.     | required               |
| `iid`     | The Application Id.     | required               |
| `accountId`     | The Account Id.     | required               |

## Body Parameters

| **Header**                                       | **Description**                                                  | **Type**              |
|--------------------------------------------------|------------------------------------------------------------------|-----------------------|
| `name`                                           | Name of the campaign.                                            | string, required      |
| `description`                                    | Description of the campaign.                                     | string, optional      |
| `contactLists`                                   | List of contact list names to use.                               | array of strings, required |
| `priority`                                       | Campaign priority (for example, `"5"`).                          | string, required      |
| `dialingMode`                                    | Must be set to `Agentless`.           | string, required      |
| `dialingStrategy`                                | Strategy details for dialing (caller ID, hours, retry, ring time).| object, required      |
| `dialingStrategy.callerId.phoneNumber`           | Outgoing caller ID number.                                       | object, required      |
| `dialingStrategy.callingHours`                   | Weekly schedule with time zone and allowed calling windows.      | object, required      |
| `dialingStrategy.dialingOrder`                   | Order of record processing (for example, `FIFO`).                | string, required      |
| `dialingStrategy.maxAttemptsPerRecord`           | Max number of call attempts per contact.                         | number, required      |
| `dialingStrategy.defaultRetryPeriod`             | Retry interval (in minutes).                                     | number, required      |
| `dialingStrategy.maxRingTime`                    | Max ring duration per attempt (in seconds).                      | number, required      |
| `schedule`                                       | Indicates if scheduled execution is enabled.                     | object, required      |
| `schedule.isSchedulingEnabled`                   | Set to `false` to start immediately without scheduling.          | boolean, required     |
| `queue_name`                                     | The queue to which answered calls are routed.                    | string, required      |
| `enableMachineDetect`                            | Whether to enable machine detection.                             | boolean, optional     |
| `maxSkips`                                       | Max number of record skips allowed per agent.                    | number, optional      |
| `campaignType`                                   | Must be `"voice"`.                                               | string, required      |


## Sample Response

```
{
    "status": "success",
    "message": "Campaign Product Feedback Voice Campaign creation in progress",
    "data": {
        "name": "Product Feedback Voice Campaign",
        "lname": "product feedback voice campaign",
        "description": "This voice campaign collects quick feedback on recent purchases. It asks brief questions on satisfaction, usage, and suggestions to help improve future products and customer experience.",
        "priority": "5",
        "dialingMode": "Agentless",
        "dialingStrategy": {
            "callerId": {
                "phoneNumber": "+1512345678"
            },
            "callingHours": {
                "frequency": "WEEKLY",
                "days": [
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "MO"
                    },
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "TU"
                    },
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "WE"
                    },
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "TH"
                    },
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "FR"
                    }
                ],
                "timezone": "Asia/Kolkata"
            },
            "dialingOrder": "FIFO",
            "maxAttemptsPerRecord": 3,
            "defaultRetryPeriod": 10,
            "maxRingTime": 30
        },
        "experienceFlow": "cf-ecfa3927-eabc-52c4-8373-8a0b75d57955",
        "status": "Preparing",
        "createdAt": "2025-06-26T10:31:37.861Z",
        "updatedAt": "2025-06-26T10:31:37.861Z",
        "id": "cd-34696b5-94e3-4e6e-a40a-505ca005xxxx",
        "contactLists": [
            "Recent Buyers - Q2 2025"
        ],
        "enableMachineDetect": false
    }
}
```

## Response Body Parameters

### Response Parameters

| Parameter                                              | Description                                                                 | Type                    |
|--------------------------------------------------------|-----------------------------------------------------------------------------|-------------------------|
| `status`                                               | Indicates the overall response status. Example: `"success"`                | String                  |
| `message`                                              | Descriptive message about the result.                                      | String                  |
| `data`                                                 | Contains the campaign configuration details.                               | Object                  |
| `data.name`                                            | Display name of the campaign.                                              | String                  |
| `data.lname`                                           | Lowercase name of the campaign, used internally.                           | String                  |
| `data.description`                                     | Description of the campaign purpose and functionality.                     | String                  |
| `data.priority`                                        | Campaign priority level.                                                   | String                  |
| `data.dialingMode`                                     | Dialing mode used for the campaign. Example: `"Agentless"`                | String                  |
| `data.dialingStrategy`                                 | Defines dialing strategy configuration.                                    | Object                  |
| `data.dialingStrategy.callerId.phoneNumber`            | Caller ID phone number used for outbound calls.                            | String                  |
| `data.dialingStrategy.callingHours`                    | Defines the allowed calling hours and schedule.                            | Object                  |
| `data.dialingStrategy.callingHours.frequency`          | Calling frequency. Example: `"WEEKLY"`                                     | String                  |
| `data.dialingStrategy.callingHours.days`               | Daily schedules with start/end time and day.                               | Array of Object         |
| `data.dialingStrategy.callingHours.days[].start`       | Start time of calling window.                                              | String (hh:mm AM/PM)    |
| `data.dialingStrategy.callingHours.days[].end`         | End time of calling window.                                                | String (hh:mm AM/PM)    |
| `data.dialingStrategy.callingHours.days[].day`         | Day of the week. Example: `"MO"`, `"TU"`                                   | String (2-letter)       |
| `data.dialingStrategy.callingHours.timezone`           | Timezone used for the calling schedule. Example: `"Asia/Kolkata"`         | String                  |
| `data.dialingStrategy.dialingOrder`                    | Order in which records are dialed. Example: `"FIFO"`                       | String                  |
| `data.dialingStrategy.maxAttemptsPerRecord`            | Maximum retry attempts for each record.                                    | Integer                 |
| `data.dialingStrategy.defaultRetryPeriod`              | Default wait time between retries.                                         | Integer (minutes)       |
| `data.dialingStrategy.maxRingTime`                     | Maximum ring time before hanging up.                                       | Integer (seconds)       |
| `data.experienceFlow`                                  | Identifier of the experience flow used for automation.                     | String                  |
| `data.status`                                          | Current state of the campaign. Example: `"Preparing"`                      | String                  |
| `data.createdAt`                                       | Campaign creation timestamp.                                               | String (ISO 8601)       |
| `data.updatedAt`                                       | Last updated timestamp.                                                    | String (ISO 8601)       |
| `data.id`                                              | Unique identifier for the campaign.                                        | String                  |
| `data.contactLists`                                    | Names of associated contact lists.                                         | Array of String         |
| `data.enableMachineDetect`                             | Indicates whether machine detection is enabled.                            | Boolean                 |
