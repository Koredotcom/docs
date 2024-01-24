# Create a Skill Group

To add a Skill Group with the given Stream Id.

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
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups</code>
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
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
      --data-raw '{
      "name": "Premium Subscriptions",
      "description": "Skill Group For Premium SubScriptions.",
      "color": "#0f0f0f"
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
   <td>Color id of the color you want for the skill group up to 200 characters.
<p>
Example: sg-4372
   </td>
   <td>String, Optional
   </td>
  </tr>
</table>

## Sample Response

```
 {
    "id": "620b814ca2344f1caa8cec99",
    "name": "Account Management",
    "description": "Manage Account and its Settings",
    "color": "#f0f0f0"
}
```