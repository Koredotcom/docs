# Get Conversation Details API

This API retrieves detailed information about a specific conversation session. It provides participant details, transfer history, queue activity, conversation status, notes, and dispositions.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{botId}}/conversations/sessions/{{sessionId}}</code>
   </td>
  </tr>
  <tr>
   <td><strong>Content-Type</strong>
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
</table>

## Path Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Environment URL, for example, https://platform.kore.ai
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>botId
   </td>
   <td>Unique Bot ID (for example: <code>st-da6627e6-bb55-5e2f-80d3-92220e02xxxx</code>)..
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>sessionId
   </td>
   <td>Parent App Session ID (for example: <code>68a95e70fe5b8e806f8exxxx</code>).
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request GET 'https://{{host}}/agentassist/api/v1/public/{{botId}}/conversations/sessions/{{sessionId}}' \
--header 'accept: application/json, text/plain, */*' \
--header 'accept-language: en-US,en;q=0.9' \
--header 'accountid: {{accountId}}' \
--header 'app-language: en' \
--header 'content-type: application/json;charset=UTF-8' \
--header 'referer: https://staging-smartassist.kore.ai/smartassist/config/queues' \
--header 'auth: <JWT-token>' \
--data '{
    "startDate":"2024-10-24",
    "endDate":"2024-10-28",
    "timeZoneOffset": -330
}'
```

## Headers

<table>
  <tr>
   <td><strong>Header</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
  </tr>
  <tr>
   <td><code>accept</code>
   </td>
   <td>Supported response type. Must be <code>application/json</code>.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td><code>accountid</code>
   </td>
   <td>Identifies the customer account.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td><code>content-type</code>
   </td>
   <td>Content type of the request. Must be <code>application/json;charset=UTF-8</code>.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Request Body Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
  </tr>
  <tr>
   <td><code>startDate</code>
   </td>
   <td>Start date filter in <code>YYYY-MM-DD</code> format.
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td><code>endDate</code>
   </td>
   <td>End date filter in <code>YYYY-MM-DD</code> format.
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td><code>timeZoneOffset</code>
   </td>
   <td>Time zone offset in minutes (for IST use <code>-330</code>).
   </td>
   <td>Number, Optional
   </td>
  </tr>
</table>

## Sample Response

```
{
  "_id": "c-ab4eb09-8dba-4db8-9176-b0ee670dxxxx",
  "participants": [
    {
      "queueId": "qu-a8203c2-aee7-4aa0-bb95-64e5c17exxxx",
      "queueStartTime": "2025-08-23T06:23:45.100Z",
      "queueName": "Default Queue",
      "agentId": "u-4149b5e5-9bbd-502d-b0ab-bfbd01d6xxxx",
      "name": "SmartAssist QA",
      "status": "INACTIVE",
      "assignedAt": "2025-08-23T06:23:45.595Z",
      "startTimeStamp": "2025-08-23T06:23:55.593Z",
      "conversationTransferred": true,
      "reason": "OVERDUE",
      "endTimeStamp": "2025-08-23T06:27:13.724Z"
    },
    {
      "queueId": "qu-a8203c2-aee7-4aa0-bb95-64e5c17exxxx",
      "queueStartTime": "2025-08-23T06:27:13.707Z",
      "queueName": "Default Queue",
      "agentId": "u-4149b5e5-9bbd-502d-b0ab-bfbd01d6xxxx",
      "name": "SmartAssist QA",
      "status": "ACTIVE",
      "assignedAt": "2025-08-23T06:33:49.658Z",
      "startTimeStamp": "2025-08-23T06:33:52.136Z",
      "endTimeStamp": "2025-08-23T06:33:54.960Z",
      "endedChat": true
    }
  ],
  "transferDetails": [
    {
      "fromQueue": "qu-a8203c2-aee7-4aa0-bb95-64e5c17exxxx",
      "transferredByAgentName": "SmartAssist QA",
      "transferredType": "QUEUE",
      "transferredTo": [
        {
          "id": "qu-a8203c2-aee7-4aa0-bb95-64e5c17exxxx",
          "name": "Default Queue",
          "type": "QUEUE"
        }
      ],
      "priority": "HIGHEST",
      "transferredAt": "2025-08-23T06:27:13.707Z",
      "systemTransferReason": "OVERDUE",
      "systemTransfer": true
    }
  ],
  "conversationType": "livechat",
  "status": "CLOSED",
  "summary": [
    "The customer was initially connected ... highest priority. The customer was asked to stand by while being transferred to the new queue."
  ],
  "dispositions": {
    "status": "Resolved",
    "remarks": "The customer was initially connected ... advising the customer to reach out again if further assistance is needed.",
    "dispositionSets": [
      { "dispositionsSet": "Resolution", "dispositionCodes": "Resolved" },
      { "dispositionsSet": "Custom", "dispositionCodes": "ThroughWeb" }
    ],
    "metaStatus": "AGENT_CLOSED"
  },
  "userInfo": {
    "firstName": "Test",
    "lastName": "User",
    "email": "Test.user@test.com",
    "phoneNumber": "9999999999",
    "activationStatus": "active"
  }
}
```

## Response Body Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
  </tr>
  <tr>
   <td>
<code>_id</code>

   </td>
   <td>
Unique conversation ID.
   </td>
   <td>
String
   </td>
  </tr>
  <tr>
   <td>
<code>participants</code>
   </td>
   <td>
List of agents or participants in the conversation.
   </td>
   <td>
Array
   </td>
  </tr>
  <tr>
   <td>
<code>transferDetails</code>
   </td>
   <td>
Details of conversation transfer between queues/agents.
   </td>
   <td>
Array
   </td>
  </tr>
  <tr>
   <td>
<code>conversationType</code>
   </td>
   <td>
Type of conversation (for example: <code>livechat</code>).
   </td>
   <td>
String
   </td>
  </tr>
  <tr>
   <td>
<code>status</code>
   </td>
   <td>
Current conversation status (for example: <code>CLOSED</code>).
   </td>
   <td>
String
   </td>
  </tr>
  <tr>
   <td>
<code>summary</code>
   </td>
   <td>
Generated summary of the conversation.
   </td>
   <td>
Array
   </td>
  </tr>
  <tr>
   <td>
<code>dispositions</code>
   </td>
   <td>
Contains final status, remarks, and disposition codes.
   </td>
   <td>
Object
   </td>
  </tr>
  <tr>
   <td>
<code>userInfo</code>
   </td>
   <td>
End-user profile details including name, email, phone, and status.
   </td>
   <td>
Object
   </td>
  </tr>
  <tr>
   <td>
<code>notes</code>
   </td>
   <td>
Internal agent notes captured during the conversation.
   </td>
   <td>
Array
   </td>
  </tr>
</table>