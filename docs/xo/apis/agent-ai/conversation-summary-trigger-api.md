
This API triggers a conversation summary event in the Agent AI system. It is used to send event data related to a conversation to the specified bot.

<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td><code>https://{{host}}/api/v1/public/bot/{{botId}}</code>
   </td>
  </tr>
  <tr>
   <td><strong>Content Type</strong>
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
See <a href="https://developer.kore.ai/docs/bots/api-guide/apis/#Generating_the_JWT_Token">How to generate the JWT Token</a>.
   </td>
  </tr>
</table>

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
   <td>host
   </td>
   <td>Yes
   </td>
   <td>The environment URL. For example, <code>https://platform.kore.ai</code>.
   </td>
  </tr>
  <tr>
   <td>botId
   </td>
   <td>Yes
   </td>
   <td>Bot ID or Stream ID. You can access it from the General Settings page of the bot.
   </td>
  </tr>
</table>

### Sample Request

```
curl --location 'https://huddl-agentassist-dev.kore.ai/agentassist/api/v1/hooks/st-c04e225f-a30b-5a0a-9524-a60ebdba290e' \

--header 'Content-Type: application/json' \

--header 'token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTgyODgxOTVlLTE1YzYtNThiYy04NzBlLTE5OTJmNmQxOGI4NCJ9.g5uslyya9WRcD6M0UOEjR-FUPntrcyNNwInJcX4rGvw' \

--data '{

   "conversationId": "atesta-m03shn6u1",

   "botId": "st-c04e225f-a30b-5a0a-9524-a60ebdba290e",

   "events": [

       {

           "name": "TRIGGER_SUMMARY_EVENT",

           "data": {

               "language": "English",

               "locale": "en",

               "type": "post"

           }

       }

   ]

}

'
```

### Body Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Mandate</strong>
   </td>
  </tr>
  <tr>
   <td><code>conversationId</code>
   </td>
   <td>Unique identifier for the conversation..
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><code>botId</code>
   </td>
   <td>Unique identifier for the bot.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><code>events</code>
   </td>
   <td>List of events to be triggered.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>eventsName
   </td>
   <td>Name of the event. For example, <code>"TRIGGER_SUMMARY_EVENT"</code>.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>eventsData
   </td>
   <td>Additional data for the event.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>eventsDataLanguage
   </td>
   <td>The language of the event. Example: <code>"English"</code>.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>eventsDataLocale
   </td>
   <td>The locale of the event. Example: <code>"en"</code>.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>eventsDataType
   </td>
   <td>Type of the event. Example: <code>"post"</code>.
   </td>
   <td>Required
   </td>
  </tr>
</table>

### Sample Response

```
{
    "STATUS": "OK"
}
