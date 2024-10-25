# Get All Conversations Data – Call Details

To retrieve the raw data for all conversations in a very detailed view. The days’ range cannot be more than seven days.

| **Method** | POST |
|--------|------|
| **Endpoint** | `https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/interactionDetails`<br>`https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/calldetails` |
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
| limit | The number of conversations to be displayed in the response. The default value is 100. For example, 50 | integer, optional |
| offset | The number of responses the documents need to Skip. The default value is 0. For example, 10 | integer, optional |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/public/analytics/account/66050d249f946671f64axxxx/v2/calldetails?offset=0' \
--header 'accept: application/json' \
--header 'accept-language: en-US,en;q=0.9' \
--header 'accountId: 66050d249f946671f64axxxx' \
--header 'app-language: en' \
--header 'content-type: application/json;charset=UTF-8' \
--header 'referer: smartassist' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiYXBwSWQiOiJjcy00MDE4OTQ3OS0yMWUwLTU0MjQtOTk4Yy0wN2RjZTYyMjVjY2UifQ.WlqMCWd5lUQ77b-aUO2R45C5cc1uLWOVoAC6_9oxxxx' \
--header 'iId: st-e19dd469-90f5-5655-b0b2-858de901xxxx' \
--data '{
"startDate": "2024-09-24 07:20:15",
"endDate": "2024-09-27 18:20:15",
"timeZoneOffset": 0
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
    "numResults": 3,
    "data": [
        {
            "sessionId": "66f6b83b9147ddd71d70xxxx",
            "channel": "agentassist",
            "sessionStartTime": "2024-09-27T13:50:51",
            "sessionEndTime": "2024-09-27T13:50:51",
            "botId": "st-e19dd469-90f5-5655-b0b2-858de901xxxx",
            "userId": "u-2ee7ff98-eef3-5cf7-8f5c-379970c9xxxx",
            "channelSpecificUserId": "66050d249f946671f64axxxx/agentassist/c-c9d0a98-945b-4b3e-968a-48426134xxxx",
            "orgId": "o-9569140a-d895-5951-99f4-33fb066bxxxx",
            "smartStatus": "CLOSED AT BOT",
            "reason": "",
            "finalStatus": "BotResolved"
        },
        {
            "conversationId": "c-c9d0a98-945b-4b3e-968a-48426134xxxx",
            "sessionId": "66f6b828873ee3868e8dxxxx",
            "channel": "campaign",
            "isVoicemail": "NO",
            "Direction": "Outbound",
            "finalStatus": "USER ABANDONED",
            "smartStatus": "ABANDONED WITH AGENT",
            "Reason": "Default Queue:John Steve",
            "botId": "st-e19dd469-90f5-5655-b0b2-858de901xxxx",
            "dispositions": [
                "Requires Supervisor Attention"
            ],
            "dispositionRemarks": [
                "The customer initiated a conversation with the agent, who responded with greetings. The conversation was brief and did not involve any specific issues or requests."
            ],
            "metaInfo": {
                "userId": "u-79edf186-d163-5a5e-bd4f-391d0f4dxxxx",
                "firstName": "",
                "lastName": "",
                "caller": "+1234567890",
                "callee": "+919876543210",
                "countryCode": "91",
                "dialedNumber": "+1234567890",
                "endUserNumber": "+919876543210"
            },
            "sessionStartTime": "2024-09-27T13:50:32",
            "sessionEndTime": "2024-09-27T13:51:06",
            "userId": "u-79edf186-d163-5a5e-bd4f-391d0f4dxxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-18e471e-a77e-4a93-826e-39ae946axxxx",
                    "respondingAgent": {
                        "agentId": "u-fba6a2f9-26fb-5892-9216-bdea3704xxxx",
                        "agentNotes": [
                            "The customer initiated a conversation with the agent, who responded with greetings. The conversation was brief and did not involve any specific issues or requests."
                        ],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "interactionEndTime": "2024-09-27T13:51:06",
                        "interactionDuration": 34,
                        "holdDuration": 15,
                        "afterCallWorkDuration": 4,
                        "afterCallWorkEndTime": "2024-09-27T13:51:10",
                        "ConsultingAgents": [],
                        "JoinedUsers": [],
                        "email": "mainaccount_staginguxo@mailinator.com",
                        "name": "John Steve",
                        "acceptedTime": "2024-09-27T13:50:32"
                    }
                }
            ]
        },
        {
            "conversationId": "c-92a3ca7-8472-4e59-b927-8995e756xxxx",
            "sessionId": "66f6b3fe3fd2da9b05f7xxxx",
            "channel": "rtm",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "CLOSED",
            "smartStatus": "TERMINATED",
            "Reason": "NO AGENTS AVAILABLE",
            "botId": "st-e19dd469-90f5-5655-b0b2-858de901xxxx",
            "dispositions": [
                "DROP-OFF"
            ],
            "dispositionRemarks": [
                "-"
            ],
            "metaInfo": {
                "firstName": "Peter",
                "lastName": "MIller",
                "phoneNumber": "+919876543210",
                "profImage": "https://cdn-icons-png.flaticon.com/512/4017/4017991.png",
                "category": "animations",
                "identities": [
                    {
                        "val": "cs-40189479-21e0-5424-998c-07dce622xxxx/48c25c33-8275-4a66-96f8-0288f9d1701c8980bb96-5a8a-436e-be14-d2ae3f56xxxx",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "skillsIds": [
                        "660515c38dbf527036d1xxxx"
                    ],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false,
                            "botId": "st-e19dd469-90f5-5655-b0b2-858de901xxxx"
                        }
                    },
                    "automationBotId": "st-e19dd469-90f5-5655-b0b2-858de901xxxx",
                    "lastIntentName": "agent transfer",
                    "dialog_tone": []
                },
                "hostDomain": "https://staging-xo.korebots.com",
                "os": "Mac OS X",
                "device": "NA"
            },
            "sessionStartTime": "2024-09-27T13:32:46",
            "sessionEndTime": "2024-09-27T13:42:13",
            "channelSpecificUserId": "cs-40189479-21e0-5424-998c-07dce622xxxx/48c25c33-8275-4a66-96f8-0288f9d1701c8980bb96-5a8a-436e-be14-d2ae3f56xxxx",
            "userId": "u-9bc0d7d6-2b3d-5af4-9446-ce9729b6xxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-18e471e-a77e-4a93-826e-39ae946axxxx",
                    "queueName": "Default Queue",
                    "EnterTime": "2024-09-27T13:33:01",
                    "respondingAgent": {
                        "agentId": "u-fba6a2f9-26fb-5892-9216-bdea3704xxxx",
                        "agentNotes": [],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "firstResponseTime": "2024-09-27T13:33:12",
                        "firstResponseDuration": 7,
                        "interactionEndTime": "2024-09-27T13:42:10",
                        "interactionDuration": 545,
                        "ConsultingAgents": [],
                        "JoinedUsers": [],
                        "email": "mainaccount_staginguxo@mailinator.com",
                        "name": "John Steve",
                        "acceptedTime": "2024-09-27T13:33:05",
                        "assignedAt": "2024-09-27T13:33:02"
                    }
                }
            ]
        }
    ]
}
```

## Response Parameters

| FIELD                                 | DESCRIPTION                                                                                                        | TYPE AND FORMAT          |
|---------------------------------------|--------------------------------------------------------------------------------------------------------------------|--------------------------|
| conversationId                        | An ID generated by Contact center AI for this conversation. For example, c-7b078889-539d-408d-a3e6-9e6ae05981abcd         | type-prefixed-guid       |
| sessionId                             | A bot-generated ID for this conversation. For example, 63bd199c197b3646dadee11b                                     | internal value           |
| channel                               | Name of the channel. For example, Web / Mobile Client                                                               | character string         |
| finalStatus                           | Completion status of the conversation. For example, CLOSED                                                         | character string         |
| appId                                 | An ID of the bot. It is also called iId. For example, st-ae8470ab-8ecb-51fb-8e13-c87dc66f1klmn                | type-prefixed-guid       |
| dispositions                          | Disposition codes. For example, [ “ESCALATED” ]                                                                     | array of strings         |
| dispositionRemarks                    | Final remarks from the agent. For example, [” CUSTOMER needs help with Products and Sales. AGENT will connect her with an agent.”] | array of strings |
| metaInfo                              | Custom information, set by the automation.                                                                          | object                   |
| sessionStartTime                      | Start time of the session. For example, 2023/01/10 2:25:54                                                         | YYYY-MM-DDTHH: mm:SS      |
| sessionEndTime                        | End time of the session. For example, 2023/01/10 2:25:54                                                           | YYYY-MM-DDTHH: mm:SS      |
| channelSpecificUserId                 | user ID passed by the channel.                                                                                      | no specific format       |
| userId                                | Contact Center AI's own generated user ID. For example, u-8413fd99-4ded-5f6d-8c1a-176dc66x987                             | type-prefixed-guid       |
| destinations                          | One object for each Queue or Agent that the call was transferred to.                                                | array of objects         |
| destination.destinationType           | Destination for any transfer – to distinguish a direct-to-agent transfer from a transfer to queue.                 | QueueEntry \| AgentSegment |
| csatScore                             | CSAT score assigned by the customer (1 – 5). For example, 3                                                         | integer                  |
| csatFeedback                          | Survey comment entered by the customer.                                                                            | string                   |
| QueueEntry.queueId                    | Contact Center AI's internal ID for the Queue. For example, qu-123dbe9-c752-464d-a9be-1d0e43b669a4                        | type-prefixed-guid       |
| QueueEntry.queueName                  | Name of the queue. For example, Residential – Sales                                                                | character string         |
| QueueEntry.EnterTime                  | The time at which this conversation entered this queue. For example, 2023/01/10 2:25:54                           | YYYY-MM-DDTHH: mm:SS      |
| QueueEntry.respondingAgent            | Details of the responding agent.                                                                                   | an AgentSegment object   |
| QueueEntry.respondingAgent.agentId    | Contact Center AI's internal ID for the agent. For example, u-f3a11f62-57d7-5a9f-a071-787650b14b11                       | type-prefixed-guid       |
| QueueEntry.respondingAgent.name       | The agent’s name. For example, Jared Smith                                                                         | character string         |
| QueueEntry.respondingAgent.agentNotes | Notes from each agent. For example, [“CUSTOMER has a problem with Products and Sales. She needs an agent to help her.”] | array of strings |
| QueueEntry.respondingAgent.destinationType | A constant value.                                                                                              | AgentSegment             |
| QueueEntry.respondingAgent.email      | The agent’s email address. For example, jared.smith@example.com                                                    | full-email-id@employer.com |
| QueueEntry.respondingAgent.assignedAt | The time at which the Queue assigned this contact to this Agent. For example, 2023/01/10 2:25:54                   | YYYY-MM-DDTHH: mm:SS      |
| QueueEntry.respondingAgent.acceptedTime | The time at which this Agent accepted this contact. For example, 2023/01/10 2:25:54                             | YYYY-MM-DDTHH: mm:SS      |
| QueueEntry.respondingAgent.status    | Status of the conversation with this respondingAgent.                                                              | Answered                 |
| QueueEntry.respondingAgent.firstResponseTime | The time at which this Agent first responded. For example, 2023/01/10 2:25:54                                | YYYY-MM-DDTHH: mm:SS      |
| QueueEntry.respondingAgent.firstResponseDuration | Duration in seconds, from the time of Agent’s acceptance to the time of his first response. For example, 20 | integer                  |
| QueueEntry.respondingAgent.interactionEndTime | The time at which the interaction with this respondingAgent ended. For example, 2023/01/10 2:25:54          | YYYY-MM-DDTHH: mm:SS