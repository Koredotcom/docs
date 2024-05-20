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
curl --location --request POST 'https://{{host}}/agentassist/api/public/analytics/account/655c4bb112e26942040bxxxx/v2/interactionDetails?offset=0&limit=100' \
--header 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
--header 'accountid: 6371bd516c3784060222xxxx' \
--header 'Accept: application/json, text/plain, /' \
--header 'Content-Type: application/json' \
--data-raw '{

"startDate":"2023-11-18",

"endDate":"2023-11-21",
"timeZoneOffset":300
}'
```
```
curl --location --request POST 'http://{{host}}/agentassist/api/public/analytics/account/655c4bb112e26942040bxxxx/v2/calldetails?offset=0&limit=100' \
--header 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
--header 'accountid: 6371bd516c3784060222xxxx' \
--header 'Accept: application/json, text/plain, /' \
--header 'Content-Type: application/json' \
--data-raw '{

"startDate":"2023-11-18",

"endDate":"2023-11-21",
"timeZoneOffset":300
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
    "numResults": 1,
    "data": [
        {
            "conversationId": "c-ed526c9-6099-4b44-b35a-3c253981xxxx",
            "sessionId": "655c7c04637e80158be1xxxx",
            "channel": "campaign",
            "isVoicemail": false,
            "Direction": "Outbound",
            "finalStatus": "CLOSED",
            "botId": "st-84321a8b-08cd-56c8-8aef-681a850bxxxx",
            "dispositions": [],
            "dispositionRemarks": [
                "Consumer and Agent are talking to each other."
            ],
            "metaInfo": {
                "userId": "u-c0a2b67a-70de-50ef-8cec-ad01bd29xxxx",
                "firstName": "",
                "lastName": "",
                "callee": "+123456789",
                "caller": "+91987654321",
                "countryCode": "+91",
                "dialedNumber": "+123456789",
                "agentTransferConfig": {
                    "overrideAgents": false
                }
            },
            "userId": "u-53592241-7a9f-52d5-b764-62d707b4xxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-cea1d08-94dc-4825-97da-1d335774xxxx",
                    "queueName": "Default Queue",
                    "EnterTime": "2023-11-20T13:48:13",
                    "respondingAgent": {
                        "agentId": "u-53592241-7a9f-52d5-b764-62d707b4xxxx",
                        "name": "john doe",
                        "agentNotes": [],
                        "email": "john doe@domain.com",
                        "assignedAt": "2023-11-20T13:48:13",
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "acceptedTime": "2023-11-20T13:48:14",
                        "interactionEndTime": "2023-11-20T13:48:45",
                        "interactionDuration": 32
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