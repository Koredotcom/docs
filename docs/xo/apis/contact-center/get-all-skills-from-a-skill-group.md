# Get All Skills from a Skill Group

To retrieve the list of skills with the given Stream Id and Skill Group Id.

<table>
  <tr>
   <td>Method
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{skillGroupId}}/skills</code>
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
   <td>skillGroupId
   </td>
   <td>Id of the Skill Group.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Request


```
curl --location --request GET\
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{skillGroupId}}/skills'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
```

## Sample Response

```
{
    "results": [
        {
            "id": "sk-87679",
            "name": "Account Management",
            "description": "Manage Account and its Settings",
            "agents": 15,
            "skillGroupId": "sg-4372"
        }
    ],
    "page": 1,
    "limit": 10,
    "hasMore": true,
    "totalPages": 1,
    "totalResults": 1
}
```