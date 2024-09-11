# Delete a Skill Group

To delete the particular skill group with the given Stream Id and Skill Group Id.

| **Method**       | DELETE                                                         |
|------------------|----------------------------------------------------------------|
| **Endpoint**     | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{id}}` |
| **Content Type** | `application/json`                                             |
| **Authorization**| `auth: {{JWT}}` <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**    | SmartAssist Analytics                                          |

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                               | **TYPE**        |
|---------------|---------------------------------------------------------------|-----------------|
| host          | Environment URL, for example, https://platform.kore.ai     | string, required |
| BotId         | BotId or StreamId. You can access it from the General Settings page of the bot. | string, required |
| id            | The skill group id.                                           | string, required |

## Sample Request

```
curl --location --request DELETE \
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/skill-groups/{{id}}' \
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
```