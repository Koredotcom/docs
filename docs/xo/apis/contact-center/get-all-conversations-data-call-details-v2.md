--8<-- "includes/ccai-api-back-link.md"

# Get All Conversations Data - Call Details-v2

To retrieve the raw data for all conversations in a detailed view. The days’ range can't be more than seven days.

| **Method** | POST |
|--------|------|
| **Endpoint** | `https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/interactionDetails?offset=0&limit=100`<br>`https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/calldetails?offset=0&limit=100` |
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

```json
curl --location 'https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/interactionDetails?offset=0&limit=100' \
--header 'accept: application/json' \
--header 'content-type: application/json;charset=UTF-8' \
--header 'auth: <jwt_token>' \
--header 'iId: {{streamId}}' \
--data '{
"startDate":"2026-02-16",
"endDate":"2026-02-22",
"direction": "Outbound",
"selectedFields": [
        "skills",
        "customerinfo",
        "userleveltags",
        "sessionleveltags",
         "campaigninfo"
    ],
"queues":[],
"channels": [],
"timeZoneOffset":-330
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

| **Parameter**        | **Description**                                                                                                                                                                                                                                                                                                                                                 | **Type**                    |
|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------|
| `startDate`    | The start date from which records are considered. <br> Format: `yyyy-mm-dd HH24:mm:ss` <br> Example: `2022-08-25 07:20:15`                                                                                                                                                                                                                                   | DateTime, required      |
| `endDate`      | The end date up to which records are considered. <br> Format: `yyyy-mm-dd HH24:mm:ss` <br> Example: `2022-08-25 18:20:15`                                                                                                                                                                                                                                   | DateTime, required      |
| `timeZoneOffset` | The time zone offset. <br> Examples: `-330`, `630`, `-500` <br> **Note:** For US/New York, the offset is `300`. Use a minus sign for time zones east of GMT; no sign for time zones west of GMT.                                                                                                                                                             | number, required        |
| `selectedFields` | Specifies which data fields to include in the API response. <br> `skills` - Returns the agent’s areas of expertise or capabilities. <br> `customerinfo` - Includes key customer details such as email, first name, last name, phone number, and other details <br> `userleveltags` - Returns tags assigned at the individual user level for categorization or filtering <br> `sessionleveltags` - Returns tags associated with a specific session or conversation instance. <br> `campaigninfo`- Returns campaign details associated with a specific session or conversation. | array[string], optional |
| `channels`     | The channels to include. <br> Example: `['rtm', 'voice']`                                                                                                                                                                                                                                                                                                    | array[string], optional |
| `direction` | Specifies the interaction direction to filter conversation data. Valid values typically include `Inbound`, `Outbound`, or `Both`. | string, optional |
| `queues`      | The list of queue IDs in the instance bots.                                                                                                                                                                                                                                                                                                                  | array[string], optional |

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
                    "lastIntentuserInput": "Can you pay my bill?",
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
                    "lastIntentuserInput": "Can you  pay my bill?",
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
                        "val": "cs-ddee2921-797d-5751-8786-bf06xxxx/22f2681a-23d9-420a-9852-5bdab917afd61f1ce2a8-b737-48ee-89b3-bfeeacb3xxxx",
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
                "hostDomain": "{{host}}",
                "os": "Windows"
            },
            "customerinfo": {
                "CustomerPhone": "12345xxxxx",
                "CenterPhone": "",
                "CustomerFirstName": "Jane",
                "CustomerLastName": "Doe",
                "CustomerEmail": "jane.doe@example.com"
            },
            "sessionStartTime": "2025-10-01T15:30:04",
            "sessionEndTime": "2025-10-01T15:31:01",
            "channelSpecificUserId": "cs-ddee2921-797d-5751-8786-bf060407xxxx/22f2681a-23d9-420a-9852-5bdab917afd61f1ce2a8-b737-48ee-89b3-bfeeacb3xxxx",
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
                    "agentId": "u-3ea001b4-664a-58b6-8108-b8bca37xxxxx",
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
            
        },
     {
            "conversationId": "c-9c9a4c6-6614-4adc-9a29-12e4278xxxxx",
            "sessionId": "6993256027d16c0edd2xxxxx",
            "channel": "Voice",
            "isVoicemail": "NO",
            "Direction": "Outbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "disconnectingEvent": "",
            "smartStatus": "CLOSED",
            "reason": "",
            "errorDetails": "",
            "botId": "st-d567cae4-0d18-577f-8944-3d6fbdexxxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "campaignName": "Jan 23 hotfix check (Copy)",
                "userId": "u-4fa7f000-3bcb-5c90-b647-76b4aa9xxxxx",
                "firstName": "Office",
                "lastName": "man",
                "caller": "+140258xxxxx",
                "callee": "9191002xxxxx",
                "Initiation": "Campaign",
                "dialedNumber": "+140258xxxxx",
                "endUserNumber": "9191002xxxxx",
                "attempt": 2
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "+140258xxxxx",
                "CustomerFirstName": "John",
                "CustomerLastName": "Doe",
                "CustomerEmail": ""
            },
            "sessionStartTime": "2026-02-16T19:40:40",
            "sessionEndTime": "2026-02-16T19:40:40",
            "userId": "u-4fa7f000-3bcb-5c90-b647-76b4aa9xxxxx",
            "destinations": [],
            "userleveltags": [],
            "sessionleveltags": [
                {
                    "name": "audioCodesCallDisconnect",
                    "value": "1"
                }
            ],
            "campaigninfo": {
                "campaignName": "Jan 23 hotfix check (Copy)",
                "campaignId": "cd-3e9169e-9b3a-4415-bdcd-4700a44xxxxx",
                "campaignInstanceId": "cid-3b2e4e9-882d-48a7-a5a3-286b007xxxxx",
                "campaignDialingListId": "cdl-6be0807b-c7cf-53fb-8c3c-ee2f66fxxxxx",
                "attempt": 2,
                "contactStatus": "no-answer",
                "campaignRunDate": "2026-02-16T14:06:41.807Z",
                "contactListName": [
                    "WANTED JAN23"
                ]
            },
            "channelSpecificUserId": "cs-517d4422-a33f-50f7-a67d-d826b5fxxxxx/df922694-9d08-4026-8414-aef1d74xxxxx"
        },
     {
            "conversationId": "c-b807a56-5346-467a-b835-404d244xxxxx",
            "sessionId": "699c22cc3075d4d6997xxxxx",
            "channel": "Web/Mobile Client",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "disconnectingEvent": "Agent Closed",
            "smartStatus": "CLOSED",
            "reason": "Resolved",
            "errorDetails": "",
            "botId": "st-8e0bc152-9cfc-5b48-b8b0-41e4d2axxxxx",
            "dispositions": [
                "Resolved"
            ],
            "dispositionRemarks": [
                "The bot initiated a transfer to an agent and connected the customer with uxo. The agent greeted the customer and the bot informed them that they were being transferred to another agent's queue. The customer was then connected with Uat, who greeted them again. Uat closed the conversation, indicating that the customer could reach out again if further assistance was needed."
            ],
            "metaInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "profColour": "#2e8b57",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-2b41857b-a1cb-5862-8faf-e3d99c3xxxxx",
                "_id": "u-1e92130e-a3f2-55ae-9472-52a1f02xxxxx",
                "identities": [
                    {
                        "val": "cs-325638a4-3312-5624-b19a-bbbc150xxxxx/89a479d9-b927-42aa-bd0d-af97c6eceec2a3c64dff-1501-4fcd-955d-a69239cxxxxx",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "botId": "st-8e0bc152-9cfc-5b48-b8b0-41e4d2axxxxx",
                            "isEnabled": false
                        }
                    },
                    "lastIntentName": "ConnectToAgent",
                    "automationBotId": "st-8e0bc152-9cfc-5b48-b8b0-41e4d2xxxxx"
                },
                "ipAddress": "115.114.xx.xxx",
                "hostDomain": "{{hostDomain}}",
                "os": "Windows"
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "",
                "CustomerLastName": "",
                "CustomerEmail": ""
            },
            "sessionStartTime": "2026-02-23T15:20:04",
            "sessionEndTime": "2026-02-23T15:21:36",
            "channelSpecificUserId": "cs-325638a4-3312-5624-b19a-bbbc150xxxxx/89a479d9-b927-42aa-bd0d-af97c6eceec2a3c64dff-1501-4fcd-955d-a69239cxxxxx",
            "userId": "u-1e92130e-a3f2-55ae-9472-52a1f02xxxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-52d7969-7e11-45e6-867b-cda9ccdxxxxx",
                    "queueName": "Default Queue",
                    "CallbackOpted": false,
                    "EnterTime": "2026-02-23T15:20:04",
                    "respondingAgent": {
                        "agentId": "u-92b5cb3b-b0cc-5e37-b321-31c3255xxxxx",
                        "agentNotes": [],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "firstResponseTime": "2026-02-23T15:21:06",
                        "firstResponseDuration": 6,
                        "interactionEndTime": "2026-02-23T15:21:10",
                        "interactionDuration": 11,
                        "ConsultingAgents": [],
                        "JoinedUsers": [],
                        "email": "john.doe@example.com",
                        "name": "john doe",
                        "acceptedTime": "2026-02-23T15:21:00",
                        "assignedAt": "2026-02-23T15:20:04"
                    }
                },
                {
                    "agentId": "u-d289fb12-bf8a-53d7-9a96-998b156xxxxx",
                    "agentNotes": [
                        "The bot initiated a transfer to an agent and connected the customer with uxo. The agent greeted the customer and the bot informed them that they were being transferred to another agent's queue. The customer was then connected with Uat, who greeted them again. Uat closed the conversation, indicating that the customer could reach out again if further assistance was needed."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "firstResponseTime": "2026-02-23T15:21:20",
                    "firstResponseDuration": 5,
                    "interactionEndTime": "2026-02-23T15:21:24",
                    "interactionDuration": 10,
                    "afterCallWorkDuration": 5,
                    "afterCallWorkEndTime": "2026-02-23T15:21:29",
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "john.doe@example.com",
                    "name": "john doe",
                    "acceptedTime": "2026-02-23T15:21:14",
                    "assignedAt": "2026-02-23T15:21:12"
                }
            ],
            "likeDislikeScore": 1,
            "surveyType": "likeDislike",
            "userleveltags": [],
            "sessionleveltags": [],
            "campaigninfo": {
                "attempt": "",
                "contactStatus": "Resolved"
            }
        },


{
            "conversationId": "c-586a8b5-37ca-4e80-8c34-a53c5c6xxxxx",
            "sessionId": "699bfded91ef376ff70xxxxx",
            "channel": "Web/Mobile Client",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "disconnectingEvent": "System Hangup",
            "smartStatus": "TERMINATED",
            "reason": "DROP-OFF",
            "errorDetails": "",
            "botId": "st-8e0bc152-9cfc-5b48-b8b0-41e4d2xxxxx",
            "dispositions": [
                "DROP-OFF"
            ],
            "dispositionRemarks": [
                "-"
            ],
            "metaInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "profColour": "#00008b",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-2b41857b-a1cb-5862-8faf-e3d99cxxxxx",
                "_id": "u-fa7190cf-f874-5723-820f-1064646xxxxx",
                "identities": [
                    {
                        "val": "cs-325638a4-3312-5624-b19a-bbbc150xxxxx/bf3c21d4-8371-40ce-974a-2a0b52fa8318b778870e-c7f1-4ca4-b3c9-8d3f240xxxxx",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "botId": "st-8e0bc152-9cfc-5b48-b8b0-41e4d2xxxxx",
                            "isEnabled": false
                        }
                    },
                    "lastIntentName": "ConnectToAgent",
                    "automationBotId": "st-8e0bc152-9cfc-5b48-b8b0-41e4d2xxxxx"
                },
                "ipAddress": "115.114.xx.xxx",
                "hostDomain": "{{hostDomain}}",
                "os": "Windows"
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "",
                "CustomerLastName": "",
                "CustomerEmail": ""
            },
            "sessionStartTime": "2026-02-23T12:42:45",
            "sessionEndTime": "2026-02-23T12:42:51",
            "channelSpecificUserId": "cs-325638a4-3312-5624-b19a-bbbc150xxxxx/bf3c21d4-8371-40ce-974a-2a0b52fa8318b778870e-c7f1-4ca4-b3c9-8d3f240xxxxx",
            "userId": "u-fa7190cf-f874-5723-820f-1064646xxxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-52d7969-7e11-45e6-867b-cda9ccdxxxxx",
                    "queueName": "Default Queue",
                    "CallbackOpted": false,
                    "EnterTime": "2026-02-23T12:42:45"
                }
            ],
            "npsScore": 8,
            "surveyType": "nps",
            "userleveltags": [],
            "sessionleveltags": [],
            "campaigninfo": {
                "attempt": "",
                "contactStatus": "DROP-OFF"
            }
        },
{
            "conversationId": "c-0ac330d-0c53-4edc-a4d4-23d3a91xxxxx",
            "sessionId": "699c020c28f2a5aae9bxxxxx",
            "channel": "Web/Mobile Client",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "disconnectingEvent": "System Hangup",
            "smartStatus": "TERMINATED",
            "reason": "DROP-OFF",
            "errorDetails": "",
            "botId": "st-8e0bc152-9cfc-5b48-b8b0-41e4d2axxxxx",
            "dispositions": [
                "DROP-OFF"
            ],
            "dispositionRemarks": [
                "-"
            ],
            "metaInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "profColour": "#00ff7f",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-2b41857b-a1cb-5862-8faf-e3d99c3xxxxx",
                "_id": "u-4b8a2d08-bf57-520f-8ee2-1669d8axxxxx",
                "identities": [
                    {
                        "val": "cs-325638a4-3312-5624-b19a-bbbc150xxxxx/d6b37c15-d2b1-4953-bbb7-3bca16a4ec94aa5feec4-cb64-4412-85f6-0beb679xxxxx",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "botId": "st-8e0bc152-9cfc-5b48-b8b0-41e4d2xxxxx",
                            "isEnabled": false
                        }
                    },
                    "lastIntentName": "ConnectToAgent",
                    "automationBotId": "st-8e0bc152-9cfc-5b48-b8b0-41e4d2xxxxx"
                },
                "ipAddress": "115.114.xx.xxx",
                "hostDomain": "{{hostDomain}}",
                "os": "Windows"
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "",
                "CustomerLastName": "",
                "CustomerEmail": ""
            },
            "sessionStartTime": "2026-02-23T13:00:20",
            "sessionEndTime": "2026-02-23T13:00:36",
            "channelSpecificUserId": "cs-325638a4-3312-5624-b19a-bbbc150xxxxx/d6b37c15-d2b1-4953-bbb7-3bca16a4ec94aa5feec4-cb64-4412-85f6-0beb679xxxxx",
            "userId": "u-4b8a2d08-bf57-520f-8ee2-1669d8axxxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-52d7969-7e11-45e6-867b-cda9ccdxxxxx",
                    "queueName": "Default Queue",
                    "CallbackOpted": false,
                    "EnterTime": "2026-02-23T13:00:20"
                }
            ],
            "csatScore": 4,
            "surveyType": "csat",
            "userleveltags": [],
            "sessionleveltags": [],
            "campaigninfo": {
                "attempt": "",
                "contactStatus": "DROP-OFF"
            }
        }

    ]
}

```

## Response Parameters

| Parameter Name | Type and Format | Description | Example |
|----------------|----------------|-------------|---------|
| conversationId | type-prefixed-guid | ID generated by SmartAssist for the conversation. | c-7b08889-539d-408d-a3e6-9e6ae059xxxx |
| sessionId | internal value | Bot-generated ID for the conversation. | 63bd199c197b3646dadexxxx |
| channel | string | Name of the channel. Values: Web/Mobile Client, System Mail, Voice. | Web / Mobile Client |
| sessionStartTime | YYYY-MM-DDTHH SS | Session start time. | 2023-01-10 2:25:54 |
| sessionEndTime | YYYY-MM-DDTHH SS | Session end time. | 2023-01-10 2:25:54 |
| botId | type-prefixed-guid | Identifier of the bot involved. | st-ae8470ab-8ecb-51fb-8e13-c87dc66fxxxx |
| userId | type-prefixed-guid | SmartAssist-generated user ID. | u-8413fd99-4ded-5f6d-8c1a-176dc66xxxx |
| channelSpecificUserId | string | Channel-scoped identifier for the conversation. | cs-1a12f704-5a74-5a4e-94d1-4a003cbxxxxx/c-40dd2be-1421-4e76-b54a-e5dba60xxxxx |
| orgId | type-prefixed-guid | Organization ID. | o-5a0da1e4-2df3-5cec-9ee4-af0b2efdxxxx |
| smartStatus | string | Summarized live status of the session. | CLOSED |
| Reason | string | Reason for the status. | NO AGENTS AVAILABLE |
| disconnectingEvent | string | Final event that ended the conversation. | System Hangup |
| errorDetails | string | Details of any error that occurred. | — |
| finalStatus | string | Completion status of the conversation. | CLOSED |
| automationBotIDs | array | List of automation bots involved in the session. | ["st-e5c6ae6b-c388-5acd-93b7-badaxxxx"] |
| isVoicemail | boolean | Indicates whether the session was a voicemail. | false |
| Direction | string | Direction of the call. Values: Inbound, Outbound. | Inbound |
| dispositions | array of strings | Dispositions assigned to the conversation. | ["Requires Supervisor Attention"] |
| dispositionRemarks | array of strings | Agent remarks related to the disposition. | ["CUSTOMER needs help with Products and Sales. AGENT will connect her with an agent."] |
| metaInfo | object | Contains custom information set by automation. | — |
| destinations | array of objects | One object for each Queue or Agent to which the call was transferred. | — |
| csatScore | integer | CSAT score submitted for the call (displayed when surveyType = csat). | 4 |
| npsScore | integer | NPS rating submitted for the call (displayed when surveyType = nps). | 2 |
| likeDislikeScore | integer | 1 = Like, 0 = Dislike (displayed when surveyType = likeDislike). | 0 |
| surveyType | string | Type of post-call survey. Values: csat, nps, likeDislike. | csat |
| csatFeedback | string | Optional textual feedback for CSAT survey. | Service was quick and helpful. |
| userleveltags | array of objects | User-level tags associated with the session. | {"name":"accountnum","value":"121413243141234132"} |
| sessionleveltags | array of objects | Session-level tags associated with the session. | {"name":"audioCodesCallDisconnect","value":"1"} |
| campaigninfo | object | Metadata of outbound campaigns associated with the session. | — |
