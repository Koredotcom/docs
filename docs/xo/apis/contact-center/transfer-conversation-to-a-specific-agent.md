# Transfer Conversation To a Specific Agent

To retrieve the recording of a specific call using either the `userId` or `sessionId`.To transfer a conversation to a specific agent with the given `botSessionId` and `aId` (agent Id). Specific messages based on success or failure to transfer conversation are posted to the given `callbackUrl`.

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
   <td><code><a href="https://{{host}}/agentassist/api/v1/public/%7BstreamID%7D/assign-conversation">https://{{host}}/agentassist/api/v1/public/{streamID}/assign-conversation</a></code>
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
   <td>Routing
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
   <td>streamId
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
   <td>callbackUrl
   </td>
   <td>The URL in which message is posted. For example: http://localhost:8009
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>orgId
   </td>
   <td>The orgId of the organization. For example: o-fbfa482a-bf65-5386-963e-f00a8cc7xxxx
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>aId
   </td>
   <td>The agent ID of the target agent. For example: a-220172c-856e-4db6-a2d1-d4c2dabexxxx
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>botSessionId
   </td>
   <td>The session ID of the bot. For example: 653a06c9aae89c5fbb4exxxx
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Requests

```
curl --location 'http://localhost/agentassist/api/v1/public/st-a0ec5267-a58a-5fbb-ab0e-e27ebc35xxxx/assign-conversation' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTUwZmViYWEzLTc0M2YtNTViMy04OTU2LTcxOGU5NmY2YmI5MCJ9.
W42GSwz5ibjk_vAx5Ukr_Q5Q4-O_zGn_jPmZuN8xxxx' \
--header 'accountid: 650d9eb6da96d0bc0d23xxxx' \
--header 'Content-Type: application/json' \
--data '{
"callbackUrl": "http://localhost:8009",
"orgId": "o-02c0d56d-fd90-5e24-8458-01be1d2exxxx",
"aId": "a-8cd2673-0cb7-462d-9453-0ee60e52xxxx",
"botSessionId": "6538f8a3c9cf425ee5cfxxxx"
}'
```

## Sample Response

```
{
sessionId: "6538f8a3c9cf425ee5cfxxxx",
agentId: "a-8cd2673-0cb7-462d-9453-0ee60e52xxxx",
status: "transferred",
requestCompletedAt: 1698825180041
}
```