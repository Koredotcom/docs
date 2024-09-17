# Delete a Skill from a Particular Skill Group

To delete the particular skill with the given Stream Id and Agent Id.

| **METHOD**   | **DELETE**                                                                                   |
|--------------|---------------------------------------------------------------------------------------------|
| **Endpoint** | `<code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{skillGroupId}}/skills/{{skillId}}</code>` |
| **Content Type** | `<code>application/json</code>`                                                            |
| **Authorization** | `<code>auth: {{JWT}}</code>` <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope** | SmartAssist Analytics                                                                       |

## Path Parameters

| **PARAMETER**   | **DESCRIPTION**                                                                                           | **TYPE**        |
|----------------|-----------------------------------------------------------------------------------------------------------|-----------------|
| host           | Environment URL, for example, https://platform.kore.ai                                                 | string, required |
| BotId          | BotId or StreamId. You can access it from the General Settings page of the bot.                            | string, required |
| skillGroupId   | Id of the Skill Group.                                                                                     | string, required |
| skillId        | Id of the Skill.                                                                                           | string, required |

## Sample Request


```
curl --location --request DELETE \
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{skillGroupId}}/skills/{{skillId}}' \
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
```