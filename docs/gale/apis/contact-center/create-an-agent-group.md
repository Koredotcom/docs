# Create an Agent Group

To add an agent with the given Stream Id.

<table>
  <tr>
   <td>Method
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/agent-groups</code>
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
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td> String, Required
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>BotId or StreamId. You can access it from the General Settings page of the bot.
   </td>
   <td> String, Required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request POST \
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agent-groups'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
      --data-raw '
     {
      "name": "US West Coast team",
      "description": "US west coast team handles west side.",
     }'
```

## Body Parameters

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
   <td>name
   </td>
   <td>Name of the Agent Group up to 50 characters long.
   </td>
   <td> String, Required
   </td>
  </tr>
  <tr>
   <td>description
   </td>
   <td>A brief description of the agent Group up to 50 characters long.
   </td>
   <td> String, Required
   </td>
  </tr>
</table>

## Sample Response

```
{
    "name": "US West Coast team",
    "description": "US west coast team handles west side.",
}
```