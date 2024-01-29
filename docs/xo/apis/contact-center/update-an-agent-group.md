# Update an Agent Group

To update a particular agent group with the given Stream Id and Agent Group Id.

<table>
  <tr>
   <td>Method
   </td>
   <td>PUT
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/agent-groups/{{id}}</code>
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
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>BotId or StreamId. You can access it from the General Settings page of the bot.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>id
   </td>
   <td>The Agent Group id.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request POST \
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agent-groups/{{id}}'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
      --data-raw '
     {
      "name": "US West Coast team",
      "description": "US west coast team handles west side.",
      "managers": [
        {
            "userId": "u-cc128d1c-a846-5acb-b075-9fc49a73xxxx",
            "accessLevel": "full"
        }
      ]
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
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>description
   </td>
   <td>A brief description of the agent Group up to 50 characters long.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>managers
   </td>
   <td>An Array of Objects with the following details
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>userId
   </td>
   <td>The User Id.
Example: u-cc128d1c-a846-5acb-b075-9fc49a738a04
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>accessLevel
   </td>
   <td>The access level can be:
[full, view]
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Response

```
{
    "name": "US West Coast team",
    "description": "US west coast team handles west side.",
    "managers": [
        {
            "userId": "u-cc128d1c-a846-5acb-b075-9fc49a73xxxx",
            "accessLevel": "full"
        }
    ]
}
```