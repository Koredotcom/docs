--8<-- "includes/ccai-api-back-link.md"

# Get All Conversations Data – Call Details

To retrieve the raw data for all conversations in a very detailed view. The days’ range cannot be more than seven days.

| **Method** | POST |
|--------|------|
| **Endpoint** | `https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/interactionDetails?offset=0&limit=100`<br>`https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/calldetails` |
| **Content Type** | `application/json` |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope** | SmartAssist Analytics |

## Path Parameters

| **PARAMETER** | **DESCRIPTION** | **TYPE** |
|-----------|-------------|------|
| host | Environment URL, for example, `https://platform.kore.ai` | string, required |
| accountId | The Account Id | string, required |

## Query Parameters

| **PARAMETER** | **DESCRIPTION** | **TYPE** |
|-----------|-------------|------|
| limit | Specifies the number of bot records to retrieve, with a maximum limit of 100. For example, 50 | integer, optional |
| offset | Defines the number of pages to skip or retrieve. Defaults to 0 if unspecified, with a maximum value of 10. For example, 10 | integer, optional |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/calldetails?offset=0&limit=200' \
--header 'authority: smartassist.kore.ai' \
--header 'accept: application/json, text/plain, /' \
--header 'accept-language: en-US,en;q=0.9' \
--header 'accountid: {{accountId}}' \
--header 'app-language: en' \
--header 'authorization: {{YOUR_JWT_TOKEN}}' \
--header 'bot-language: en' \
--header 'content-type: application/json;charset=UTF-8' \
--header 'cookie: _gcl_au=1.11502438879.1669621549; hubspotutk=ef24820cc39323476019ea81d073xxxx; __hssrc=1; _hjSessionUser_1992177=eyJpZCI6ImYxYWQ2MWUyLTUxODItNWJjMy05ZGI1LWU1ZjE2ZmViYTE5YiIsImNyZWF0ZWQiOjE2Njk2MjE1NDk1NDgsImV4aXN0aW5nIjp0cnxxxx==; __hstc=59894770.ef24820cc39323476019ea81d073bc01.1669621552766.1670332174995.1670395535267.15; _ga=GA1.2.174434293.1669621538; _ga_JW3PWR1JKY=GS1.11670419410.15.01670419410.0.0.0; mp_7888bdd5fedfd65f44bb9a3100fa9e80_mixpanel=%7B%22distinct_id%22%3A%20%22184f0fdd19c11-0ccd03f799cfb8-26021151-e1000-184f0fdd19da01%22%2C%22%24device_id%22%3A%20%22184f0fdd19c11-0ccd03f799cfb8-26021151-e1000-184f0fdd19da01%2xxxx' \
--header 'referer: https://smartassist.kore.ai/smartassist/config/queues' \
--header 'sec-ch-ua: "Not?A_Brand";v="8", "Chromium";v="108", "Google Chrome";v="108"' \
--header 'sec-ch-ua-mobile: ?0' \
--header 'sec-ch-ua-platform: "Windows"' \
--header 'sec-fetch-dest: empty' \
--header 'sec-fetch-mode: cors' \
--header 'sec-fetch-site: same-origin' \
--header 'smartassist: true' \
--header 'state: configured' \
--header 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36' \
--header 'x-request-id: 5912cf37-667a-484e-b075-2c42114dxxxx' \
--header 'x-timezone: Asia/Calcutta' \
--header 'x-timezone-offset: -330' \
--header 'auth: <token>' \
--header 'accountId: {{accountId}}' \
--data '{
"startDate":"2025-04-28T04:13:17.098Z",
"endDate":"2025-04-30T00:13:17.098Z",
"timeZoneOffset":0
}'
```

## Request Header Parameters

| **Header**        | **Description**                                             | **Optional/Required** |
|-------------------|-------------------------------------------------------------|-----------------------|
| accept            | Desired response format (for example, application/json)                   | Optional              |
| accept-language   | Preferred response language (for example, en-US)             | Optional              |
| accountId         | Unique account identifier                                    | Required              |
| app-language      | Application display language (for example, en)               | Optional              |
| content-type      | Request body format (application/json;charset=UTF-8)         | Required              |
| referer           | Source application name (for example, smartassist)           | Optional              |
| auth              | JWT authentication token                                     | Required              |
| IId               | Stream or application id                                     | Required              |

## Request Body Parameters

| **PARAMETER**      | **DESCRIPTION**                                                                                                    | **TYPE**                 |
|----------------|----------------------------------------------------------------------------------------------------------------|----------------------|
| startDate      | The start date from which the records need to be considered.                                                   | DateTime, required   |
|                | The date format is: `yyyy-mm-dd HH24:mm:ss`                                                                   |                      |
|                | For Example, `2022-08-25 07:20:15`                                                                             |                      |
| endDate        | The end date from which the records need to be considered.                                                     | DateTime, required   |
|                | The date format is: `yyyy-mm-dd HH24:mm:ss`                                                                   |                      |
|                | For Example, `2022-08-25 18:20:15`                                                                             |                      |
| timeZoneOffset | The time zone offset.                                                                                          | number, required     |
|                | For Example, `-330,630,-500`                                                                                  |                      |
|                | NOTE: If the user is in US/New York, then his timeZoneOffset would be 300. For the -ve numbers use the ‘-‘ sign, and for +ve numbers don’t use the sign. For timeZones east of GMT use the -ve sign, for the timeZones west of GMT don’t use any sign. |                      |
| channels       | The different channels.                                                                                       | array[string], optional |
|                | For Example, `['rtm', 'voice']`                                                                               |                      |
| queues         | The list of queue ids in the instance bots.                                                                   | array[string], optional |

## Sample Response

```
{
    "numResults": 10,
    "data": [
        {
            "sessionId": "68db745779cb8cebd651b8e3",
            "channel": "Web/Mobile Client",
            "sessionStartTime": "2025-09-30T11:40:31",
            "sessionEndTime": "2025-09-30T11:40:42",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a07899",
            "userId": "u-ae9c9170-7a27-5cf5-89ab-e345d9e715be",
            "channelSpecificUserId": "uat02dec@yopmail.com",
            "orgId": "o-5a0da1e4-2df3-5cec-9ee4-af0b2efd3c4f",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "errorDetails": "",
            "finalStatus": "BotResolved",
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7363f"
            ]
        },
        {
            "sessionId": "68db74b379cb8cebd651bbd8",
            "channel": "Web/Mobile Client",
            "sessionStartTime": "2025-09-30T11:42:03",
            "sessionEndTime": "2025-09-30T11:42:16",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a07899",
            "userId": "u-ae9c9170-7a27-5cf5-89ab-e345d9e715be",
            "channelSpecificUserId": "uat02dec@yopmail.com",
            "orgId": "o-5a0da1e4-2df3-5cec-9ee4-af0b2efd3c4f",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "errorDetails": "",
            "finalStatus": "BotResolved",
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7363f"
            ]
        },
        {
            "sessionId": "68db74e179cb8cebd651c010",
            "channel": "Web/Mobile Client",
            "sessionStartTime": "2025-09-30T11:42:49",
            "sessionEndTime": "2025-09-30T11:42:56",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a07899",
            "userId": "u-ae9c9170-7a27-5cf5-89ab-e345d9e715be",
            "channelSpecificUserId": "uat02dec@yopmail.com",
            "orgId": "o-5a0da1e4-2df3-5cec-9ee4-af0b2efd3c4f",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "errorDetails": "",
            "finalStatus": "BotResolved",
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7363f"
            ]
        },
        {
            "conversationId": "c-b48e690-7d7c-4e72-9855-a669d6883031",
            "sessionId": "68db819479cb8cebd651cc67",
            "channel": "Voice",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "reason": "Requires Supervisor Attention",
            "disconnectingEvent": "Agent Hangup",
            "errorDetails": "",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a07899",
            "dispositions": [
                "Requires Supervisor Attention"
            ],
            "dispositionRemarks": [
                "The customer requested to pay their bill. The bot acknowledged the request and informed the customer that an agent would be required to assist with the bill payment. The bot asked the customer to hold while connecting to an available agent. The agent then joined the conversation and greeted the customer."
            ],
            "metaInfo": {
                "caller": "+13213xxxxx",
                "callee": "+13343xxxxx",
                "callerHost": "54.172.60.2",
                "userId": "u-4245d01e-6124-587a-85b2-939fe3cf27ab",
                "dialedNumber": "+13343xxxxx",
                "agentTransferConfig": {
                    "skillsIds": [
                        "6834045b2e9b90fa31c8bee7",
                        "6834045b2e9b90fa31c8bee7"
                    ],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-e5c6ae6b-c388-5acd-93b7-bada87a7363f",
                    "lastIntentName": "Pay Bill",
                    "lastIntentuserInput": "Can you please pay my bill?",
                    "dialog_tone": [],
                    "accountId": "674daf4bc9d17f4dc07034a4"
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "profColour": "#ff4500",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-2b41857b-a1cb-5862-8faf-e3d99c3a0ff4",
                "_id": "u-4245d01e-6124-587a-85b2-939fe3cf27ab",
                "accountId": "60625df27092898e35d9cee5",
                "identities": [
                    {
                        "val": "cs-259844d3-7827-5f33-ae7c-9d790e6d7548/9884fdd7-8546-4db8-bb66-5a7fef188120",
                        "type": "mapped"
                    },
                    {
                        "val": "674daf4bc9d17f4dc07034a4/korevg/9884fdd7-8546-4db8-bb66-5a7fef188120",
                        "type": "mapped"
                    }
                ],
                "transcribeConfig": {
                    "transcribe": true
                }
            },
            "sessionStartTime": "2025-09-30T12:37:00",
            "sessionEndTime": "2025-09-30T12:38:06",
            "channelSpecificUserId": "674daf4bc9d17f4dc07034a4/korevg/9884fdd7-8546-4db8-bb66-5a7fef188120",
            "userId": "u-4245d01e-6124-587a-85b2-939fe3cf27ab",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-7a58cc5-0599-4609-817c-873d83841576",
                    "queueName": "Default Queue",
                    "CallbackOpted": false,
                    "EnterTime": "2025-09-30T12:37:11",
                    "respondingAgent": {
                        "agentId": "u-e3f58196-0f28-5419-9601-dc136e8dd405",
                        "agentNotes": [
                            "The customer requested to pay their bill. The bot acknowledged the request and informed the customer that an agent would be required to assist with the bill payment. The bot asked the customer to hold while connecting to an available agent. The agent then joined the conversation and greeted the customer."
                        ],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "firstResponseTime": "2025-09-30T12:37:20",
                        "firstResponseDuration": 0,
                        "interactionEndTime": "2025-09-30T12:38:09",
                        "interactionDuration": 49,
                        "afterCallWorkDuration": 4,
                        "afterCallWorkEndTime": "2025-09-30T12:38:13",
                        "ConsultingAgents": [
                            {
                                "name": "+919550xxxxx",
                                "acceptedTime": "2025-09-30T12:37:51",
                                "assignedAt": "2025-09-30T12:37:44",
                                "consultingEndTime": "2025-09-30T12:38:02"
                            }
                        ],
                        "JoinedUsers": [],
                        "email": "agent5user26may@example.com",
                        "name": "agent5 user5",
                        "acceptedTime": "2025-09-30T12:37:20",
                        "assignedAt": "2025-09-30T12:37:16"
                    }
                }
            ],
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7363f"
            ]
        },
        {
            "conversationId": "c-c880eb2-0a78-416e-a5b6-b210d033db55",
            "sessionId": "68db79e679cb8cebd651c6c4",
            "channel": "Voice",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "reason": "Requires Supervisor Attention",
            "disconnectingEvent": "Bot Hangup",
            "errorDetails": "",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a07899",
            "dispositions": [
                "Requires Supervisor Attention"
            ],
            "dispositionRemarks": [
                "The customer requested to pay their bill. The bot acknowledged the request and informed the customer that an agent would be required to assist with the bill payment process. The customer agreed to hold, and the bot connected them to an available agent. The agent then took over the conversation."
            ],
            "metaInfo": {
                "caller": "+13213xxxxx",
                "callee": "+133434xxxxx",
                "callerHost": "54.xxx.xx.1",
                "userId": "u-c1ca58fb-2208-52f8-9f9c-d542316e8e78",
                "dialedNumber": "+133434xxxxx",
                "agentTransferConfig": {
                    "skillsIds": [
                        "6834045b2e9b90fa31c8bee7",
                        "6834045b2e9b90fa31c8bee7"
                    ],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-e5c6ae6b-c388-5acd-93b7-bada87a7363f",
                    "lastIntentName": "Pay Bill",
                    "lastIntentuserInput": "Can you please pay my bill?",
                    "dialog_tone": [],
                    "accountId": "674daf4bc9d17f4dc07034a4"
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "profColour": "#ff4500",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-2b41857b-a1cb-5862-8faf-e3d99c3a0ff4",
                "_id": "u-c1ca58fb-2208-52f8-9f9c-d542316e8e78",
                "accountId": "60625df27092898e35d9cee5",
                "identities": [
                    {
                        "val": "cs-259844d3-7827-5f33-ae7c-9d790e6d7548/c246a41e-91c1-418f-a4c3-a5d4ad599f43",
                        "type": "mapped"
                    },
                    {
                        "val": "674daf4bc9d17f4dc07034a4/korevg/c246a41e-91c1-418f-a4c3-a5d4ad599f43",
                        "type": "mapped"
                    }
                ],
                "transcribeConfig": {
                    "transcribe": true
                }
            },
            "sessionStartTime": "2025-09-30T12:04:14",
            "sessionEndTime": "2025-09-30T12:06:08",
            "channelSpecificUserId": "674daf4bc9d17f4dc07034a4/korevg/c246a41e-91c1-418f-a4c3-a5d4ad599f43",
            "userId": "u-c1ca58fb-2208-52f8-9f9c-d542316e8e78",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-7a58cc5-0599-4609-817c-873d83841576",
                    "queueName": "Default Queue",
                    "CallbackOpted": true,
                    "CallbackOptedTime": "2025-09-30T06:34:48.810Z",
                    "userCallbackAcceptTime": "2025-09-30T06:35:00.589Z",
                    "EnterTime": "2025-09-30T12:04:23",
                    "respondingAgent": {
                        "agentId": "u-e3f58196-0f28-5419-9601-dc136e8dd405",
                        "agentNotes": [
                            "The customer requested to pay their bill. The bot acknowledged the request and informed the customer that an agent would be required to assist with the bill payment process. The customer agreed to hold, and the bot connected them to an available agent. The agent then took over the conversation."
                        ],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "firstResponseTime": "2025-09-30T12:05:00",
                        "firstResponseDuration": 0,
                        "interactionEndTime": "2025-09-30T12:06:10",
                        "interactionDuration": 70,
                        "afterCallWorkDuration": 3,
                        "afterCallWorkEndTime": "2025-09-30T12:06:13",
                        "ConsultingAgents": [
                            {
                                "name": "+919550159731",
                                "acceptedTime": "2025-09-30T12:05:45",
                                "assignedAt": "2025-09-30T12:05:36",
                                "consultingEndTime": "2025-09-30T12:05:58"
                            }
                        ],
                        "JoinedUsers": [],
                        "email": "agent5user26may@example.com",
                        "name": "agent5 user5",
                        "acceptedTime": "2025-09-30T12:05:00",
                        "assignedAt": "2025-09-30T12:04:48"
                    }
                }
            ],
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7363f"
            ]
        },
{
            "conversationId": "c-252425a-903a-469e-b16d-eee318e3d736",
            "sessionId": "68dcfba48d99cc7cd125be74",
            "channel": "Web/Mobile Client",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "reason": "",
            "disconnectingEvent": "Agent Closed",
            "botId": "st-df029793-114e-55ab-9d80-8777af8abf68",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "firstName": "Jimmy",
                "lastName": "Conroy",
                "email": "Ethan13@example.com",
                "phoneNumber": "150551xxxxx",
                "identities": [
                    {
                        "val": "cs-ddee2921-797d-5751-8786-bf060407f5a9/22f2681a-23d9-420a-9852-5bdab917afd61f1ce2a8-b737-48ee-89b3-bfeeacb32716",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "botId": "st-df029793-114e-55ab-9d80-8777af8abf68",
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-df029793-114e-55ab-9d80-8777af8abf68",
                    "lastIntentName": "agent transfer",
                    "dialog_tone": []
                },
                "ipAddress": "115.114.88.222",
                "hostDomain": "https://eu-platform.kore.ai",
                "os": "Windows"
            },
            "customerinfo": {
                "CustomerPhone": "15055150310",
                "CenterPhone": "",
                "CustomerFirstName": "Jimmy",
                "CustomerLastName": "Conroy",
                "CustomerEmail": "Ethan13@example.com"
            },
            "sessionStartTime": "2025-10-01T15:30:04",
            "sessionEndTime": "2025-10-01T15:31:01",
            "channelSpecificUserId": "cs-ddee2921-797d-5751-8786-bf060407f5a9/22f2681a-23d9-420a-9852-5bdab917afd61f1ce2a8-b737-48ee-89b3-bfeeacb32716",
            "userId": "u-fb8994f9-3a52-58ed-8f73-81204e78c40f",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-577416d-3745-40e7-904c-85ba1a043491",
                    "queueName": "Default Queue",
                    "CallbackOpted": false,
                    "EnterTime": "2025-10-01T15:30:23",
                    "nonRespondingAgents": [
                        {
                            "agentId": "u-3ea001b4-664a-58b6-8108-b8bca375c166",
                            "agentNotes": [
                                "The customer requested to connect with an agent. The bot acknowledged the request and initiated the transfer process, asking the customer to hold."
                            ],
                            "destinationType": "AgentSegment",
                            "email": "tharun.y@example.com",
                            "name": "Tharun Europe",
                            "assignedAt": "2025-10-01T15:30:35",
                            "nonResponseEvent": "Supervisor Reassigned"
                        }
                    ]
                },
                {
                    "agentId": "u-3ea001b4-664a-58b6-8108-b8bca375c166",
                    "agentNotes": [
                        "The customer requested to connect with an agent. The bot acknowledged the request and initiated the transfer process, asking the customer to hold."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "interactionEndTime": "2025-10-01T15:31:00",
                    "interactionDuration": 15,
                    "afterCallWorkDuration": 32,
                    "afterCallWorkEndTime": "2025-10-01T15:31:32",
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "tharun.y@example.com",
                    "name": "Tharun Europe",
                    "acceptedTime": "2025-10-01T15:30:45",
                    "assignedAt": "2025-10-01T15:30:42"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": []
        }
    ]
}
```

## Response Parameters

| Parameter Name | Type and Format | Description | Example |
|-----------------|-----------------|-------------|---------|
| conversationId | type-prefixed-guid | An ID generated by SmartAssist for this conversation. | c-7b08889-539d-408d-a3e6-9e6ae059xxxx |
| sessionId | internal value | A bot-generated ID for this conversation. | 63bd199c197b3646dadexxxx |
| channel | character string | Name of the channel. Values – Web/Mobile Client, System Mail, or Voice. | Web / Mobile Client |
| sessionStartTime | YYYY-MM-DDTHH SS | Start time of the session. | 2023-01-10 2:25:54 |
| sessionEndTime | YYYY-MM-DDTHH SS | End time of the session. | 2023-01-10 2:25:54 |
| botId | type-prefixed-guid | Identifier of the bot involved. | st-ae8470ab-8ecb-51fb-8e13-c87dc66fxxxx |
| userId | type-prefixed-guid | SmartAssist’s own generated user ID. | u-8413fd99-4ded-5f6d-8c1a-176dc66xxxx |
| channelSpecificUserId | no known format | User ID passed by the channel. | uat02dec@example.com |
| orgId | type-prefixed-guid | The organization ID. | o-5a0da1e4-2df3-5cec-9ee4-af0b2efd3c4f |
| smartStatus | String | The live status of the session. | CLOSED |
| Reason | character string | The reason for the status. | NO AGENTS AVAILABLE |
| disconnectingEvent | character string | The final event leading to the conversation ending. | System Hangup |
| errorDetails | String | Details of any error that occurred. | — |
| finalStatus | character string | Completion status of the conversation. | CLOSED or BotResolved |
| automationBotIDs | Array | List of automation bots involved in the session. | [ "st-e5c6ae6b-c388-5acd-93b7-bada87a7363f" ] |
| isVoicemail | Boolean | Indicates if the session was a voicemail. | NO |
| Direction | String | Direction of the call. Values: Inbound, Outbound. | Inbound |
| dispositions | array of strings | Disposition assigned to the conversation. | [ "Requires Supervisor Attention" ] |
| dispositionRemarks | array of strings | Remarks or notes related to the disposition from the agent. | [ "CUSTOMER needs help with Products and Sales. AGENT will connect her with an agent." ] |
| metaInfo | object | Contains custom information, set by automation. | — |
| metaInfo.caller | string | Phone number of the caller. | +13213643492 |
| metaInfo.callee | string | Phone number of the callee. | +13343445731 |
| metaInfo.callerHost | string | IP address of the caller. | 54.172.60.2 |
| metaInfo.userId | string | Unique identifier of the user. | u-4245d01e-6124-587a-85b2-939fe3cf27ab |
| metaInfo.dialedNumber | string | Number dialed by the caller. | +13343445731 |
| metaInfo.agentTransferConfig | object | Contains configuration for agent transfer including skills, bot, and last intent. | — |
| metaInfo.agentTransferConfig.skillsIds | array | ID of each skill of the agent handling this conversation. | [ "6834045b2e9b90fa31c8bee7", "6834045b2e9b90fa31c8bee7" ] |
| metaInfo.agentTransferConfig.overrideAgents | boolean | Indicates whether agent override is enabled. | false |
| metaInfo.agentTransferConfig.overrideValues | array | Custom override values for agent transfer. | — |
| metaInfo.agentTransferConfig.assistEvents | object | Configuration for assist-related events. | — |
| metaInfo.agentTransferConfig.assistEvents.startEvent | object | Configuration details for the assist start event. | — |
| metaInfo.agentTransferConfig.assistEvents.startEvent.startEvent.isEnabled | boolean | Indicates whether the assist start event is enabled. | false |
| metaInfo.agentTransferConfig.lastIntentName | string | Last intent posted to the bot by the user. | Pay Bill |
| metaInfo.agentTransferConfig.lastIntentuserInput | string | Input posted by the user. | Can you please pay my bill? |
| metaInfo.agentTransferConfig.dialog_tone | array | Dialog tone settings. | — |
| metaInfo.agentTransferConfig.accountId | string | Agent account ID for transfer configuration. | 674daf4bc9d17f4dc07034a4 |
| metaInfo.ipAddress | String | IP address from which the user accessed the session. | 103.172.203.180 |
| metaInfo.hostDomain | String | Domain of the platform instance handling the interaction. | https://eu-platform.kore.ai |
| metaInfo.os | String | Operating system of the user’s device. | Windows |
| metaInfo.customerinfo | Object | Contains customer details captured during the session. | — |
| metaInfo.customerinfo.CustomerPhone | String | Customer’s phone number. | 15055150310 |
| metaInfo.customerinfo.CenterPhone | String | Contact number of the service center. | "" |
| metaInfo.customerinfo.CustomerFirstName | String | Customer’s first name. | Jimmy |
| metaInfo.customerinfo.CustomerLastName | String | Customer’s last name. | Conroy |
| metaInfo.customerinfo.CustomerEmail | String | Customer’s email address. | Ethan13@example.com |
| metaInfo.workinghours | object | Defines the agent’s working days and hours. | — |
| metaInfo.workinghours.workdays | String | The working days of the agent. | mon,tue,wed,thu,fri |
| metaInfo.workinghours.workstart | String | The time when the agent begins accepting calls. | 8:00 AM |
| metaInfo.workinghours.workend | String | The time when the agent stops accepting calls. | 5:00 PM |
| metaInfo.profImage | string | Profile image of the agent. | no-avatar |
| metaInfo.profColour | String | Profile color code. | #ff4500 |
| metaInfo.jTitle | String | Job title of the agent. | — |
| metaInfo.dept | String | Department of the agent. | — |
| metaInfo.activationStatus | String | The activation status of agent. | active |
| metaInfo.firstName | String | The first name of the agent. | — |
| metaInfo.lastName | String | The last name of the agent. | — |
| metaInfo._id | String | Internal identifier for the user object. | u-c1ca58fb-2208-52f8-9f9c-d542316e8e78 |
| metaInfo.identities | Array of objects | Contains the list of mapped identities for the user. | — |
| metaInfo.identities.val | string | Mapped identity value. | cs-259844d3-7827-5f33-ae7c-9d790e6d7548/c246a41e-91c1-418f-a4c3-a5d4ad599f43 |
| metaInfo.identities.type | string | Type of identity mapping. | mapped |
| metaInfo.transcribeConfig | object | Configuration for call transcription. | — |
| metaInfo.transcribeConfig.transcribe | Boolean | Indicates whether transcription is enabled for the session. | true |
| destinations | array of objects | One object for each Queue or Agent that the call was transferred to. | — |
| destinations.destinationType | String | Destination for any transfer – distinguishes direct-to-agent vs. queue. | QueueEntry |
| destinations.queueId | type-prefixed-guid | SmartAssist’s internal ID for the Queue. | qu-123dbe9-c752-464d-a9be-1d0e43b6xxxx |
| destinations.queueName | character string | Name of the queue. | Residential – Sales |
| destinations.CallbackOpted | Boolean | Indicates whether the customer opted for a callback. | True |
| destinations.CallbackOptedTime | String (ISO 8601 datetime) | Timestamp when the customer opted for the callback (only if CallbackOpted = true). | 2025-09-30T06:34:48.810Z |
| destinations.userCallbackAcceptTime | String (ISO 8601 datetime) | Timestamp when the customer accepted the callback initiated by the agent (only if CallbackOpted = true). | 2025-09-30T06:35:00.589Z |
| destinations.EnterTime | String (ISO 8601 datetime) | Time at which this conversation entered this queue. | 2023-01-10 2:25:54 |
| destinations.respondingAgent | object | Details of the responding agent. | — |
| destinations.respondingAgent.agentId | type-prefixed-guid | SmartAssist’s internal ID for the agent. | u-f3a11f62-57d7-5a9f-a071-787650b1xxxx |
| destinations.respondingAgent.agentNotes | array of strings | Notes provided by the agent. | ["CUSTOMER has a problem with Products and Sales. She needs an agent to help her."] |
| destinations.respondingAgent.destinationType | string | Type of agent destination. | AgentSegment |
| destinations.respondingAgent.status | string | Status of the conversation with this respondingAgent. | Answered |
| destinations.respondingAgent.firstResponseTime | YYYY-MM-DDTHH SS | The time at which this agent first responded. | 2023-01-10 2:25:54 |
| destinations.respondingAgent.firstResponseDuration | integer | Duration in seconds, from Agent acceptance to first response. | 20 |
| destinations.respondingAgent.interactionEndTime | YYYY-MM-DDTHH SS | The time at which interaction with this agent ended. | 2023-01-10 2:25:54 |
| destinations.respondingAgent.interactionDuration | integer | Duration in seconds from Agent acceptance to last utterance. | 51 |
| destinations.respondingAgent.afterCallWorkDuration | integer | Duration in seconds of post-call work of this agent. | 8 |
| destinations.respondingAgent.afterCallWorkEndTime | YYYY-MM-DDTHH SS | Time when this agent completed post-call work. | 2023-01-10 2:25:54 |
| destinations.respondingAgent.ConsultingAgents | array of objects | Contains details of internal/external agents to whom the call was transferred. | — |
| destinations.respondingAgent.ConsultingAgents.isMerged | Boolean | Indicates whether the agent’s record is merged with another. | True |
| destinations.respondingAgent.ConsultingAgents.name | string | Name or phone number of the external agent. | +919550159731 |
| destinations.respondingAgent.ConsultingAgents.acceptedTime | String (ISO 8601 datetime) | Timestamp when external agent accepted the call. | 2025-09-30T12:05:45 |
| destinations.respondingAgent.ConsultingAgents.assignedAt | String (ISO 8601 datetime) | Timestamp when the call was assigned to the external agent. | 2025-09-30T12:05:36 |
| destinations.respondingAgent.ConsultingAgents.consultingEndTime | String (ISO 8601 datetime) | Timestamp when the call ended. | 2025-09-30T12:05:58 |
| destinations.respondingAgent.JoinedUsers | array | Users who joined the call. | — |
| destinations.respondingAgent.email | string | Agent’s email address. | jared.smith@example.com |
| destinations.respondingAgent.name | character string | Agent’s name. | Diarmuid O’Scannlain |
| destinations.respondingAgent.assignedAt | YYYY-MM-DDTHH SS | Time at which this contact was assigned to this Agent. | 2023-01-10 2:25:54 |
| destinations.respondingAgent.acceptedTime | YYYY-MM-DDTHH SS | Time at which this Agent accepted the contact. | 2023-01-10 2:25:54 |
| destinations.nonRespondingAgents | Array of objects | Details of agents assigned but did not respond. | — |
| destinations.nonRespondingAgents.agentId | String | Unique identifier of non-responding agent. | u-3ea001b4-664a-58b6-8108-b8bca375c166 |
| destinations.nonRespondingAgents.agentNotes | Array of Strings | Notes or remarks for the interaction. | The customer initiated a conversation with the bot for various requests, including connecting to an agent. |
| destinations.nonRespondingAgents.destinationType | String | Segment type of the interaction. | AgentSegment |
| destinations.nonRespondingAgents.email | String | Email address of the agent. | tharun@example.com |
| destinations.nonRespondingAgents.name | String | Full name of the assigned agent. | Tharun Europe |
| destinations.nonRespondingAgents.assignedAt | String (ISO 8601 datetime) | Timestamp when the agent was assigned. | 2025-10-01T13:08:55 |
| destinations.nonRespondingAgents.nonResponseEvent | String | Reason the agent did not respond. | Ignored |
| userleveltags | array of tag objects | All user-level tags associated with this session. | {"name": "accountnum","value": "121413243141234132"} |
| sessionleveltags | array of tag objects | All session-level tags associated with this session. | {"name": "audioCodesCallDisconnect","value": "1"} |