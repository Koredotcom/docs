--8<-- "includes/ccai-api-back-link.md"

# Get All Conversations Data – Call Details

To retrieve the raw data for all conversations in a detailed view. The days’ range can't be more than seven days.

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
| limit | Specifies the number of conversation records to retrieve, with a maximum limit of 100. For example, 50 | integer, optional |
| offset | Defines the number of pages to skip or retrieve. Defaults to 0 if unspecified, with a maximum value of 10. For example, 10 | integer, optional |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/interactiondetails?offset=0&limit=100' \
--header 'authority: {{host}}' \
--header 'accept: application/json, text/plain, /' \
--header 'accept-langu{{accountId}}' \
--header 'app-language: en' \
--header 'bot-language: en' \
--header 'content-type: application/json;charset=UTF-8' \
--header 'cookie: _gcl_au=1.11502438879.1669621549; hubspotutk=ef24820cc39323476019ea81d073bc01; __hssrc=1; _hjSessionUser_1992177=eyJpZCI6ImYxYWQ2MxxxxxUxODItNWJjMy05ZGI1LWU1ZjE2ZmViYTE5YiIsImNyZWFxxxxxOjE2Njk2MjE1NDk1NDgsImV4aXN0aW5nIjp0cnVlfQ==; _gid=GA1.21902634580.1670327197; _ga_JW3PWR1JKY=GS1.11670395526.14.01670395526.0.0.0; __hstc=59894770.ef24820cc39323476019ea81d073bc01.1669621552766.1670332174995.1670395535267.15; _ga=GA1.2.174434293.166962xxxx; mp_7888bdd5fedfd65f44bb9a3100fa9e80_mixpanel=%7B%22distinct_id%22%3A%20%22184ebc88e771b7-0efa78ccfb655e-26021151-e1000-184ebc88e788d3%22%2C%22%24device_id%22%3A%20%22184ebc88e771b7-0efa78ccfb655e-26021151-e1000-184ebc88e788d3%2xxxx' \
--header 'referer: https://{{host}}/smartassist/config/queues' \
--header 'sec-ch-ua: "Not?A_Brand";v="8", "Chromium";v="108", "Google Chrome";v="108"' \
--header 'sec-ch-ua-mobile: ?0' \
--header 'sec-ch-ua-platform: "Windows"' \
--header 'sec-fetch-dest: empty' \
--header 'sec-fetch-mode: cors' \
--header 'sec-fetch-site: same-origin' \
--header 'smartassist: true' \
--header 'state: configured' \
--header 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36' \
--header 'x-request-id: a7c1651c-1b6b-4fe2-b095-8fa41ebfxxxx' \
--header 'x-timezone: Asia/Calcutta' \
--header 'x-timezone-offset: -330' \
--header 'auth: <token> \
--data '{
"startDate":"2025-09-30",
"endDate":"2025-09-30",
"timeZoneOffset":-330
}'

```

## Request Header Parameters

| **Header**        | **Description**                                             | **Optional/Required** |
|-------------------|-------------------------------------------------------------|-----------------------|
| `accept`            | Desired response format (for example, application/json)                   | Optional              |
| `accept-language`   | Preferred response language (for example, en-US)             | Optional              |
| `accountId`         | Unique account identifier                                    | Required              |
| `app-language`      | Application display language (for example, en)               | Optional              |
| `content-type`      | Request body format (application/json;charset=UTF-8)         | Required              |
| `referer`           | Source application name (for example, smartassist)           | Optional              |
| `auth`              | JWT authentication token                                     | Required              |
| `IId`               | Stream or application id                                     | Required              |

## Request Body Parameters

| **PARAMETER**      | **DESCRIPTION**                                                                                                    | **TYPE**                 |
|----------------|----------------------------------------------------------------------------------------------------------------|----------------------|
| `startDate`      | The start date from which the records need to be considered.                                                   | DateTime, required   |
|                | The date format is: `yyyy-mm-dd HH24:mm:ss`                                                                   |                      |
|                | For Example, `2022-08-25 07:20:15`                                                                             |                      |
| `endDate`        | The end date from which the records need to be considered.                                                     | DateTime, required   |
|                | The date format is: `yyyy-mm-dd HH24:mm:ss`                                                                   |                      |
|                | For Example, `2022-08-25 18:20:15`                                                                             |                      |
| `timeZoneOffset` | The time zone offset.                                                                                          | number, required     |
|                | For Example, `-330,630,-500`                                                                                  |                      |
|                | NOTE: If the user is in US/New York, then his timeZoneOffset would be 300. For the -ve numbers use the ‘-‘ sign, and for +ve numbers don’t use the sign. For timeZones east of GMT use the -ve sign, for the timeZones west of GMT don’t use any sign. |                      |
| `channels`       | The different channels.                                                                                       | array[string], optional |
|                | For Example, `['rtm', 'voice']`                                                                               |                      |
| `queues`         | The list of queue ids in the instance bots.                                                                   | array[string], optional |

## Sample Response

```
{
    "numResults": 10,
    "data": [
        {
            "sessionId": "68db745779cb8cebd651xxxx",
            "channel": "Web/Mobile Client",
            "sessionStartTime": "2025-09-30T11:40:31",
            "sessionEndTime": "2025-09-30T11:40:42",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a0xxxx",
            "userId": "u-ae9c9170-7a27-5cf5-89ab-e345d9e7xxxx",
            "channelSpecificUserId": "john.doe@example.com",
            "orgId": "o-5a0da1e4-2df3-5cec-9ee4-af0b2efdxxxx",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "errorDetails": "",
            "finalStatus": "BotResolved",
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7xxxx"
            ]
        },
        {
            "sessionId": "68db74b379cb8cebd651xxxx",
            "channel": "Web/Mobile Client",
            "sessionStartTime": "2025-09-30T11:42:03",
            "sessionEndTime": "2025-09-30T11:42:16",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a0xxxx",
            "userId": "u-ae9c9170-7a27-5cf5-89ab-e345d9e7xxxx",
            "channelSpecificUserId": "jane.doe@example.com",
            "orgId": "o-5a0da1e4-2df3-5cec-9ee4-af0b2efdxxxx",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "errorDetails": "",
            "finalStatus": "BotResolved",
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7xxxx"
            ]
        },
        {
            "sessionId": "68db74e179cb8cebd651xxxx",
            "channel": "Web/Mobile Client",
            "sessionStartTime": "2025-09-30T11:42:49",
            "sessionEndTime": "2025-09-30T11:42:56",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a0xxxx",
            "userId": "u-ae9c9170-7a27-5cf5-89ab-e345d9e7xxxx",
            "channelSpecificUserId": "john.doe@example.com",
            "orgId": "o-5a0da1e4-2df3-5cec-9ee4-af0b2efdxxxx",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "errorDetails": "",
            "finalStatus": "BotResolved",
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7xxxx"
            ]
        },
        {
            "conversationId": "c-b48e690-7d7c-4e72-9855-a669d688xxxx",
            "sessionId": "68db819479cb8cebd651xxxx",
            "channel": "Voice",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "reason": "Requires Supervisor Attention",
            "disconnectingEvent": "Agent Hangup",
            "errorDetails": "",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a0xxxx",
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
                "userId": "u-4245d01e-6124-587a-85b2-939fe3cfxxxx",
                "dialedNumber": "+13343xxxxx",
                "agentTransferConfig": {
                    "skillsIds": [
                        "6834045b2e9b90fa31c8xxxx",
                        "6834045b2e9b90fa31c8xxxx"
                    ],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-e5c6ae6b-c388-5acd-93b7-bada87a7xxxx",
                    "lastIntentName": "Pay Bill",
                    "lastIntentuserInput": "Can you please pay my bill?",
                    "dialog_tone": [],
                    "accountId": "674daf4bc9d17f4dc070xxxx"
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
                "orgId": "o-2b41857b-a1cb-5862-8faf-e3d99c3axxxx",
                "_id": "u-4245d01e-6124-587a-85b2-939fe3cfxxxx",
                "accountId": "60625df27092898e35d9xxxx",
                "identities": [
                    {
                        "val": "cs-259844d3-7827-5f33-ae7c-9d790e6d7548/9884fdd7-8546-4db8-bb66-5a7fef18xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "674daf4bc9d17f4dc07034a4/korevg/9884fdd7-8546-4db8-bb66-5a7fef18xxxx",
                        "type": "mapped"
                    }
                ],
                "transcribeConfig": {
                    "transcribe": true
                }
            },
            "sessionStartTime": "2025-09-30T12:37:00",
            "sessionEndTime": "2025-09-30T12:38:06",
            "channelSpecificUserId": "674daf4bc9d17f4dc070xxxx/korevg/9884fdd7-8546-4db8-bb66-5a7fef18xxxx",
            "userId": "u-4245d01e-6124-587a-85b2-939fe3cfxxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-7a58cc5-0599-4609-817c-873d8384xxxx",
                    "queueName": "Default Queue",
                    "CallbackOpted": false,
                    "EnterTime": "2025-09-30T12:37:11",
                    "respondingAgent": {
                        "agentId": "u-e3f58196-0f28-5419-9601-dc136e8dxxxx",
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
                        "email": "john.doe@example.com",
                        "name": "John Doe",
                        "acceptedTime": "2025-09-30T12:37:20",
                        "assignedAt": "2025-09-30T12:37:16"
                    }
                }
            ],
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7xxxx"
            ]
        },
        {
            "conversationId": "c-c880eb2-0a78-416e-a5b6-b210d033xxxx",
            "sessionId": "68db79e679cb8cebd651xxxx",
            "channel": "Voice",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "reason": "Requires Supervisor Attention",
            "disconnectingEvent": "Bot Hangup",
            "errorDetails": "",
            "botId": "st-1d7611fa-908a-5f0c-8871-f7ea97a0xxxx",
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
                "userId": "u-c1ca58fb-2208-52f8-9f9c-d542316exxxx",
                "dialedNumber": "+133434xxxxx",
                "agentTransferConfig": {
                    "skillsIds": [
                        "6834045b2e9b90fa31c8xxxx",
                        "6834045b2e9b90fa31c8xxxx"
                    ],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-e5c6ae6b-c388-5acd-93b7-bada87a7xxxx",
                    "lastIntentName": "Pay Bill",
                    "lastIntentuserInput": "Can you please pay my bill?",
                    "dialog_tone": [],
                    "accountId": "674daf4bc9d17f4dc070xxxx"
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
                "orgId": "o-2b41857b-a1cb-5862-8faf-e3d99c3axxxx",
                "_id": "u-c1ca58fb-2208-52f8-9f9c-d542316exxxx",
                "accountId": "60625df27092898e35d9xxxx",
                "identities": [
                    {
                        "val": "cs-259844d3-7827-5f33-ae7c-9d790e6dxxxx/c246a41e-91c1-418f-a4c3-a5d4ad59xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "674daf4bc9d17f4dc070xxxx/korevg/c246a41e-91c1-418f-a4c3-a5d4ad59xxxx",
                        "type": "mapped"
                    }
                ],
                "transcribeConfig": {
                    "transcribe": true
                }
            },
            "sessionStartTime": "2025-09-30T12:04:14",
            "sessionEndTime": "2025-09-30T12:06:08",
            "channelSpecificUserId": "674daf4bc9d17f4dc070xxxx/korevg/c246a41e-91c1-418f-a4c3-a5d4ad59xxxx",
            "userId": "u-c1ca58fb-2208-52f8-9f9c-d542316exxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-7a58cc5-0599-4609-817c-873d8384xxxx",
                    "queueName": "Default Queue",
                    "CallbackOpted": true,
                    "CallbackOptedTime": "2025-09-30T06:34:48.810Z",
                    "userCallbackAcceptTime": "2025-09-30T06:35:00.589Z",
                    "EnterTime": "2025-09-30T12:04:23",
                    "respondingAgent": {
                        "agentId": "u-e3f58196-0f28-5419-9601-dc136e8dxxxx",
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
                                "name": "Jane Doe",
                                "acceptedTime": "2025-09-30T12:05:45",
                                "assignedAt": "2025-09-30T12:05:36",
                                "consultingEndTime": "2025-09-30T12:05:58"
                            }
                        ],
                        "JoinedUsers": [],
                        "email": "john.doe@example.com",
                        "name": "John Doe",
                        "acceptedTime": "2025-09-30T12:05:00",
                        "assignedAt": "2025-09-30T12:04:48"
                    }
                }
            ],
            "automationBotIDs": [
                "st-e5c6ae6b-c388-5acd-93b7-bada87a7xxxx"
            ]
        },
{
            "conversationId": "c-252425a-903a-469e-b16d-eee318e3xxxx",
            "sessionId": "68dcfba48d99cc7cd125xxxx",
            "channel": "Web/Mobile Client",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "reason": "",
            "disconnectingEvent": "Agent Closed",
            "botId": "st-df029793-114e-55ab-9d80-8777af8axxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "firstName": "John",
                "lastName": "Doe",
                "email": "john.doe@example.com",
                "phoneNumber": "150551xxxxx",
                "identities": [
                    {
                        "val": "cs-ddee2921-797d-5751-8786-bf060407f5a9/22f2681a-23d9-420a-9852-5bdab917afd61f1ce2a8-b737-48ee-89b3-bfeeacb3xxxx",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "botId": "st-df029793-114e-55ab-9d80-8777af8axxxx",
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-df029793-114e-55ab-9d80-8777af8axxxx",
                    "lastIntentName": "agent transfer",
                    "dialog_tone": []
                },
                "ipAddress": "123.xxx.xx.xxx",
                "hostDomain": "https://eu-platform.kore.ai",
                "os": "Windows"
            },
            "customerinfo": {
                "CustomerPhone": "1234567890",
                "CenterPhone": "",
                "CustomerFirstName": "Jane",
                "CustomerLastName": "Doe",
                "CustomerEmail": "jane.doe@example.com"
            },
            "sessionStartTime": "2025-10-01T15:30:04",
            "sessionEndTime": "2025-10-01T15:31:01",
            "channelSpecificUserId": "cs-ddee2921-797d-5751-8786-bf060407f5a9/22f2681a-23d9-420a-9852-5bdab917afd61f1ce2a8-b737-48ee-89b3-bfeeacb3xxxx",
            "userId": "u-fb8994f9-3a52-58ed-8f73-81204e7xxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-577416d-3745-40e7-904c-85ba1a04xxxx",
                    "queueName": "Default Queue",
                    "CallbackOpted": false,
                    "EnterTime": "2025-10-01T15:30:23",
                    "nonRespondingAgents": [
                        {
                            "agentId": "u-3ea001b4-664a-58b6-8108-b8bca375xxxx",
                            "agentNotes": [
                                "The customer requested to connect with an agent. The bot acknowledged the request and initiated the transfer process, asking the customer to hold."
                            ],
                            "destinationType": "AgentSegment",
                            "email": "john.doe@example.com",
                            "name": "John Doe",
                            "assignedAt": "2025-10-01T15:30:35",
                            "nonResponseEvent": "Supervisor Reassigned"
                        }
                    ]
                },
                {
                    "agentId": "u-3ea001b4-664a-58b6-8108-b8bca375xxxx",
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
                    "email": "jane.doe@example.com",
                    "name": "Jane Doe",
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

| **Parameter Name** | **Description** | **Example** | **Type and Format** |
|--------------------|-----------------|-------------|---------------------|
| `conversationId` | An ID generated by SmartAssist for this conversation. | c-7b08889-539d-408d-a3e6-9e6ae059xxxx | type-prefixed-guid |
| `sessionId` | A bot-generated ID for this conversation. | 63bd199c197b3646dadexxxx | internal value |
| `channel` | Name of the channel. Values – Web/Mobile Client, System Mail, or Voice. | Web / Mobile Client | string |
| `sessionStartTime` | Start time of the session. | 2023-01-10 2:25:54 | string (ISO 8601 datetime) |
| `sessionEndTime` | End time of the session. | 2023-01-10 2:25:54 | string (ISO 8601 datetime) |
| `botId` | Identifier of the bot involved. | st-ae8470ab-8ecb-51fb-8e13-c87dc66fxxxx | type-prefixed-guid |
| `userId` | SmartAssist’s own generated user ID. | u-8413fd99-4ded-5f6d-8c1a-176dc66xxxx | type-prefixed-guid |
| `channelSpecificUserId` | User ID passed by the channel. | jane.doe@example.com | — |
| `orgId` | The organization ID. | o-5a0da1e4-2df3-5cec-9ee4-af0b2efdxxxx | type-prefixed-guid |
| `smartStatus` | The live status of the session. | CLOSED | string |
| `Reason` | The reason for the status. | NO AGENTS AVAILABLE | string |
| `disconnectingEvent` | The final event leading to conversation end. | System Hangup | character string |
| `errorDetails` | Details of any error that occurred. | — | string |
| `finalStatus` | Completion status of the conversation. | CLOSED or BotResolved | character string |
| `automationBotIDs` | List of automation bots involved in the session. | ["st-e5c6ae6b-c388-5acd-93b7-bada87a7xxxx"] | array |
| `isVoicemail` | Indicates if the session was a voicemail. | NO | boolean |
| `Direction` | Direction of the call. Values: Inbound, Outbound. | Inbound | string |
| `dispositions` | Disposition assigned to the conversation. | ["Requires Supervisor Attention"] | array of strings |
| `dispositionRemarks` | Remarks or notes related to the disposition. | ["CUSTOMER needs help with Products and Sales. AGENT will connect her with an agent."] | array of strings |
| `metaInfo` | Contains custom information, set by automation. | — | object |
| `metaInfo.caller` | Phone number of the caller. | +132136xxxxx | string |
| `metaInfo.callee` | Phone number of the callee. | +133434xxxxx | string |
| `metaInfo.callerHost` | IP address of the caller. | 54.xxx.xx.2 | string |
| `metaInfo.userId` | Unique identifier of the user. | u-4245d01e-6124-587a-85b2-939fe3cfxxxx | string |
| `metaInfo.dialedNumber` | Number dialed by the caller. | +1334344xxxx | string |
| `metaInfo.agentTransferConfig` | Agent transfer settings. | — | object |
| `metaInfo.agentTransferConfig.skillsIds` | Skill IDs of handling agents. | ["6834045b2e9b90fa31c8xxxx"] | array |
| `metaInfo.agentTransferConfig.overrideAgents` | Indicates agent override. | false | boolean |
| `metaInfo.agentTransferConfig.overrideValues` | Override values. | — | array |
| `metaInfo.agentTransferConfig.assistEvents` | Assist event configuration. | — | object |
| `metaInfo.agentTransferConfig.assistEvents.startEvent` | Assist start event config. | — | object |
| `metaInfo.agentTransferConfig.assistEvents.startEvent.startEvent.isEnabled` | Indicates assist is enabled. | false | boolean |
| `metaInfo.agentTransferConfig.lastIntentName` | Last user intent. | Pay Bill | string |
| `metaInfo.agentTransferConfig.lastIntentuserInput` | User input text. | Can you please pay my bill? | string |
| `metaInfo.agentTransferConfig.dialog_tone` | Dialog tone settings. | — | array |
| `metaInfo.agentTransferConfig.accountId` | Account ID for transfer. | 674daf4bc9d17f4dc070xxxx | string |
| `metaInfo.ipAddress` | User access IP. | 103.xxx.xxx.xxx | string |
| `metaInfo.hostDomain` | Domain of the platform. | https://www.example.com | string |
| `metaInfo.os` | User device OS. | Windows | string |
| `metaInfo.customerinfo` | Customer details. | — | object |
| `metaInfo.customerinfo.CustomerPhone` | Customer phone number. | 1505xxxx | string |
| `metaInfo.customerinfo.CenterPhone` | Service center phone number. | "" | string |
| `metaInfo.customerinfo.CustomerFirstName` | Customer first name. | Jane | string |
| `metaInfo.customerinfo.CustomerLastName` | Customer last name. | Doe | string |
| `metaInfo.customerinfo.CustomerEmail` | Customer email. | jane.doe@example.com | string |
| `metaInfo.workinghours` | Agent working hours. | — | object |
| `metaInfo.workinghours.workdays` | Agent workdays. | mon,tue,wed,thu,fri | string |
| `metaInfo.workinghours.workstart` | Work start time. | 8:00 AM | string |
| `metaInfo.workinghours.workend` | Work end time. | 5:00 PM | string |
| `metaInfo.profImage` | Agent profile image. | no-avatar | string |
| `metaInfo.profColour` | Profile color code. | #ff4500 | string |
| `metaInfo.jTitle` | Agent job title. | — | string |
| `metaInfo.dept` | Agent department. | — | string |
| `metaInfo.activationStatus` | Agent activation status. | active | string |
| `metaInfo.firstName` | Agent first name. | — | string |
| `metaInfo.lastName` | Agent last name. | — | string |
| `metaInfo._id` | Internal user object ID. | u-c1ca58fb-2208-52f8-9f9c-d542316exxxx | string |
| `metaInfo.identities` | List of mapped identities. | — | array of objects |
| `metaInfo.identities.val` | Identity value. | cs-259844d3-7827-5f33… | string |
| `metaInfo.identities.type` | Mapping type. | mapped | string |
| `metaInfo.transcribeConfig` | Transcription settings. | — | object |
| `metaInfo.transcribeConfig.transcribe` | Indicates if transcription is enabled. | true | boolean |
| `destinations` | List of queues or agents the call was transferred to. | — | array of objects |
| `destinations.destinationType` | Transfer destination type. | QueueEntry | string |
| `destinations.queueId` | Queue ID. | qu-123dbe9-c752-464d-a9be-1d0e43b6xxxx | type-prefixed-guid |
| `destinations.queueName` | Queue name. | Residential – Sales | string |
| `destinations.CallbackOpted` | Indicates callback choice. | True | boolean |
| `destinations.CallbackOptedTime` | Callback opt-in timestamp. | 2025-09-30T06:34:48.810Z | string (ISO 8601 datetime) |
| `destinations.userCallbackAcceptTime` | Callback acceptance time. | 2025-09-30T06:35:00.589Z | string (ISO 8601 datetime) |
| `destinations.EnterTime` | Queue entry timestamp. | 2023-01-10 2:25:54 | string (ISO 8601 datetime) |
| `destinations.respondingAgent` | Responding agent details. | — | object |
| `destinations.respondingAgent.agentId` | Agent ID. | u-f3a11f62-57d7-5a9f-a071-787650b1xxxx | type-prefixed-guid |
| `destinations.respondingAgent.agentNotes` | Agent notes. | ["CUSTOMER has a problem..."] | array of strings |
| `destinations.respondingAgent.destinationType` | Agent destination type. | AgentSegment | string |
| `destinations.respondingAgent.status` | Agent handling status. | Answered | string |
| `destinations.respondingAgent.firstResponseTime` | First response time. | 2023-01-10 2:25:54 | string (ISO 8601 datetime) |
| `destinations.respondingAgent.firstResponseDuration` | Time to first response (sec). | 20 | integer |
| `destinations.respondingAgent.interactionEndTime` | Agent interaction end time. | 2023-01-10 2:25:54 | string |
| `destinations.respondingAgent.interactionDuration` | Interaction duration (sec). | 51 | integer |
| `destinations.respondingAgent.afterCallWorkDuration` | Post-call work duration. | 8 | integer |
| `destinations.respondingAgent.afterCallWorkEndTime` | Post-call completion time. | 2023-01-10 2:25:54 | string |
| `destinations.respondingAgent.ConsultingAgents` | External or internal consulted agents. | — | array of objects |
| `destinations.respondingAgent.ConsultingAgents.isMerged` | Indicates merge. | True | boolean |
| `destinations.respondingAgent.ConsultingAgents.name` | External agent contact. | +919550xxxxxx | string |
| `destinations.respondingAgent.ConsultingAgents.acceptedTime` | Call acceptance time. | 2025-09-30T12:05:45 | string |
| `destinations.respondingAgent.ConsultingAgents.assignedAt` | Assignment time. | 2025-09-30T12:05:36 | string |
| `destinations.respondingAgent.ConsultingAgents.consultingEndTime` | Consultation end time. | 2025-09-30T12:05:58 | string |
| `destinations.respondingAgent.JoinedUsers` | Users who joined. | — | array |
| `destinations.respondingAgent.email` | Agent email. | jane.doe@example.com | string |
| `destinations.respondingAgent.name` | Agent name. | Jane Doe | string |
| `destinations.respondingAgent.assignedAt` | Assignment time. | 2023-01-10 2:25:54 | string |
| `destinations.respondingAgent.acceptedTime` | Acceptance time. | 2023-01-10 2:25:54 | string |
| `destinations.nonRespondingAgents` | Agents who did not respond. | — | array of objects |
| `destinations.nonRespondingAgents.agentId` | Non-responder ID. | u-3ea001b4-664a-58b6-8108-b8bca375xxxx | string |
| `destinations.nonRespondingAgents.agentNotes` | Notes. | Customer initiated... | array of strings |
| `destinations.nonRespondingAgents.destinationType` | Segment type. | AgentSegment | string |
| `destinations.nonRespondingAgents.email` | Agent email. | jane.doe@example.com | string |
| `destinations.nonRespondingAgents.name` | Agent full name. | Jane doe | string |
| `destinations.nonRespondingAgents.assignedAt` | Assignment time. | 2025-10-01T13:08:55 | string |
| `destinations.nonRespondingAgents.nonResponseEvent` | Reason for no response. | Ignored | string |
| `userleveltags` | All user-level tags for this session. | {"name":"accountnum","value":"121413243141234132"} | array of tag objects |
| `sessionleveltags` | All session-level tags for this session. | {"name":"audioCodesCallDisconnect","value":"1"} | array of tag objects |