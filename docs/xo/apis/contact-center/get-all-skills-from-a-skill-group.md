# Get All Skills from a Skill Group

To retrieve the list of skills with the given `IId` and `SkillGroupId`.

| **Method**        | GET                                    |
|---------------|----------------------------------------|
| **Endpoint**      | `https://{{host}}/agentassist/api/v1/public/{{IId}}/skill-groups/{{skillGroupId}}/skills` |
| **Content Type**  | `application/json`                     |
| **Authorization** | `auth: {{JWT}}`   <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token)                     |
| **API Scope**     | SmartAssist Analytics                  |

## Path Parameters

| **PARAMETER**     | **DESCRIPTION**                                                      | **TYPE**         |
|---------------|------------------------------------------------------------------|--------------|
| host          | Environment URL, for example, https://platform.kore.ai        | string, required |
| IId         | The application ID. | string, required |
| skillGroupId  | Id of the Skill Group.                                           | string, required |

## Sample Request

```
curl --location --request GET 'https://{{host}}/agentassist/api/v1/public/{{IId}}/skill-groups/{{skillGroupId}}/skills' \
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