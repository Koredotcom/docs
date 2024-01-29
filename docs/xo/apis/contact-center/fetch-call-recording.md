# Fetch Call Recording

To retrieve the recording of a specific call using either the `userId` or `sessionId`.

<table>
  <tr>
   <td>Method
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td>Endpoints
   </td>
   <td><code>https://{{host}}/api/public/bot/{{BotID}}/recordings?{{userId}}</code>
<code>https://{{host}}/api/public/bot/{{BotID}}/recordings?{{sessionId}}</code>
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
   <td>SmartAssist Recordings
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
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>BotId or StreamId. You can access it from the General Settings page of the bot.
   </td>
   <td>string, required
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
   <td>userId
   </td>
   <td>The ID of the user whose conversation history will be accessed. It can be a user email id or an enterprise-assigned unique id.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>sessionId
   </td>
   <td>The unique identifier for the session record.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Requests

```
curl --location --request GET '{{host}}/api/1.1/public/bot/{{BotID}}/recordings?userId={{userId}}' \
--header 'auth: {{JWT_TOKEN}}'
curl --location --request GET '{{host}}/api/1.1/public/bot/{{BotID}}/recordings?sessionId={{sessionId}}' \
--header 'auth: {{JWT_TOKEN}}'
```



## **Sample Response**


```
{
    "recording": [
        "data:audio/wav;base64,{encodedFileInTheSpecifiedFormat}"
    ]
}
```