# Get All Conversations Data – Call Details

To retrieve the raw data for all conversations in a very detailed view. The days’ range cannot be more than seven days.

| **Method** | POST |
|--------|------|
| **Endpoin**t** | `https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/interactionDetails`<br>`https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/calldetails` |
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

## Sample Requests

```
curl --location --request POST 'https://staging-smartassist.kore.ai/agentassist/api/public/analytics/account/65269fe0dd9c622245c1xxxx/v2/calldetails?offset=0&limit=100' \
--header 'authority: staging-smartassist.kore.ai' \
--header 'accept: application/json, text/plain, /' \
--header 'accept-language: en-US,en;q=0.9' \
--header 'accountid: 65269fe0dd9c622245c1xxxx' \
--header 'app-language: en' \
--header 'content-type: application/json;charset=UTF-8' \
--header 'referer:
SmartAssist ' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTUxZWE1ZGYyLTY3NDItNTlmNi1iNjg1LWUyNTJmNDE5ZjBlMyJ9.DAPhx_h32KPSoylUfGWpjQS2tITBcBxNYAEwPJWxxxx' \
--data-raw '{
"startDate":"2024-08-24",
"endDate":"2024-08-24",
"timeZoneOffset":-330
}'
```

## Body Parameters

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
| bots           | The list of instance bot ids in the account.                                                                   | array[string], optional |

## Sample Response

```
{
    "numResults": 13,
    "data": [
        {
            "sessionId": "66c97ba342aad0ced15fxxxx",
            "channel": "AgentAssistV2",
            "sessionStartTime": "2024-08-24T11:50:19",
            "sessionEndTime": "2024-08-24T11:50:19",
            "botId": "st-24ccdea9-de4e-5139-923f-883c53ffxxxx",
            "userId": "u-1a94ad5b-741f-5f58-bf94-74065b30xxxx",
            "channelSpecificUserId": "65269fe0dd9c622245c1xxxx/agentassist/c-221bca2-cbe8-4996-8216-187e1a69xxxx",
            "orgId": "o-2d494e9d-b8f6-55d2-844e-a5bc4ca3xxxx",
            "finalStatus": "BotResolved"
        },
        {
            "conversationId": "c-4c93422-e5d3-4e99-9d3c-e1e30238xxxx",
            "sessionId": "66c9a55754638e543c37xxxx",
            "channel": "voice",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "finalStatus": "CLOSED",
            "botId": "st-24ccdea9-de4e-5139-923f-883c53ffxxxx",
            "dispositions": [
                "Resolved"
            ],
            "dispositionRemarks": [
                "The customer had an issue with their internet service. They were unable to connect to the internet and were experiencing slow speeds. The customer also mentioned that they had been experiencing this issue for a while. The customer was frustrated with the situation and expressed their dissatisfaction with the service. The bot acknowledged the issue and informed the customer that an agent would be required to assist them further. The conversation ended with the customer being asked to hold while an available agent was found."
            ],
            "metaInfo": {
                "caller": "+18448735673",
                "callee": "+16095344861",
                "callerHost": "50.19.121.248",
                "userId": "u-df4d1529-ae2d-58e2-8759-f748e232xxxx",
                "dialedNumber": "+16095344861",
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "lastIntentName": "ConnectToAgent",
                    "automationBotId": "st-06e05f6e-5fd0-58fa-8e16-7e7c33acxxxx",
                    "accountId": "65269fe0dd9c622245c1xxxx"
                },
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
                "orgId": "o-33749baa-f662-5ae8-b506-4b3bf787xxxx",
                "_id": "u-df4d1529-ae2d-58e2-8759-f748e232xxxx",
                "identities": [
                    {
                        "val": "cs-ab30569a-ee38-5408-a0ea-43398a16xxxx/259034b7-0d08-487d-a451-aaf5de2dxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "65269fe0dd9c622245c1xxxx/korevg/259034b7-0d08-487d-a451-aaf5de2dxxxx",
                        "type": "mapped"
                    }
                ]
            },
            "sessionStartTime": "2024-08-24T14:48:15",
            "sessionEndTime": "2024-08-24T14:50:48",
            "channelSpecificUserId": "65269fe0dd9c622245c1xxxx/korevg/259034b7-0d08-487d-a451-aaf5de2dxxxx",
            "userId": "u-df4d1529-ae2d-58e2-8759-f748e232xxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-77506d0-c529-4a71-a007-cc718742xxxx",
                    "queueName": "Default Queue",
                    "EnterTime": "2024-08-24T14:48:16",
                    "respondingAgent": {
                        "agentId": "u-f2f39007-4c2c-54dc-9233-86a63c82xxxx",
                        "agentNotes": [],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "firstResponseTime": "2024-08-24T14:48:33",
                        "firstResponseDuration": 0,
                        "interactionEndTime": "2024-08-24T14:48:53",
                        "interactionDuration": 20,
                        "ConsultingAgents": [],
                        "JoinedUsers": [
                            {
                                "agentId": "u-85041b83-16bd-55ca-a95d-24968945xxxx",
                                "email": "agent.user1@getnada.com",
                                "name": "detective agent1",
                                "joinedAt": "2024-08-24T14:48:47",
                                "end": "2024-08-24T14:48:56"
                            }
                        ],
                        "email": "newaccount@mailinator.com",
                        "name": "new account",
                        "acceptedTime": "2024-08-24T14:48:33",
                        "assignedAt": "2024-08-24T14:48:30"
                    }
                }
            ]
        },
    ] 
}
```

## Response Parameters

| FIELD                                 | DESCRIPTION                                                                                                        | TYPE AND FORMAT          |
|---------------------------------------|--------------------------------------------------------------------------------------------------------------------|--------------------------|
| conversationId                        | An ID generated by Contact center AI for this conversation. For example, c-7b078889-539d-408d-a3e6-9e6ae05946ba         | type-prefixed-guid       |
| sessionId                             | A bot-generated ID for this conversation. For example, 63bd199c197b3646dadee11b                                     | internal value           |
| channel                               | Name of the channel. For example, Web / Mobile Client                                                               | character string         |
| finalStatus                           | Completion status of the conversation. For example, CLOSED                                                         | character string         |
| botId                                 | An ID of the bot. It is also called Stream ID. For example, st-ae8470ab-8ecb-51fb-8e13-c87dc66f4ae4                | type-prefixed-guid       |
| dispositions                          | Disposition codes. For example, [ “ESCALATED” ]                                                                     | array of strings         |
| dispositionRemarks                    | Final remarks from the agent. For example, [” CUSTOMER needs help with Products and Sales. AGENT will connect her with an agent.”] | array of strings |
| metaInfo                              | Custom information, set by the automation.                                                                          | object                   |
| sessionStartTime                      | Start time of the session. For example, 2023/01/10 2:25:54                                                         | YYYY-MM-DDTHH:mm:SS      |
| sessionEndTime                        | End time of the session. For example, 2023/01/10 2:25:54                                                           | YYYY-MM-DDTHH:mm:SS      |
| channelSpecificUserId                 | user ID passed by the channel.                                                                                      | no specific format       |
| userId                                | Contact Center AI's own generated user ID. For example, u-8413fd99-4ded-5f6d-8c1a-176dc66e526                             | type-prefixed-guid       |
| destinations                          | One object for each Queue or Agent that the call was transferred to.                                                | array of objects         |
| destination.destinationType           | Destination for any transfer – to distinguish a direct-to-agent transfer from a transfer to queue.                 | QueueEntry \| AgentSegment |
| csatScore                             | CSAT score assigned by the customer (1 – 5). For example, 3                                                         | integer                  |
| csatFeedback                          | Survey comment entered by the customer.                                                                            | string                   |
| QueueEntry.queueId                    | Contact Center AI's internal ID for the Queue. For example, qu-123dbe9-c752-464d-a9be-1d0e43b670a5                        | type-prefixed-guid       |
| QueueEntry.queueName                  | Name of the queue. For example, Residential – Sales                                                                | character string         |
| QueueEntry.EnterTime                  | The time at which this conversation entered this queue. For example, 2023/01/10 2:25:54                           | YYYY-MM-DDTHH:mm:SS      |
| QueueEntry.respondingAgent            | Details of the responding agent.                                                                                   | an AgentSegment object   |
| QueueEntry.respondingAgent.agentId    | Contact Center AI's internal ID for the agent. For example, u-f3a11f62-57d7-5a9f-a071-787650b17b34                       | type-prefixed-guid       |
| QueueEntry.respondingAgent.name       | The agent’s name. For example, Jared Smith                                                                         | character string         |
| QueueEntry.respondingAgent.agentNotes | Notes from each agent. For example, [“CUSTOMER has a problem with Products and Sales. She needs an agent to help her.”] | array of strings |
| QueueEntry.respondingAgent.destinationType | A constant value.                                                                                              | AgentSegment             |
| QueueEntry.respondingAgent.email      | The agent’s email address. For example, jared.smith@example.com                                                    | full-email-id@employer.com |
| QueueEntry.respondingAgent.assignedAt | The time at which the Queue assigned this contact to this Agent. For example, 2023/01/10 2:25:54                   | YYYY-MM-DDTHH:mm:SS      |
| QueueEntry.respondingAgent.acceptedTime | The time at which this Agent accepted this contact. For example, 2023/01/10 2:25:54                             | YYYY-MM-DDTHH:mm:SS      |
| QueueEntry.respondingAgent.status    | Status of the conversation with this respondingAgent.                                                              | Answered                 |
| QueueEntry.respondingAgent.firstResponseTime | The time at which this Agent first responded. For example, 2023/01/10 2:25:54                                | YYYY-MM-DDTHH:mm:SS      |
| QueueEntry.respondingAgent.firstResponseDuration | Duration in seconds, from the time of Agent’s acceptance to the time of his first response. For example, 20 | integer                  |
| QueueEntry.respondingAgent.interactionEndTime | The time at which the interaction with this respondingAgent ended. For example, 2023/01/10 2:25:54          | YYYY-MM-DDTHH:mm: