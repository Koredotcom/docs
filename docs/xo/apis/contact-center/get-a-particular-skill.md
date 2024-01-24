# Get a Particular Skill

To retrieve the details of a particular skill with the given Stream Id, Skill Group Id, and Skill Id.

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
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{skillGroupId}}/skills/{{skillId}}</code>
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
  <tr>
   <td>skillId
   </td>
   <td>Id of the Skill.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request GET\
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{skillGroupId}}/skills/{{skillId}}'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
```

## Sample Response

```
{
    "status": "ACTIVE",
    "name": "Account Management23",
    "description\"": "Manage Account",
    "skillGroupId": "606ac00ad75b272c78a15a07",
    "agents": [
        {
            "userId": "u-c7b23565-7e83-5099-8f26-f0a41a969f1a",
            "skillId": "607046a3630c9f077af51802",
            "createdBy": "u-c7b23565-7e83-5099-8f26-f0a41a969f1a",
            "orgId": "o-da05dbea-6573-5399-ba58-22035a3122f3",
            "proficiencyLevel": "high",
            "createdAt": "2021-04-09T12:20:51.246Z",
            "updatedAt": "2021-04-09T12:20:51.246Z",
            "id": "607046a3630c9f077af51803",
            "firstName": "Ravi",
            "lastName": "Kumar",
            "emailId": "ravi2@domain.com"
        }
    ],
    "createdBy": "u-c7b23565-7e83-5099-8f26-f0a41a969f1a",
    "createdAt": "2021-04-09T12:20:51.216Z",
    "updatedAt": "2021-04-09T12:20:51.216Z",
    "id": "607046a3630c9f077af51802"
}
```