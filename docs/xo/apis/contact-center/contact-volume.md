# Contact Volume API

To retrieve call volume details associated with a specified collection point for a given interval, including fields mapped to specific field names relevant to the Workforce Management (WFM) client.

<table>
  <tr>
   <td>Method
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td>Endpoints
   </td>
   <td><code>https://{{host}}/agentassist/api/public/analytics/account/{{Accountid}}/callvolume</code>
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
<br>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>WFM Integration
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
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>AccountId
   </td>
   <td>The unique Id associated with the account.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/public/analytics/account/636f5b36bcf8a8c7101exxxx/callvolume' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLWNhYzQ3NGEzLTBhYTktNWM2Yi1iMzA2LTMyNjNhM2E1YWQxYSJ9.W5HbU67WJ4YNaWtkZJsyLkxvq8nnK3sHb3StnUCxxxx' \
--header 'Content-Type: application/json' \
--data '{
    "orgId": "o-01aedac2-26fb-5bdb-bb0f-f71292caxxxx",
    "fromTimeStamp": "2023-01-07T09:45:00Z",
    "toTimeStamp": "2023-01-08T10:00:00Z",
    "skip": 0,
    "limit": 2
}'
```

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
   <td>orgId
   </td>
   <td>The organization ID associated with the account.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>fromTimeStamp
   </td>
   <td>Start date and time in ISO format (for example, 2023-01-07T09:45:00Z). \
<strong>Note</strong>: This is only optional if you want to fetch call records starting from the first available record for initial syncs.
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>toTimeStamp
   </td>
   <td>End date and time in ISO format (for example, 2023-01-08T10:00:00Z).
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>skip
   </td>
   <td>The number of results to skip for pagination. The default is 0.
   </td>
   <td>Number, Optional
   </td>
  </tr>
  <tr>
   <td>limit
   </td>
   <td>Specifies the number of contact records to retrieve (for example, 2).
   </td>
   <td>Number, Optional
   </td>
  </tr>
</table>

## Sample Response

```
{
    "hasMore": false,
    "CallVolumeUpdate": [
        {
            "_id": "647868bfc0cf4c7b7671xxxx",
            "intervalStartTimeStamp": "2023-06-01T09:45:00.000Z",
            "orgId": "o-8aa0607b-1d81-504a-9eb2-5a39f133xxxx",
            "queueId": "qu-6c47543-19ca-49ac-a085-2292bba5xxxx",
            "source": "rtm",
            "__v": 0,
            "intervalEndTimeStamp": "2023-06-01T10:00:00.000Z",
            "offeredContacts": 1,
            "answeredContacts": 1,
            "maxQueueHoldTimeAnswered": 34035,
            "queueHoldTimeAnswered": 34035,
            "acwDuration": 3949,
            "completedContacts": 1,
            "conversationHandleTime": 68043,
            "conversationTalkTime": 64094,
            "holdDuration": 0,
            "messageCount": 0,
            "savedMessageCount": 0,
            "csatResponses": 1,
            "csatScore": 1,
            "abandonedContacts": 1,
            "maxqueueHoldTimeAbandoned": 180150,
            "queueHoldTimeAbandoned": 180150,
            "iId": "st-b6ff0557-e54b-5ac1-946f-2b003d9exxxx",
            "queueName": "custom day"
        }
    ],
    "totalCount": 1
}
```

## Body Parameters

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
   <td>hasMore
   </td>
   <td>Indicates if there are more records to fetch.
   </td>
   <td>Boolean
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate
   </td>
   <td>List of objects representing individual call volume updates.
   </td>
   <td>Array
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate._id
   </td>
   <td>Unique identifier for the call volume record.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.intervalStartTimeStamp
   </td>
   <td>Start time of the interval in ISO 8601 format.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.intervalEndTimeStamp
   </td>
   <td>End time of the interval in ISO 8601 format.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.orgId
   </td>
   <td>Organization ID associated with the call volume data.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.queueId
   </td>
   <td>Queue ID where the calls were handled.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.source
   </td>
   <td>The source of the data, for example, "rtm" (real-time monitoring).
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.__v
   </td>
   <td>Version key for the database document. For example, 0.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.offeredContacts
   </td>
   <td>Number of contacts (calls) offered to the queue during the interval.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.answeredContacts
   </td>
   <td>Number of contacts that were answered during the interval.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.maxQueueHoldTimeAnswered
   </td>
   <td>Maximum hold time in seconds for answered contacts.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.queueHoldTimeAnswered
   </td>
   <td>Total queue hold time in seconds for answered contacts.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.acwDuration
   </td>
   <td>After-call work duration in seconds.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.completedContacts
   </td>
   <td>Number of contacts that were completed during the interval.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.conversationHandleTime
   </td>
   <td>Total handle time of the conversation in seconds.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.conversationTalkTime
   </td>
   <td>Total talk time during the conversation in seconds.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.holdDuration
   </td>
   <td>Total hold duration in seconds during the call.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.messageCount
   </td>
   <td>Number of messages exchanged during the conversation.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.savedMessageCount
   </td>
   <td>Number of messages that were saved during the conversation.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.csatResponses
   </td>
   <td>Number of Customer Satisfaction (CSAT) survey responses collected.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.csatScore
   </td>
   <td>CSAT score from customer feedback. (for example, 4).
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.abandonedContacts
   </td>
   <td>Number of contacts that were abandoned during the interval.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.maxqueueHoldTimeAbandoned
   </td>
   <td>Maximum hold time in seconds for abandoned contacts.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.queueHoldTimeAbandoned
   </td>
   <td>Total queue hold time in seconds for abandoned contacts.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.iId
   </td>
   <td>Unique instance ID for tracking the call or interaction.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>CallVolumeUpdate.queueName
   </td>
   <td>Name of the queue where the call or interaction took place.
   </td>
   <td>String
   </td>
  </tr>
</table>