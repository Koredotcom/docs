# Delete an Agent Group

To delete the particular agent group with the given Stream Id and Agent Group Id.

| **Method**       | DELETE                                                                                                  |
|------------------|--------------------------------------------------------------------------------------------------------|
| **Endpoint**     | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/agent-groups/{{id}}`                          |
| **Content Type** | `application/json`                                                                                     |
| **Authorization**| `auth: {{JWT}}` <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**    | SmartAssist Analytics                                                                                  |

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                               | **TYPE**         |
|---------------|---------------------------------------------------------------|------------------|
| host          | Environment URL, for example, https://platform.kore.ai      | string, required |
| BotId         | BotId or StreamId. You can access it from the General Settings page of the bot. | string, required |
| id            | The Agent Group id.                                            | string, required |

## Sample Request

```
curl --location --request DELETE \
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agent-groups/{{id}}' \
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
```

## Sample Response

```
{
    "id": "ag-9d1d5db-06b5-43a5-8a7c-87b12d93xxxx",
    "name": "US West Coast team",
    "description": "US west coast team handles west side",
    "managers": [
        {
            "firstName": "Charlie",
            "lastName": "Harper",
            "emailId": "username@domain.com",
            "accessLevel": "full",
            "skills": [
                {
                    "skillId": "s-21223123",
                    "proficiencyLevel": "expert"
                }
            ]
        }
    ]
}
```