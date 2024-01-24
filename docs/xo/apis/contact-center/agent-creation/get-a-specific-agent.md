# Get a Specific Agent

To retrieve the details of a particular agent with the given stream Id and agent Id.

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
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{agentId}}</code>
   </td>
  </tr>
  <tr>
   <td>Content-Type
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
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>StreamId
   </td>
   <td>BotId or StreamId. You can access it from the General Settings page of the bot.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request GET\
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{agentId}}'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
```

## Query Parameter

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
   <td>agentId
   </td>
   <td>The Agent Id of the particular agent whose details are being retrieved. You can get this from agents GET API.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

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
    "userId": "u-edc0304d-05b5-5350-98da-c9748eda79f9",
    "accountId": "6457f21044e2ab580af1dff6",
    "createdBy": "u-042a7093-8178-547a-ab50-364a239b2226",
    "orgId": "o-0a4dcb56-5d8e-5bfa-86fc-1294e829f62e",
    "agentGroups": [
        {
            "groupId": "ag-aa690c9-1a2b-4926-aa7e-2511e5e414d1",
            "role": "agent",
            "name": "grp2"
        }
    ],
    "lastOnlineAt": "2023-05-19T09:01:26.268Z",
    "createdAt": "2023-05-15T10:38:26.718Z",
    "updatedAt": "2023-05-23T10:20:19.178Z",
    "onlineStatus": "Offline",
    "onlineStatusType": "OFFLINE",
    "id": "a-953e380-2bc1-483a-a823-d9446806cc93",
    "nickName": "1",
    "role": "Supervisor",
    "skills": [],
    "queues": [
        {
            "id": "qu-d1c05a4-99e5-4688-9156-897c959d68b3",
            "name": "queueuueue",
            "description": "quieuueue",
            "isPreferredAgent": true
        }
    ]
}
```

## Response Body Parameters

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
   <td>isAccountOwner
   </td>
   <td>Indicates whether the user is the account owner.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>attachmentsEnabled
   </td>
   <td>Indicates whether attachments are enabled for the agent.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>emojisEnabled
   </td>
   <td>Indicates whether emojis are enabled for the agent.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>status
   </td>
   <td>The status of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>firstName
   </td>
   <td>The first name of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>lastName
   </td>
   <td>The last name of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>phoneNumber
   </td>
   <td>The phone number of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>emailId
   </td>
   <td>The email ID of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>customId
   </td>
   <td>The custom ID associated with the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>profImage
   </td>
   <td>The profile image of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>canSupportChat
   </td>
   <td>Indicates whether the agent can support chat.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>maxChatSupport
   </td>
   <td>The maximum number of chat sessions the agent can support.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>roleId
   </td>
   <td>The ID of the role assigned to the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>chatLanguageSupport
   </td>
   <td>The chat languages supported by the agent.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>canSupportVoice
   </td>
   <td>Indicates whether the agent can support voice calls.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>voiceLanguageSupport
   </td>
   <td> The voice languages supported by the agent.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>desktopLayouts
   </td>
   <td>The desktop layout details of the agent.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>fullName
   </td>
   <td>The full name of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>lFullName
   </td>
   <td>The localized full name of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>userId
   </td>
   <td>The user ID of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td> The ID of the account associated with the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>createdBy
   </td>
   <td>The ID of the user who created the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>orgId
   </td>
   <td>The ID of the organization associated with the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>agentGroups
   </td>
   <td>The agent group details associated with the agent.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>lastOnlineAt
   </td>
   <td>The timestamp when the agent was last online.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>createdAt
   </td>
   <td> The creation time of the interaction.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>updatedAt
   </td>
   <td>The last updated time of the interaction.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>onlineStatus
   </td>
   <td>The online status of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>onlineStatusType
   </td>
   <td>The online status type of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>id
   </td>
   <td>The ID of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>nickName
   </td>
   <td>The nick name of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>role
   </td>
   <td>The role of the agent.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>skills
   </td>
   <td>The skills assigned to the agent.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>queues
   </td>
   <td>The queues assigned to the agent.
   </td>
   <td>array
   </td>
  </tr>
</table>