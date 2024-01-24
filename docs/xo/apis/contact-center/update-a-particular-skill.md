# Update a Particular Skill

To update the particular skill with the given Stream Id, Skill Group Id, and Skill Id.

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
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{skillGroupId}}/skills/{skillId}</code>
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
curl --location --request PUT\
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{skillGroupId}}/skills/{skillId}'
     --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
      --data-raw '{
    "name": "Account Management",
    "description": "Manage Account and its Settings",
    "agents": [
        {
            "userId": "u-122x",
            "proficiencyLevel": "high",
            "firstName": "test",
            "lastName": "test",
            "email": "username@domain.com"
        }
    ],
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
   <td>Name of the skill.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>description
   </td>
   <td>Brief description of the skill up to 200 characters.
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>skillGroupId
   </td>
   <td>Id of the skill Group, which you can find with <a href="https://docs.kore.ai/smartassist/api/get-a-skill-group/">GET /skill-groups</a>.
Example: sg-4372
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>agents
   </td>
   <td>An array of Objects with the following details
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>userId
   </td>
   <td>This is the user Id that you can find with <a href="https://docs.kore.ai/smartassist/api/list-all-agents/">GET /agents</a> .
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>proficiencyLevel
   </td>
   <td>The Proficiency level can be:
expert, novice, average, good
Example: ‘expert’
   </td>
   <td>String, Optional
   </td>
  </tr>
</table>

## Sample Response

```
 {
    "id": "sk-87679",
    "name": "Account Management",
    "description": "Manage Account and its Settings",
    "agents": 15,
    "skillGroupId": "sg-4372"
   }
```