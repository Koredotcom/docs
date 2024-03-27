# Update a Skill Group

To update the particular skill group with the given Stream Id and Skill Group Id.

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
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{id}}</code>
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
</table>

## Sample Request

```
curl --location --request POST \
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{id}}'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
      --data-raw '{
      "name": "Account Management",
      "description": "Manage Account and its Settings",
      "color": "#f0f0f0"
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
   <td>id
   </td>
   <td>Id of the skill Group which you can find with <a href="https://docs.kore.ai/smartassist/api/get-a-skill-group/">GET /skill-groups</a>.
Example:620b814ca2344f1caa8cec99
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>name
   </td>
   <td>Name of the skill Group.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>description
   </td>
   <td>Brief description of the skill group up to 200 characters.
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>color
   </td>
   <td>Color id of the color you want for skill group up to 200 characters.
Example : sg-4372
   </td>
   <td>String, Optional
   </td>
  </tr>
</table>

## Sample Response

```
 {
    "id": "620b814ca2344f1caa8cxxxx",
    "name": "Account Management",
    "description": "Manage Account and its Settings",
    "color": "#f0f0f0"
  }
```