# Hooks API for Internal Transfers

This API supports internal transfer events, reducing reliance on UI socket events. It captures transfer data initiated outside the UI, sends via API payloads, and displays in the Agent AI widget.

| Method         | POST |
|-------------------|-----------|
| Endpoint       | `https://{{host}}/api/v1/hooks/{{botId}}` |
| Content Type   | `application/json` |
| Authorization  | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md/#generating-the-jwt-token){:target="_blank"} |

### Path Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>host</code>
   </td>
   <td>Yes
   </td>
   <td>The environment URL. For example, <code>https://platform.kore.ai</code>.
   </td>
  </tr>
  <tr>
   <td><code>botId</code>
   </td>
   <td>Yes
   </td>
   <td>Unique identifier of the bot.
   </td>
  </tr>
</table>

### Sample Request

```
curl --location 'https://{{host}}//agentassist/api/v1/hooks/st-3e81xxxx-4e3c-514b-a551-7d0c9c8xxxxx' \
--header 'Content-Type: application/json' \
--header 'token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTYzNjNmY2JiLTMxMGUtNWIwNy05MWE5LWM2MTRjZDNjYmY2ZSJ9.H-JGmnWDBm2mFIw_PoMLQ5WLTPT_9-iFFPTLrHxxxxx' \
--data '{
   "conversationId": "atesta-mejwi330",
   "botId": "st-3e814314-4e3c-514b-a551-7d0c9c8xxxxx",
   "events": [
       {
           "name": "INTERNAL_TRANSFER_EVENT",
           "transfertype": "NA",
           "transition": "entry",
           "isExtAD": "true",
           "language": "language",
           "experience": "chat",
           "participant": {
               "identity": "731hssad",
               "name": "Agent ai",
               "type": "agent"
           }
       }
   ]
}'
```

### Request Body Fields

<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>conversationId
   </td>
   <td>string
   </td>
   <td>Yes
   </td>
   <td>Unique identifier of the conversation.
   </td>
  </tr>
  <tr>
   <td>botId
   </td>
   <td>string
   </td>
   <td>Yes
   </td>
   <td>Unique identifier of the bot handling the transfer.
   </td>
  </tr>
  <tr>
   <td>events
   </td>
   <td>array
   </td>
   <td>Yes
   </td>
   <td>Contains the transfer event details.
   </td>
  </tr>
  <tr>
   <td>transfertype
   </td>
   <td>string
   </td>
   <td>Yes
   </td>
   <td>Specifies the type of transfer. Example values are NA, COLD, and WARM.
   </td>
  </tr>
  <tr>
   <td>transition
   </td>
   <td>string
   </td>
   <td>Yes
   </td>
   <td>Defines the transition state of the event. Common values are entry and exit.
   </td>
  </tr>
  <tr>
   <td>participant
   </td>
   <td>object
   </td>
   <td>Yes
   </td>
   <td>Contains participant details such as identity, name, and type. It helps to pass agent ID and Name.
   </td>
  </tr>
</table>

### Sample Response

if the request is successful, you get a ```success response (200 OK).
```