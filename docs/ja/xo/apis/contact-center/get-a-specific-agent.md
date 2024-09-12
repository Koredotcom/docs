# Get a Specific Agent

To retrieve the details of a particular agent with the given stream Id and agent Id.

| **Method**   | GET                                                               |
|----------|-------------------------------------------------------------------|
| **Endpoint** | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{agentId}}` |
| **Content Type** | `application/json`                                             |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope** | SmartAssist Analytics                                           |

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                                      | **TYPE**           |
|-----------|------------------------------------------------------------------|----------------|
| host      | Environment URL, for example, https://platform.kore.ai       | string, required |
| StreamId  | BotId or StreamId. You can access it from the General Settings page of the bot. | string, required |

## Sample Request

```
curl --location --request GET 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{agentId}}' \
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
```

## Query Parameter

| **PARAMETER** | **DESCRIPTION**                                                                  | **TYPE**           |
|-----------|------------------------------------------------------------------------------|----------------|
| agentId   | The Agent Id of the particular agent whose details are being retrieved. You can get this from agents GET API. | string, required |

## Sample Response

```
{
    "isAccountOwner": false,
    "attachmentsEnabled": true,
    "emojisEnabled": true,
    "status": "ACTIVE",
    "firstName": "agent",
    "lastName": "1",
    "phoneNumber": "1234567890",
    "emailId": "agent_may15@mail.com",
    "customId": "",
    "profImage": "no-avatar",
    "canSupportChat": true,
    "maxChatSupport": 5,
    "roleId": "6457f21044e2ab580af1e011",
    "chatLanguageSupport": [
        {
            "isActive": true,
            "language": "en",
            "proficiency": "expert"
        }
    ],
    "canSupportVoice": false,
    "voiceLanguageSupport": [
        {
            "isActive": false,
            "language": "en",
            "proficiency": "expert"
        }
    ],
    "desktopLayouts": [
        {
            "isDefault": true,
            "id": "ly-a3b06d5-9c8c-476a-917b-0ab45d817021"
        }
    ],
    "fullName": "agent 1",
    "lFullName": "agent 1",
    "userId": "u-edc0304d-05b5-5350-98da-c9748edaxxxx",
    "accountId": "6457f21044e2ab580af1xxxx",
    "createdBy": "u-042a7093-8178-547a-ab50-364a239bxxxx",
    "orgId": "o-0a4dcb56-5d8e-5bfa-86fc-1294e829xxxx",
    "agentGroups": [
        {
            "groupId": "ag-aa690c9-1a2b-4926-aa7e-2511e5e4xxxx",
            "role": "agent",
            "name": "grp2"
        }
    ],
    "lastOnlineAt": "2023-05-19T09:01:26.268Z",
    "createdAt": "2023-05-15T10:38:26.718Z",
    "updatedAt": "2023-05-23T10:20:19.178Z",
    "onlineStatus": "Offline",
    "onlineStatusType": "OFFLINE",
    "id": "a-953e380-2bc1-483a-a823-d9446806xxxx",
    "nickName": "1",
    "role": "Supervisor",
    "skills": [],
    "queues": [
        {
            "id": "qu-d1c05a4-99e5-4688-9156-897c959dxxxx",
            "name": "queueuueue",
            "description": "quieuueue",
            "isPreferredAgent": true
        }
    ]
}
```

## Response Body Parameters

| **PARAMETER**            | **DESCRIPTION**                                                                                   | **TYPE**     |
|----------------------|-----------------------------------------------------------------------------------------------|----------|
| isAccountOwner       | Indicates whether the user is the account owner.                                              | boolean  |
| attachmentsEnabled   | Indicates whether attachments are enabled for the agent.                                       | boolean  |
| emojisEnabled        | Indicates whether emojis are enabled for the agent.                                            | boolean  |
| status               | The status of the agent.                                                                      | string   |
| firstName            | The first name of the agent.                                                                  | string   |
| lastName             | The last name of the agent.                                                                   | string   |
| phoneNumber          | The phone number of the agent.                                                                | string   |
| emailId              | The email ID of the agent.                                                                    | string   |
| customId             | The custom ID associated with the agent.                                                      | string   |
| profImage            | The profile image of the agent.                                                               | string   |
| canSupportChat       | Indicates whether the agent can support chat.                                                  | boolean  |
| maxChatSupport       | The maximum number of chat sessions the agent can support.                                     | integer  |
| roleId               | The ID of the role assigned to the agent.                                                      | string   |
| chatLanguageSupport  | The chat languages supported by the agent.                                                     | array    |
| canSupportVoice      | Indicates whether the agent can support voice calls.                                           | boolean  |
| voiceLanguageSupport | The voice languages supported by the agent.                                                    | array    |
| desktopLayouts       | The desktop layout details of the agent.                                                       | array    |
| fullName             | The full name of the agent.                                                                   | string   |
| lFullName            | The localized full name of the agent.                                                          | string   |
| userId               | The user ID of the agent.                                                                     | string   |
| accountId            | The ID of the account associated with the agent.                                               | string   |
| createdBy            | The ID of the user who created the agent.                                                      | string   |
| orgId                | The ID of the organization associated with the agent.                                           | string   |
| agentGroups          | The agent group details associated with the agent.                                              | array    |
| lastOnlineAt         | The timestamp when the agent was last online.                                                  | string   |
| createdAt            | The creation time of the interaction.                                                          | string   |
| updatedAt            | The last updated time of the interaction.                                                      | string   |
| onlineStatus         | The online status of the agent.                                                               | string   |
| onlineStatusType     | The online status type of the agent.                                                           | string   |
| id                   | The ID of the agent.                                                                          | string   |
| nickName             | The nick name of the agent.                                                                   | string   |
| role                 | The role of the agent.                                                                        | string   |
| skills               | The skills assigned to the agent.                                                              | array    |
| queues               | The queues assigned to the agent.                                                              | array    |