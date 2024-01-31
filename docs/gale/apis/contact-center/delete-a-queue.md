# Delete a Queue

To delete a specific queue with the given  `streamId` and `queueId`.

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
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/queues/{id}</code>
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
   <td>Configuration
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
   <td>botId
   </td>
   <td>botId or streamId. You can access it from the General Settings page of the bot.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>id
   </td>
   <td>Can be taken from the /queues GET api.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request DELETE 'http://smartassist.kore.ai/agentassist/api/v1/public/st-0aae83f7-49c7-58c8-921a-29d84d03xxxx/queues' \
--header 'accept: application/json' \
--header 'accountId: 64dc99337ac0b4d3d684exxx' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTdlZjBkY2IwLTQ1ZTItNTY3YS1hYzMyLTkwNTA1NzdmMWIyYiJ9.7t145BjU0eZDdlnXYazmqkVT-8WpDIUgCquQM0Uxxxx' \
--header 'Content-Type: application/json' \
--data ''
```