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
| host | Environment URL, for example, https://platform.kore.ai | string, required |
| accountId | The Account Id | string, required |

## Query Parameters

| **PARAMETER** | **DESCRIPTION** | **TYPE** |
|-----------|-------------|------|
| limit | Specifies the number of bot records to retrieve, with a maximum limit of 100. For example, 50 | integer, optional |
| offset | Defines the number of pages to skip or retrieve. Defaults to 0 if unspecified, with a maximum value of 10. For example, 10 | integer, optional |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/calldetails?offset=0&limit=200' \
--header 'authority: staging-smartassist.kore.ai' \
--header 'accept: application/json, text/plain, /' \
--header 'accept-language: en-US,en;q=0.9' \
--header 'accountid: {{accountId}}' \
--header 'app-language: en' \
--header 'authorization: {{YOUR_JWT_TOKEN}}' \
--header 'bot-language: en' \
--header 'content-type: application/json;charset=UTF-8' \
--header 'cookie: _gcl_au=1.11502438879.1669621549; hubspotutk=ef24820cc39323476019ea81d073xxxx; __hssrc=1; _hjSessionUser_1992177=eyJpZCI6ImYxYWQ2MWUyLTUxODItNWJjMy05ZGI1LWU1ZjE2ZmViYTE5YiIsImNyZWF0ZWQiOjE2Njk2MjE1NDk1NDgsImV4aXN0aW5nIjp0cnxxxx==; __hstc=59894770.ef24820cc39323476019ea81d073bc01.1669621552766.1670332174995.1670395535267.15; _ga=GA1.2.174434293.1669621538; _ga_JW3PWR1JKY=GS1.11670419410.15.01670419410.0.0.0; mp_7888bdd5fedfd65f44bb9a3100fa9e80_mixpanel=%7B%22distinct_id%22%3A%20%22184f0fdd19c11-0ccd03f799cfb8-26021151-e1000-184f0fdd19da01%22%2C%22%24device_id%22%3A%20%22184f0fdd19c11-0ccd03f799cfb8-26021151-e1000-184f0fdd19da01%2xxxx' \
--header 'referer: https://staging-smartassist.kore.ai/smartassist/config/queues' \
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
--header 'auth: xxxxbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiYXBwSWQiOiJjcy01ZDEwMjRlNi1iNzYyLTU3NWYtYTdmNi1hOGRmNjFmMjYxYTIifQ.rqdn1c1Fz7dN8sedyskKg7V2Vw-TOWo0-nC_sGqxxxx' \
--header 'accountId: 6656d31f165174bd532fxxxx' \
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
| iId               | Stream or application id                                     | Required              |

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
    "numResults": 8,
    "data": [
        {
            "sessionId": "68107faf981a60bec4ecxxxx",
            "channel": "Web/Mobile Client",
            "sessionStartTime": "2025-04-29T07:28:47",
            "sessionEndTime": "2025-04-29T07:30:03",
            "botId": "st-d76e4023-ba1e-52af-a144-248e92c4xxxx",
            "userId": "u-84d5c758-bc74-5b3c-be52-9e03a975xxxx",
            "channelSpecificUserId": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/fb22cfaf-0aad-4edd-8c34-0ab83d4f2239ffb22b8a-c181-404e-a94f-1a0c3ba9xxxx",
            "orgId": "o-7a16e627-73c6-5679-ae9f-bbf9e611xxxx",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "finalStatus": "BotResolved",
            "automationBotIDs": [
                "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx"
            ]
        },
        {
            "sessionId": "6810802154d679c1ba71xxxx",
            "channel": "Web/Mobile Client",
            "sessionStartTime": "2025-04-29T07:30:41",
            "sessionEndTime": "2025-04-29T07:30:57",
            "botId": "st-d76e4023-ba1e-52af-a144-248e92cxxxxx",
            "userId": "u-4b3e721c-6957-584b-9ed1-820d187axxxx",
            "channelSpecificUserId": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/27993142-f2b6-472e-8c32-e3972e3345855a53b18d-219a-4703-a145-bc77eba6xxxx",
            "orgId": "o-7a16e627-73c6-5679-ae9f-bbf9e611xxxx",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "finalStatus": "Dropped",
            "automationBotIDs": [
                "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx"
            ]
        },
        {
            "sessionId": "6810de4d54d679c1ba74xxxx",
            "channel": "Web/Mobile Client",
            "sessionStartTime": "2025-04-29T14:12:29",
            "sessionEndTime": "2025-04-29T14:12:30",
            "botId": "st-d76e4023-ba1e-52af-a144-248e92c4xxxx",
            "userId": "u-55d76d60-988c-5a04-b7e9-f766504fxxxx",
            "channelSpecificUserId": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/44e4fbe3-6c22-4815-8975-b6bd1a9dd337583e764d-f139-473d-846b-97cd2385xxxx",
            "orgId": "o-7a16e627-73c6-5679-ae9f-bbf9e611xxxx",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "finalStatus": "Dropped",
            "automationBotIDs": [
                "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx"
            ]
        },
        {
            "sessionId": "6810e09ae757dc47061cxxxx",
            "channel": "Voice",
            "sessionStartTime": "2025-04-29T14:22:18",
            "sessionEndTime": "2025-04-29T14:22:18",
            "botId": "st-d76e4023-ba1e-52af-a144-248e92cxxxx",
            "userId": "u-cd511a7d-6d26-596f-982b-c497c193xxxx",
            "channelSpecificUserId": null,
            "orgId": "o-7a16e627-73c6-5679-ae9f-bbf9e611xxxx",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "disconnectingEvent": "",
            "finalStatus": "BotResolved",
            "automationBotIDs": []
        },
        {
            "conversationId": "c-ddc1672-b58c-4229-aab0-513ee089xxxx",
            "sessionId": "6810de4ef0a9b8634751xxxx",
            "channel": "Web/Mobile Client",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "USER ABANDONED",
            "smartStatus": "ABANDONED WITH AGENT",
            "reason": "Resolution",
            "disconnectingEvent": "User Hangup",
            "botId": "st-d76e4023-ba1e-52af-a144-248e92c4xxxx",
            "dispositions": [
                "System Generated"
            ],
            "dispositionRemarks": [
                "The customer requested to speak with an agent. The bot acknowledged the request and transferred the customer to an available agent. The agent greeted the customer and asked how they could assist. The agent then offered to continue the conversation using a form. The conversation ended due to inactivity, and the customer was invited to start a new conversation if further assistance was needed. The customer also requested a CSAT Rating, but no further details were provided."
            ],
            "metaInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "https://cdn-icons-png.flaticon.com/512/4017/4017991.png",
                "profColour": "#40e0d0",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "David",
                "lastName": "Williams",
                "orgId": "o-33749baa-f662-5ae8-b506-4b3bf787xxxx",
                "_id": "u-605ae6f4-4a7d-5419-ad7c-2397f26dxxxxx",
                "identities": [
                    {
                        "val": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/f6c5d1df-27e2-4492-be52-33e24bc3cfafe0cda29d-6825-47d5-a2ac-0f1d588axxxx",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "automationBotId": "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx",
                    "dialog_tone": [],
                    "lastIntentName": "WelcomeDialog",
                    "skillsIds": [],
                    "overrideAgents": false
                },
                "email": "david.williams@example.com",
                "phoneNumber": "+911234567890",
                "category": "ie",
                "hostDomain": "https://xyz.com",
                "os": "Mac OS"
            },
            "sessionStartTime": "2025-04-29T14:12:30",
            "sessionEndTime": "2025-04-29T14:19:23",
            "channelSpecificUserId": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/f6c5d1df-27e2-4492-be52-33e24bc3cfafe0cda29d-6825-47d5-a2ac-0f1d588axxxx",
            "userId": "u-605ae6f4-4a7d-5419-ad7c-2397f26dxxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-79e051d-9351-4cdb-ac2b-8599a49xxxx",
                    "queueName": "Default Queue",
                    "EnterTime": "2025-04-29T14:12:38",
                    "nonRespondingAgents": [
                        {
                            "agentId": "u-da4b3f26-fbd0-5524-b599-114ba962xxxx",
                            "agentNotes": [],
                            "destinationType": "AgentSegment",
                            "email": "stagingsmartassist_savg_agent2@mailinator.com",
                            "name": "Steve Marsh",
                            "assignedAt": "2025-04-29T14:12:39",
                            "nonResponseEvent": "Ignored"
                        },
                        {
                            "agentId": "u-f4937b89-aa70-58ce-a414-0a23b377xxxx",
                            "agentNotes": [
                                "The customer requested to speak with an agent. The virtual assistant acknowledged the request and transferred the customer to an available agent. The agent greeted the customer and asked how they could assist. The agent then thanked the customer for contacting them and wished them a great day. The conversation ended due to inactivity, with the customer expressing a desire to provide a CSAT Rating.",
                                "The customer requested to speak with an agent. The bot acknowledged the request and transferred the customer to an available agent. The agent greeted the customer and asked how they could assist. The agent then offered to continue the conversation using a form. The conversation ended due to inactivity, and the customer was invited to start a new conversation if further assistance was needed. The customer also requested a CSAT Rating, but no further details were provided."
                            ],
                            "destinationType": "AgentSegment",
                            "email": "stagingsmartassist_savg@mailinator.com",
                            "name": "Nick Thomas",
                            "assignedAt": "2025-04-29T14:15:03",
                            "nonResponseEvent": "Supervisor Reassigned"
                        }
                    ]
                },
                {
                    "agentId": "u-f4937b89-aa70-58ce-a414-0a23b377xxxx",
                    "agentNotes": [
                        "The customer requested to speak with an agent. The virtual assistant acknowledged the request and transferred the customer to an available agent. The agent greeted the customer and asked how they could assist. The agent then thanked the customer for contacting them and wished them a great day. The conversation ended due to inactivity, with the customer expressing a desire to provide a CSAT Rating.",
                        "The customer requested to speak with an agent. The bot acknowledged the request and transferred the customer to an available agent. The agent greeted the customer and asked how they could assist. The agent then offered to continue the conversation using a form. The conversation ended due to inactivity, and the customer was invited to start a new conversation if further assistance was needed. The customer also requested a CSAT Rating, but no further details were provided."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "firstResponseTime": "2025-04-29T14:16:23",
                    "firstResponseDuration": 31,
                    "interactionEndTime": "2025-04-29T14:19:23",
                    "interactionDuration": 211,
                    "afterCallWorkDuration": 92,
                    "afterCallWorkEndTime": "2025-04-29T14:20:54",
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "stagingsmartassist_savg@mailinator.com",
                    "name": "Nick Thomas",
                    "acceptedTime": "2025-04-29T14:15:52",
                    "assignedAt": "2025-04-29T14:15:44"
                }
            ],
            "automationBotIDs": [
                "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx"
            ]
        },
        {
            "conversationId": "c-74961cd-7a0c-4d6b-ae89-bd64e599xxxx",
            "sessionId": "6810de4bd1414717b4e1xxxx",
            "channel": "Web/Mobile Client",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "CLOSED",
            "smartStatus": "TERMINATED",
            "reason": "DROP-OFF",
            "disconnectingEvent": "System Hangup",
            "botId": "st-d76e4023-ba1e-52af-a144-248e92c4xxxx",
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
                "profImage": "https://cdn-icons-png.flaticon.com/512/4017/4017991.png",
                "profColour": "#ff0000",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "Bill",
                "lastName": "Wilson",
                "orgId": "o-33749baa-f662-5ae8-b506-4b3bf787xxxx",
                "_id": "u-4f6c6ca7-79ea-5dbb-9ce3-fa2f57f7xxxx",
                "identities": [
                    {
                        "val": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/f18861ab-f4b3-43d5-b555-c33fe12bcc12561e155f-62e2-40e2-91e4-278becf4xxxx",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "automationBotId": "st-158b642c-80ee-56fe-b996-a0cb4af62bc0",
                    "dialog_tone": [],
                    "lastIntentName": "WelcomeDialog",
                    "skillsIds": [],
                    "overrideAgents": false
                },
                "email": "bill.wilson@example.com",
                "phoneNumber": "+919989732143",
                "category": "i18n",
                "hostDomain": "https://staging-bots.korebots.com",
                "os": "Mac OS"
            },
            "sessionStartTime": "2025-04-29T14:12:27",
            "sessionEndTime": "2025-04-29T14:42:58",
            "channelSpecificUserId": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/f18861ab-f4b3-43d5-b555-c33fe12bcc12561e155f-62e2-40e2-91e4-278becf4xxxx",
            "userId": "u-4f6c6ca7-79ea-5dbb-9ce3-fa2f57f7xxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-79e051d-9351-4cdb-ac2b-8599a493xxxx",
                    "queueName": "Default Queue",
                    "EnterTime": "2025-04-29T14:12:36",
                    "nonRespondingAgents": [
                        {
                            "agentId": "u-f4937b89-aa70-58ce-a414-0a23b377xxxx",
                            "agentNotes": [],
                            "destinationType": "AgentSegment",
                            "email": "stagingsmartassist_savg@mailinator.com",
                            "name": "Nick Thomas",
                            "assignedAt": "2025-04-29T14:12:37",
                            "nonResponseEvent": "Ignored"
                        },
                        {
                            "agentId": "u-f4937b89-aa70-58ce-a414-0a23b377xxxx",
                            "agentNotes": [],
                            "destinationType": "AgentSegment",
                            "email": "stagingsmartassist_savg@mailinator.com",
                            "name": "Nick Thomas",
                            "assignedAt": "2025-04-29T14:15:03",
                            "nonResponseEvent": "Ignored"
                        },
                        {
                            "agentId": "u-f4937b89-aa70-58ce-a414-0a23b377xxxx",
                            "agentNotes": [],
                            "destinationType": "AgentSegment",
                            "email": "stagingsmartassist_savg@mailinator.com",
                            "name": "Nick Thomas",
                            "assignedAt": "2025-04-29T14:18:13",
                            "nonResponseEvent": "Ignored"
                        },
                        {
                            "agentId": "u-da4b3f26-fbd0-5524-b599-114ba962xxxx",
                            "agentNotes": [],
                            "destinationType": "AgentSegment",
                            "email": "stagingsmartassist_savg_agent2@mailinator.com",
                            "name": "Steve Marsh",
                            "assignedAt": "2025-04-29T14:23:13",
                            "nonResponseEvent": "Ignored"
                        }
                    ]
                }
            ],
            "automationBotIDs": [
                "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx"
            ]
        },
        {
            "conversationId": "c-ca68e8c-223e-490a-959d-e7550ab5xxxx",
            "sessionId": "6810dacbf020770ab6b6xxxx",
            "channel": "Voice",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "reason": "Resolved",
            "disconnectingEvent": "Agent Closed",
            "botId": "st-d76e4023-ba1e-52af-a144-248e92c4xxxx",
            "dispositions": [
                "Resolved"
            ],
            "dispositionRemarks": [
                "The customer initiated a conversation with the virtual assistant MasterBot. The assistant offered various options, including weather forecasts, balance checks, company stock values, and flight status updates. The customer requested to speak with an agent, and the virtual assistant acknowledged the request, asking the customer to hold while connecting to an available agent. The agent then joined the conversation and greeted the customer."
            ],
            "metaInfo": {
                "caller": "+19876543210",
                "callee": "+1234567890",
                "callerHost": "50.19.121.248",
                "userId": "u-cd511a7d-6d26-596f-982b-c497c193xxxx",
                "dialedNumber": "+1234567890",
                "agentTransferConfig": {
                    "automationBotId": "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx",
                    "dialog_tone": [],
                    "lastIntentName": "WelcomeDialog",
                    "accountId": "6656d31f165174bd532fxxxx",
                    "skillsIds": [],
                    "overrideAgents": false
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "https://cdn-icons-png.flaticon.com/512/4017/4017991.png",
                "profColour": "#ff0000",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "Jackson",
                "lastName": "Smith",
                "orgId": "o-33749baa-f662-5ae8-b506-4b3bf787xxxx",
                "_id": "u-cd511a7d-6d26-596f-982b-c497c193xxxx",
                "identities": [
                    {
                        "val": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/6ca1d209-5e4a-4d4c-83fe-1a2b4ee8xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "6656d31f165174bd532fxxxx/korevg/6ca1d209-5e4a-4d4c-83fe-1a2b4ee8xxxx",
                        "type": "mapped"
                    }
                ],
                "email": "jackson.smith@example.com",
                "phoneNumber": "+919876543210",
                "category": "$location",
                "transcribeConfig": {
                    "transcribe": true
                }
            },
            "sessionStartTime": "2025-04-29T13:57:31",
            "sessionEndTime": "2025-04-29T13:59:00",
            "channelSpecificUserId": "6656d31f165174bd532fxxxx/korevg/6ca1d209-5e4a-4d4c-83fe-1a2b4ee8xxxx",
            "userId": "u-cd511a7d-6d26-596f-982b-c497c193xxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-79e051d-9351-4cdb-ac2b-8599a493xxxx",
                    "queueName": "Default Queue",
                    "EnterTime": "2025-04-29T13:58:04",
                    "respondingAgent": {
                        "agentId": "u-da4b3f26-fbd0-5524-b599-114ba962xxxx",
                        "agentNotes": [
                            "The customer initiated a conversation with the virtual assistant MasterBot. The assistant offered various options, including weather forecasts, balance checks, company stock values, and flight status updates. The customer requested to speak with an agent, and the virtual assistant acknowledged the request, asking the customer to hold while connecting to an available agent. The agent then joined the conversation and greeted the customer."
                        ],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "firstResponseTime": "2025-04-29T13:58:14",
                        "firstResponseDuration": 0,
                        "interactionEndTime": "2025-04-29T13:59:42",
                        "interactionDuration": 88,
                        "afterCallWorkDuration": 3,
                        "afterCallWorkEndTime": "2025-04-29T13:59:42",
                        "ConsultingAgents": [],
                        "JoinedUsers": [
                            {
                                "agentId": "u-f4937b89-aa70-58ce-a414-0a23b377xxxx",
                                "email": "stagingsmartassist_savg@mailinator.com",
                                "name": "Nick Thomas",
                                "joinedAt": "2025-04-29T13:58:45",
                                "end": "2025-04-29T13:59:09"
                            }
                        ],
                        "email": "stagingsmartassist_savg_agent2@mailinator.com",
                        "name": "Steve Marsh",
                        "acceptedTime": "2025-04-29T13:58:14",
                        "assignedAt": "2025-04-29T13:58:05"
                    }
                }
            ],
            "automationBotIDs": [
                "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx"
            ]
        },
        {
            "conversationId": "c-0b689a4-9395-4bbe-9761-d798b636xxxx",
            "sessionId": "68108126d1414717b4dexxxx",
            "channel": "Web/Mobile Client",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "reason": "Resolution",
            "disconnectingEvent": "Agent Closed",
            "botId": "st-d76e4023-ba1e-52af-a144-248e92c4xxxx",
            "dispositions": [
                "System Generated"
            ],
            "dispositionRemarks": [
                "The customer initiated a conversation with the virtual assistant to show their checking account balance. The assistant provided the balance of $4000 and then transferred the conversation to a live agent upon the customer's request. The agent joined the conversation and greeted the customer, inquiring how they could assist further. The conversation ended with the agent closing it and inviting the customer to reach out again if needed, along with a request for a CSAT Rating."
            ],
            "metaInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "https://cdn-icons-png.flaticon.com/512/4017/4017991.png",
                "profColour": "#add8e6",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "Bill",
                "lastName": "Wilson",
                "orgId": "o-33749baa-f662-5ae8-b506-4b3bf787xxxx",
                "_id": "u-f4721018-9c79-5a35-8780-980affd4xxxx",
                "identities": [
                    {
                        "val": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/ba76cc92-ac77-46ab-8ea1-72035469b5799d33afb1-62b6-44e8-ab15-02327f6dxxxx",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "automationBotId": "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx",
                    "dialog_tone": [],
                    "lastIntentName": "WelcomeDialog",
                    "skillsIds": [],
                    "overrideAgents": false
                },
                "email": "bill.wilson@example.com",
                "phoneNumber": "+919876543210",
                "category": "i18n",
                "hostDomain": "https://staging-bots.korebots.com",
                "os": "Mac OS"
            },
            "sessionStartTime": "2025-04-29T07:35:02",
            "sessionEndTime": "2025-04-29T07:41:22",
            "channelSpecificUserId": "cs-6e448742-1784-56ef-ad0a-7891d9ecxxxx/ba76cc92-ac77-46ab-8ea1-72035469b5799d33afb1-62b6-44e8-ab15-02327f6dxxxx",
            "userId": "u-f4721018-9c79-5a35-8780-980affd4xxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-4ad35b9-d966-459a-ac25-821341dbxxxx",
                    "queueName": "ISTQueue",
                    "EnterTime": "2025-04-29T07:36:24",
                    "respondingAgent": {
                        "agentId": "u-f4937b89-aa70-58ce-a414-0a23b377xxxx",
                        "agentNotes": [
                            "The customer initiated a conversation with the virtual assistant to show their checking account balance. The assistant provided the balance of $4000 and then transferred the conversation to a live agent upon the customer's request. The agent joined the conversation and apologized for the wait. The customer did not provide further assistance, and the agent closed the conversation. The conversation ended with the customer requesting a CSAT Rating but no further action was taken.",
                            "The customer initiated a conversation with the virtual assistant to show their checking account balance. The assistant provided the balance of $4000 and then transferred the conversation to a live agent upon the customer's request. The agent joined the conversation and greeted the customer, inquiring how they could assist further. The conversation ended with the agent closing it and inviting the customer to reach out again if needed, along with a request for a CSAT Rating."
                        ],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "firstResponseTime": "2025-04-29T07:37:08",
                        "firstResponseDuration": 24,
                        "interactionEndTime": "2025-04-29T07:41:21",
                        "interactionDuration": 276,
                        "afterCallWorkDuration": 32,
                        "afterCallWorkEndTime": "2025-04-29T07:41:53",
                        "ConsultingAgents": [],
                        "JoinedUsers": [],
                        "email": "stagingsmartassist_savg@mailinator.com",
                        "name": "Nick Thomas",
                        "acceptedTime": "2025-04-29T07:36:44",
                        "assignedAt": "2025-04-29T07:36:35"
                    }
                }
            ],
            "automationBotIDs": [
                "st-158b642c-80ee-56fe-b996-a0cb4af6xxxx"
            ]
        }
    ]
}
```

## Response Parameters

| Field Name                                 | Type and Format                          | Description                                                                                       | Example                                                                                     |
|--------------------------------------------|------------------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|
| conversationId                             | type-prefixed-guid                       | An ID generated by SmartAssist for this conversation.                                            | c-7b08889-539d-408d-a3e6-9e6ae059xxxx                                                      |
| sessionId                                  | internal value                           | A bot-generated ID for this conversation.                                                       | 63bd199c197b3646dadexxxx                                                                    |
| channel                                    | character string                         | Name of the channel                                                                              | Web / Mobile Client                                                                         |
| skills                                     | array of skill objects                   | ID and name of each skill associated with this conversation                                      | { “id”: “64c0d5353642d2755604xxxx”, “name”: “Platinum Customer” }                           |
| finalStatus                                | character string                         | Completion status of the conversation                                                           | CLOSED                                                                                      |
| smartStatus                                | character string                         | Conversation status                                                                              | TERMINATED                                                                                  |
| Reason                                     | character string                         | The reason for the status. | NO AGENTS AVAILABLE                                                                         |
| disconnectingEvent                         | character string                         | The final event leading to the conversation ending                                               | System Hangup                                                                               |
| botId                                      | type-prefixed-guid                       |                                                                                                   | st-ae8470ab-8ecb-51fb-8e13-c87dc66fxxxx                                                    |
| Direction                                  | Inbound or Outbound                      |                                                                                                   |                                                                                             |
| dispositions                               | array of strings                         | Disposition codes                                                                                | [ “ESCALATED” ]                                                                             |
| dispositionRemarks                         | array of strings                         | Final remarks from the agent                                                                     | [” CUSTOMER needs help with Products and Sales. AGENT will connect her with an agent.”]     |
| customerInfo                               | object                                   | Info on the caller obtained on a best-efforts basis                                              | { “CustomerPhone”: “1888456780”, “CenterPhone”: “1234567890”, “CustomerFirstName”: “John” } |
| metaInfo                                   | object                                   | Contains custom information, set by the automation                                               |                                                                                             |
| sessionStartTime                           | YYYY-MM-DDTHH:mm: SS                      | Start time of the session.                                                                       | 2023-01-10 2:25:54                                                                          |
| sessionEndTime                             | YYYY-MM-DDTHH:mm: SS                      | End time of the session.                                                                         | 2023-01-10 2:25:54                                                                          |
| channelSpecificUserId                      | no known format                          | User ID passed by the channel                                                                    |                                                                                             |
| userId                                     | type-prefixed-guid                       | SmartAssist’s own generated user ID                                                              | u-8413fd99-4ded-5f6d-8c1a-176dc66xxxx                                                      |
| destinations                               | array of objects                         | One object for each Queue or Agent that the call was transferred to.                             |                                                                                             |
| destination.destinationType                | QueueEntry | AgentSegment               | Destination for any transfer – to distinguish a direct-to-agent transfer from a transfer to queue. |                                                                                             |
| csatScore                                  | integer                                  | CSAT score assigned by consumer (1 – 5)                                                          | 3                                                                                           |
| csatFeedback                               | string                                   | Survey comment entered by consumer.                                                              |                                                                                             |
| QueueEntry.queueId                         | type-prefixed-guid                       | SmartAssist’s internal ID for the Queue                                                          | qu-123dbe9-c752-464d-a9be-1d0e43b6xxxx                                                     |
| QueueEntry.queueName                       | character string                         | Name of the queue                                                                                | Residential – Sales                                                                         |
| QueueEntry.EnterTime                       | YYYY-MM-DDTHH:mm:SS                      | Time at which this conversation entered this queue                                               | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent                 | an AgentSegment object                   | Details of the responding agent.                                                                 |                                                                                             |
| QueueEntry.respondingAgent.agentId         | type-prefixed-guid                       | SmartAssist’s internal ID for the agent                                                          | u-f3a11f62-57d7-5a9f-a071-787650b1xxxx                                                     |
| QueueEntry.respondingAgent.name            | character string                         | Agent’s name                                                                                     | Jared Smith                                                                                 |
| QueueEntry.respondingAgent.agentNotes      | array of strings                         | Notes from each agent.                                                                           | [“CUSTOMER has a problem with Products and Sales. She needs an agent to help her.”]         |
| QueueEntry.respondingAgent.destinationType | AgentSegment                             | A constant value.                                                                                |                                                                                             |
| QueueEntry.respondingAgent.email           | full-email-id@employer.com               | Agent’s email address                                                                            | jared.smith@example.com                                                                     |
| QueueEntry.respondingAgent.assignedAt      | YYYY-MM-DDTHH:mm: SS                      | The time at which the Queue assigned this contact to this Agent                                  | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent.acceptedTime    | YYYY-MM-DDTHH:mm: SS                      | The time at which this Agent accepted this contact                                               | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent.status          | Answered                                 | Status of the conversation with this respondingAgent.                                            |                                                                                             |
| QueueEntry.respondingAgent.firstResponseTime | YYYY-MM-DDTHH:mm: SS                    | The time at which this Agent first responded                                                     | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent.firstResponseDuration | integer                                | Duration in seconds, from the time of Agent’s acceptance to the time of his first response.      | 20                                                                                          |
| QueueEntry.respondingAgent.interactionEndTime | YYYY-MM-DDTHH:mm: SS                     | The time at which the interaction with this respondingAgent ended.                               | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent.interactionDuration | integer                                 | Duration in seconds, from the time of Agent’s acceptance to the time of the last utterance       | 51                                                                                          |
| QueueEntry.respondingAgent.afterCallWorkDuration | integer                                 | Duration in seconds, of the post-call-work of this agent.                                        | 8                                                                                           |
| QueueEntry.respondingAgent.afterCallWorkEndTime | YYYY-MM-DDTHH:mm: SS                     | The time when this agent completed post-call work.                                               | 2023-01-10 2:25:54                                                                          |
| QueueEntry.nonRespondingAgents             | array of nonRespondingAgent objects      | Details of agents who did not accept the contact.                                                |                                                                                             |
| QueueEntry.nonRespondingAgent.agentId      | type-prefixed-guid                       | SmartAssist’s internal ID for the Agent                                                          | u-93e53753-0ea0-5168-b8ae-ad731f7axxxx                                                     |
| QueueEntry.nonRespondingAgent.name         | character string                         | Agent’s name                                                                                     | Diarmuid O’Scannlain                                                                        |
| QueueEntry.nonRespondingAgent.email        | email                                    | Agent’s email address                                                                            | di.oscannlain@example.com                                                                   |
| QueueEntry.nonRespondingAgent.assignedAt   | YYYY-MM-DDTHH:mm: SS                      | The time when this agent was assigned this contact.                                              | 2023-01-10 2:25:54                                                                          |
| userleveltags                              | array of tag objects                     | All user-level tags associated with this session                                                 | {“name”: “accountnum”,”value”: “121413243141234132” }                                       |
| sessionleveltags                           |      array of tag objects                                    | All session-level tags associated with this session                                              |                                                                                             |
| automationBotIDs                           |  array of string                                        | Contains one or more IDs of the automation bots invoked during the session. Each ID represents a specific automation bot that processed part of the user interaction.                                             |                                                                                       st-158b642c-80ee-56fe-b996-a0cb4af6xxxx      |