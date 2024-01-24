# Get All Conversations Data – Call Details

To retrieve the raw data for all conversations in a very detailed view. The days’ range cannot be more than seven days.

<table>
  <tr>
   <td>Method
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/interactionDetails</code>
<code>https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/calldetails</code>
   </td>
  </tr>
  <tr>
   <td>Content Type
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td><code>auth: {{JWT}}</code>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
</table>

## Path Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>The Account Id
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Query Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>limit
   </td>
   <td>The number of conversations to be displayed in the response. The default value is 100. For example, 50
   </td>
   <td>Integer, Optional
   </td>
  </tr>
  <tr>
   <td>offset
   </td>
   <td>The number of responses the documents need to Skip. The default value is 0. For example, 10
   </td>
   <td>Integer, Optional
   </td>
  </tr>
</table>

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

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>startDate
   </td>
   <td>The start date from which the records need to be considered.
The date format  is:
<code>yyyy-mm-dd HH24:mm:ss</code>
For Example, <code>2022-08-25 07:20:15</code>
   </td>
   <td>DateTime, Required
   </td>
  </tr>
  <tr>
   <td>endDate
   </td>
   <td>The end date from which the records need to be considered.
The date format  is:
<code>yyyy-mm-dd HH24:mm:ss</code>
For Example, <code>2022-08-25 18:20:15</code>
   </td>
   <td>DateTime, Required
   </td>
  </tr>
  <tr>
   <td>timeZoneOffset
   </td>
   <td>The time zone offset.
For Example, <code>-330,630,-500</code>

    NOTE: If the user is in US/New York, then his timeZoneOffset would be 300. For the -ve numbers use the ‘-‘ sign, and for +ve numbers don’t use the sign. For timeZones east of GMT use the -ve sign, for the timeZones west of GMT don’t use any sign.
   </td>
   <td>Number, Required
   </td>
  </tr>
  <tr>
   <td>channels
   </td>
   <td>The different channels.
For Example, <code>['rtm', 'voice']</code>
   </td>
   <td>array[string], Optional
   </td>
  </tr>
  <tr>
   <td>queues
   </td>
   <td>The list of queue ids in the instance bots.
   </td>
   <td>array[string], Optional
   </td>
  </tr>
  <tr>
   <td>bots
   </td>
   <td>The list of instance bot ids in the account.
   </td>
   <td>array[string], Optional
   </td>
  </tr>
</table>

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

<table>
  <tr>
   <td><strong>FIELD</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE AND FORMAT</strong>
   </td>
  </tr>
  <tr>
   <td>conversationId
   </td>
   <td>An ID generated by SmartAssist for this conversation. For example: c-7b078889-539d-408d-a3e6-9e6ae05946ba
   </td>
   <td>type-prefixed-guid
   </td>
  </tr>
  <tr>
   <td>sessionId
   </td>
   <td>A bot-generated ID for this conversation. For example: 63bd199c197b3646dadee11b
   </td>
   <td>internal value
   </td>
  </tr>
  <tr>
   <td>channel
   </td>
   <td>Name of the channel. For example: Web / Mobile Client
   </td>
   <td>character string
   </td>
  </tr>
  <tr>
   <td>finalStatus
   </td>
   <td>Completion status of the conversation. For example: CLOSED
   </td>
   <td>character string
   </td>
  </tr>
  <tr>
   <td>botId
   </td>
   <td>An ID of the bot. It is also called Stream ID. For example: st-ae8470ab-8ecb-51fb-8e13-c87dc66f4ae4
   </td>
   <td>type-prefixed-guid
   </td>
  </tr>
  <tr>
   <td>dispositions
   </td>
   <td>Disposition codes. For example: [ “ESCALATED” ]
   </td>
   <td>array of strings
   </td>
  </tr>
  <tr>
   <td>dispositionRemarks
   </td>
   <td>Final remarks from the agent. For example: [” CUSTOMER needs help with Products and Sales. AGENT will connect her with an agent.”]
   </td>
   <td>array of strings
   </td>
  </tr>
  <tr>
   <td>metaInfo
   </td>
   <td>Custom information, set by the automation.
   </td>
   <td>object
   </td>
  </tr>
  <tr>
   <td>sessionStartTime
   </td>
   <td>Start time of the session. For example: 2023/01/10 2:25:54
   </td>
   <td>YYYY-MM-DDTHH:mm:SS
   </td>
  </tr>
  <tr>
   <td>sessionEndTime
   </td>
   <td>End time of the session. For example: 2023/01/10 2:25:54
   </td>
   <td>YYYY-MM-DDTHH:mm:SS
   </td>
  </tr>
  <tr>
   <td>channelSpecificUserId
   </td>
   <td>user ID passed by the channel.
   </td>
   <td>no specific format
   </td>
  </tr>
  <tr>
   <td>userId
   </td>
   <td>SmartAssist’s own generated user ID. For example: u-8413fd99-4ded-5f6d-8c1a-176dc66e526
   </td>
   <td>type-prefixed-guid
   </td>
  </tr>
  <tr>
   <td>destinations
   </td>
   <td>One object for each Queue or Agent that the call was transferred to.
   </td>
   <td>array of objects
   </td>
  </tr>
  <tr>
   <td>destination.destinationType
   </td>
   <td>Destination for any transfer – to distinguish a direct-to-agent transfer from a transfer to queue.
   </td>
   <td>QueueEntry | AgentSegment
   </td>
  </tr>
  <tr>
   <td>csatScore
   </td>
   <td>CSAT score assigned by the customer (1 – 5). For example: 3
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>csatFeedback
   </td>
   <td>Survey comment entered by the customer.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>QueueEntry.queueId
   </td>
   <td>SmartAssist’s internal ID for the Queue. For example: qu-123dbe9-c752-464d-a9be-1d0e43b670a5
   </td>
   <td>type-prefixed-guid
   </td>
  </tr>
  <tr>
   <td>QueueEntry.queueName
   </td>
   <td>Name of the queue. For example: Residential – Sales
   </td>
   <td>character string
   </td>
  </tr>
  <tr>
   <td>QueueEntry.EnterTime
   </td>
   <td>The time at which this conversation entered this queue. For example: 2023/01/10 2:25:54
   </td>
   <td>YYYY-MM-DDTHH:mm:SS
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent
   </td>
   <td>Details of the responding agent.
   </td>
   <td>an AgentSegment object
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.agentId
   </td>
   <td>SmartAssist’s internal ID for the agent. For example: u-f3a11f62-57d7-5a9f-a071-787650b17b34
   </td>
   <td>type-prefixed-guid
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.name
   </td>
   <td>The agent’s name. For example: Jared Smith
   </td>
   <td>character string
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.agentNotes
   </td>
   <td>Notes from each agent. For example: [“CUSTOMER has a problem with Products and Sales. She needs an agent to help her.”]
   </td>
   <td>array of strings
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.destinationType
   </td>
   <td>A constant value.
   </td>
   <td>AgentSegment
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.email
   </td>
   <td>The agent’s email address. For example: jared.smith@example.com
   </td>
   <td>full-email-id@employer.com
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.assignedAt
   </td>
   <td>The time at which the Queue assigned this contact to this Agent. For example: 2023/01/10 2:25:54
   </td>
   <td>YYYY-MM-DDTHH:mm:SS
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.acceptedTime
   </td>
   <td>The time at which this Agent accepted this contact. For example: 2023/01/10 2:25:54
   </td>
   <td>YYYY-MM-DDTHH:mm:SS
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.status
   </td>
   <td>Status of the conversation with this respondingAgent.
   </td>
   <td>Answered |
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.firstResponseTime
   </td>
   <td>The time at which this Agent first responded. For example: 2023/01/10 2:25:54
   </td>
   <td>YYYY-MM-DDTHH:mm:SS
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.firstResponseDuration
   </td>
   <td>Duration in seconds, from the time of Agent’s acceptance to the time of his first response. For example: 20
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.interactionEndTime
   </td>
   <td>The time at which the interaction with this respondingAgent ended. For example: 2023/01/10 2:25:54
   </td>
   <td>YYYY-MM-DDTHH:mm:SS
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.interactionDuration
   </td>
   <td>The duration in seconds, from the time of Agent’s acceptance to the time of the last utterance between the agent and the end user. For example: 51
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.afterCallWorkDuration
   </td>
   <td>The duration of the post-call-work of this agent, in seconds. For example: 8
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>QueueEntry.respondingAgent.afterCallWorkEndTime
   </td>
   <td>The time when this agent completed post-call work. For example: 2023/01/10 2:25:54
   </td>
   <td>YYYY-MM-DDTHH:mm:SS
   </td>
  </tr>
  <tr>
   <td>QueueEntry.nonRespondingAgents
   </td>
   <td>The details of agents who did not accept the contact.
   </td>
   <td>array of nonRespondingAgent objects
   </td>
  </tr>
  <tr>
   <td>QueueEntry.nonRespondingAgent.agentId
   </td>
   <td>SmartAssist’s internal ID for the Agent. For example: u-93e53753-0ea0-5168-b8ae-ad731f7a3d6a
   </td>
   <td>type-prefixed-guid
   </td>
  </tr>
  <tr>
   <td>QueueEntry.nonRespondingAgent.name
   </td>
   <td>The agent’s name. For example: Diarmuid O’Scannlain
   </td>
   <td>character string
   </td>
  </tr>
  <tr>
   <td>QueueEntry.nonRespondingAgent.email
   </td>
   <td>The agent’s email address. For example: di.oscannlain@example.com
   </td>
   <td>email
   </td>
  </tr>
  <tr>
   <td>QQueueEntry.nonRespondingAgent.assignedAt
   </td>
   <td>The time when this agent was assigned this contact. For example: 2023/01/10 2:25:54
   </td>
   <td>YYYY-MM-DDTHH:mm:SS
   </td>
  </tr>
</table>