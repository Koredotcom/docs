# Get a specific Conversation

Get a particular conversation by providing the Conversation Id.

<table>
  <tr>
   <td>Method
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/conversations/{{conversation-id}}</code>
   </td>
  </tr>
  <tr>
   <td>Content-Type
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
   <td>The Environment URL. For example, https://smartassist.kore.ai
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>streamId
   </td>
   <td>Bot ID or Stream ID. You can access it from the General Settings page of the bot.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/conversations/{{conversationId}}
--header 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
--header 'accountId: {{YOUR_accountId}}'
```

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
   <td>conversationId
   </td>
   <td>A specific conversationId. This will fetch the records from that conversation. In case only the specific conversation is required, set the limit to 1.

    NOTE: This field cannot be used in combination with dateFrom and dateTo.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Response

```
{
    "participants": [
        {
            "queueId": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
            "queueStartTime": "2023-05-22T04:55:05.350Z",
            "queueName": "Default Queue",
            "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
            "name": "John Doe",
            "status": "INACTIVE",
            "assignedAt": "2023-05-22T04:55:05.452Z",
            "startTimeStamp": "2023-05-22T04:55:07.718Z",
            "endTimeStamp": "2023-05-22T05:29:14.043Z",
            "isTransferred": false,
            "onInterrupt": true
        }
    ],
    "transferDetails": [
        {
            "fromQueue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
            "fromAgent": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
            "transferredType": "QUEUE",
            "transferredTo": [
                {
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "type": "QUEUE"
                }
            ],
            "transferredBy": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
            "priority": "HIGHEST",
            "transferredAt": "2023-05-22T05:29:14.007Z",
            "isManager": false
        }
    ],
    "waitTime": 3369,
    "isProactiveAgentAssistEnabled": true,
    "status": "CLOSED",
    "callbackOpted": false,
    "contactFlow": [],
    "surveyRequired": "YES",
    "isDeveloper": false,
    "_id": "c-3c04346-e522-4c53-9e03-c9566d859aad",
    "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
    "userId": "u-aa15c0f4-7f78-5912-8713-f5cd1c3e476e",
    "accountId": "637368b4a1d039e34ba63bbf",
    "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
    "source": "rtm",
    "botSessionId": "646af57bcc41e5bfbd5efb82",
    "language": "en",
    "keyIntentName": "TalkToAgent",
    "keyIntentUserInput": "I want to talk to an agent",
    "agentDesktopMeta": {
        "pagesVisited": [
            {
                "page": "Kore.ai Web Client",
                "timestamp": "2023-05-18T03:36:25.601Z",
                "timespent": 350312.351
            }
        ]
    },
    "conversationType": "messaging",
    "priority": 5,
    "queues": [
        {
            "type": "ASSIGNED",
            "status": "INACTIVE",
            "isPreferredAgentTimeoutExpired": true,
            "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
            "name": "Default Queue",
            "startTime": "2023-05-22T04:55:05.350Z"
        },
        {
            "type": "TRANSFERRED",
            "status": "ACTIVE",
            "isPreferredAgentTimeoutExpired": true,
            "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
            "startTime": "2023-05-22T05:29:14.007Z",
            "name": "Default Queue"
        }
    ],
    "startTime": "2023-05-22T04:55:05.351Z",
    "endTime": "2023-05-22T05:29:14.086Z",
    "formData": [],
    "timestampValue": 1684731305351,
    "createdAt": "2023-05-22T04:55:05.354Z",
    "updatedAt": "2023-05-22T05:29:24.067Z",
    "__v": 0,
    "skills": [],
    "acceptedAt": "2023-05-22T04:55:07.718Z",
    "notes": [],
    "dispositions": {
        "metaStatus": "SYSTEM_DROP_OFF",
        "status": "DROP-OFF",
        "remarks": "I'm sorry. It seems like there are no agents that can help you at this time. Please reach out us a bit later.",
        "dispositionSets": null
    },
    "userInfo": {
        "workinghours": {
            "workdays": "mon,tue,wed,thu,fri",
            "workstart": "8:00 AM",
            "workend": "5:00 PM"
        },
        "profImage": "no-avatar",
        "jTitle": "",
        "dept": "",
        "profColour": "#ff4500",
        "activationStatus": "active",
        "firstName": "",
        "lastName": "",
        "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
        "_id": "u-aa15c0f4-7f78-5912-8713-f5cd1c3e476e",
        "identities": [
            {
                "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/dc5680b0-a4a4-4ed1-afe7-fa77bda4f1586736bed4-850f-41cf-8baf-2eb8857490ce",
                "type": "mapped"
            }
        ],
        "agentTransferConfig": {
            "skillsIds": [],
            "overrideAgents": false,
            "overrideValues": [],
            "assistEvents": {
                "startEvent": {
                    "isEnabled": true,
                    "botId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "dialogId": "dg-dea45cdd-c731-522e-a1dd-f5d5aacc5f39",
                    "dialogRefId": "6f3688aa-f41b-5d6e-8444-e27c6c225634"
                }
            },
            "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
            "lastIntentName": "TalkToAgent",
            "lastIntentuserInput": "I want to talk to an agent",
            "dialog_tone": []
        },
        "city": "Raha Gaon",
        "country": "India",
        "isp": "Bharti Airtel Ltd. AS for GPRS Service",
        "ipAddress": "106.203.156.168",
        "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
        "hostDomain": "https://bots.kore.ai",
        "os": "Windows",
        "device": "NA"
    }
}
```

## Response Body Parameters

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
   <td>transferDetails
   </td>
   <td>Transfer details of the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>waitTime
   </td>
   <td>The wait time for the conversation in milliseconds.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>isProactiveAgentAssistEnabled
   </td>
   <td>Whether proactive AgentAssist is enabled for the conversation.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>callbackOpted
   </td>
   <td>Whether callback is opted for the conversation.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>contactFlow
   </td>
   <td>Contact flow information for the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>surveyRequired
   </td>
   <td>Whether a survey is required for the conversation.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>isDeveloper
   </td>
   <td>Whether the user is a developer.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>id
   </td>
   <td>The conversation Id.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>userId
   </td>
   <td>The ID of the user associated with the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>source
   </td>
   <td>The source of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>botSessionId
   </td>
   <td>The ID of the bot session associated with the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>keyIntentName
   </td>
   <td>The key intent for the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>keyIntentUserInput
   </td>
   <td>The user input associated with the key intent for the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>agentDesktopMeta
   </td>
   <td>Additional metadata related to the agent desktop.
   </td>
   <td>object
   </td>
  </tr>
  <tr>
   <td>conversationType
   </td>
   <td>The type of conversation (for example, messaging).
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>priority
   </td>
   <td>The priority level of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>queues
   </td>
   <td>Queue details for the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>startTime
   </td>
   <td>The start time of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>endTime
   </td>
   <td>The end time of the conversation
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>formData
   </td>
   <td>Form data associated with the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>timestampValue
   </td>
   <td>The timestamp value of the conversation.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>createdAt
   </td>
   <td>The creation time of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>updatedAt
   </td>
   <td>Last updated time of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>skills
   </td>
   <td>The skills associated with the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>acceptedAt
   </td>
   <td>The time when the conversation was accepted.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>notes
   </td>
   <td>Notes associated with the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>dispositions
   </td>
   <td>Disposition details for the conversation.
   </td>
   <td>object
   </td>
  </tr>
  <tr>
   <td>userInfo
   </td>
   <td>User information associated with the conversation.
   </td>
   <td>object
   </td>
  </tr>
</table>