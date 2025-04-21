# Control Transcription API

This API is used to control the transcription session of a bot conversation. It lets you end an ongoing transcription session by sending the appropriate action.

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
   <td><code>https://{{host}}/api/1.1/public/bot/{botid}/control/transcription?conversationId={conversationId}</code>
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
<br>
See <a href="https://developer.kore.ai/docs/bots/api-guide/apis/#Generating_the_JWT_Token">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>AgentAssist Transcription
   </td>
  </tr>
</table>

## Path Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Required/Optional</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Required
   </td>
   <td>Environment URL, for example, <code>https://platform.kore.ai</code>
   </td>
  </tr>
  <tr>
   <td>botId
   </td>
   <td>Required
   </td>
   <td>Unique ID of the bot
   </td>
  </tr>
</table>

## Query Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Required/Optional</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>conversationId
   </td>
   <td>Required
   </td>
   <td>Unique identifier of the bot conversation
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/api/1.1/public/bot/st-4b8bb9d0-096d-56e5-b72f-f43ecf1xxxxx/control/transcription?conversationId=CAe8a34d2556235bcf0cbc51e98bbxxxxx' \
--header 'auth: {{JWT_TOKEN}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer xxxxOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTUxNjIzOTAyMiwiYXBwSWQiOiJjcy0zMWVhZDc5Zi0xNDhlLTVmZDUtOTdlNC1mZmI0ZmZjY2FhOTAifQ.b4eBlpjTEkywayWzmgXf-PeKC-6-suxxxxx' \
--data '{
    "action": "end"
}
'
```

## Body Parameters

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
   <td>action
   </td>
   <td>The control action to be performed. In this case, the value must be <code>"end"</code> to terminate the transcription session.
   </td>
   <td>Required
   </td>
  </tr>
</table>

## Sample Response

```
{
    "status": "success"
}
```