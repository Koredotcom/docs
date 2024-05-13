# Delete Call Recording API

This API is used to delete Voice Call Recordings. The response varies based on whether the execution is successful or not.

<table>
  <tr>
   <td>Method
   </td>
   <td>DELETE
   </td>
  </tr>
  <tr>
   <td>Endpoints
   </td>
   <td><code><a href="https://{{host}}/api/public/bot/{{:streamId}}/v2/recordings">https://{{host}}/api/public/bot/{{:streamId}}/recordings</a></code>
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
<p>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>Delete Recordings
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
   <td>host
   </td>
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>sessionId
   </td>
   <td>You can access it from the Conversation Logs.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request DELETE 'https://bots.kore.ai/api/1.1/public/bot/st-b110e148-7428-5295-960b-099e8167xxxx/recordings?sessionId=6627b9adb9af28711b78xxxx' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTQ0YTIzOTNmLTk4MTEtNWY3Mi04NGUyLTM0YTY4MzI4N2I1ZCJ9.kW9tN1gTUW7QjFrHvwBp-EcRu8QhBK223Xi2NgZxxxx'
```

## Sample Request

```
{
   "message": "Call recordings deleted successfully",
   "sessionId": "65fada548c712ee0552fxxxx"
}
```