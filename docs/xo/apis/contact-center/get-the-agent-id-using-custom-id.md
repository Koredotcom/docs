# Get the Agent ID Using the Custom ID

To get the agent ID associated with a Custom ID (extension number).

!!! Note

    An Agent ID will be returned if it is mapped one-to-one with the custom ID. In scenarios where the organization has multiple agent IDs for the same custom ID, it will return an array of agent IDs.

| **METHOD**   | GET                                                                                   |
|--------------|---------------------------------------------------------------------------------------------|
| **Endpoint** | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{customId}}` |
| **Content-Type** | `application/json` |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token.](https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token) |
| **API Scope** | Configuration |

## Path Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Environment URL, for example, https://platform.kore.ai
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>streamId
   </td>
   <td>BotId or StreamId. You can access it from the bot's General Settings page.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>customId
   </td>
   <td>The Agent’s ID from the customer’s system
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{customId}}' \
--header 'auth: {jwt}' \
--header 'Content-Type: application/json' \
--header 'accountId: {{accountId}}'
```

## Headers

<table>
  <tr>
   <td><strong>Header</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Required/Optional</strong>
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>The account ID associated with the API request.
   </td>
   <td>required
   </td>
  </tr>
  <tr>
   <td>auth
   </td>
   <td>JWT token for authentication.
   </td>
   <td>required
   </td>
  </tr>
</table>

## Sample Response

```
[
    {
        "firstName": "fdsa",
        "lastName": "Geller",
        "fullName": "fdsa Geller",
        "lFullName": "fdsa geller",
        "emailId": "x@yopmail.com",
        "nickName": "",
        "profImage": "no-avatar",
        "phoneNumber": "",
        "userId": "u-fa49c902-2c47-58d7-b61b-d00777dcxxxx",
        "accountId": "671103693114e02715cexxxx",
        "isAccountOwner": true,
        "orgId": "o-c8b351ff-6b3c-5769-afea-1a0adaf4xxxx",
        "agentGroups": [
            {
                "groupId": "ag-836c397-9ba0-4cac-9930-e29819c3xxxx",
                "accessLevel": "full",
                "role": "manager",
                "name": "Default Group"
            }
        ],
        "canSupportChat": true,
        "canSupportCase": false,
        "chatLanguageSupport": [
            {
                "language": "en",
                "proficiency": "expert",
                "isActive": true
            }
        ],
        "canSupportVoice": true,
        "voiceLanguageSupport": [
            {
                "language": "en",
                "proficiency": "expert",
                "isActive": true
            }
        ],
        "attachmentsEnabled": true,
        "emojisEnabled": true,
        "createdBy": "u-fa49c902-2c47-58d7-b61b-d00777dcxxxx",
        "status": "ACTIVE",
        "hoursOfOperationId": "677f7728c14c0b208a81xxxx",
        "roleId": "671103693114e02715cexxxx",
        "onlineStatus": "Offline",
        "onlineStatusType": "OFFLINE",
        "iId": "st-240f7943-fcb7-565e-ac83-e3c353cdxxxx",
        "createdByAId": "a-8b67d6c-db44-4806-ba3a-96605aeaxxxx",
        "preferences": {
            "theme": "light"
        },
        "desktopLayouts": [
            {
                "id": "ly-d87a5e8-c5bb-4e2a-9792-adacedd0xxxx",
                "isDefault": true
            }
        ],
        "voiceSupport": [
            {
                "type": "inbound",
                "isEnabled": true
            },
            {
                "type": "campaigns",
                "isEnabled": false
            }
        ],
        "maxDigitalChatSupport": 5,
        "maxEmailChatSupport": 5,
        "maxMessagingChatSupport": 5,
        "markedAutoAway": false,
        "caseLanguageSupport": [
            {
                "language": "en",
                "proficiency": "expert",
                "isActive": true
            }
        ],
        "lastOnlineAt": "2025-01-27T15:03:13.708Z",
        "createdAt": "2025-01-09T07:13:44.516Z",
        "updatedAt": "2025-01-28T07:18:02.593Z",
        "sipURI": "sip:support_production_a-8b67d6c-db44-4806-ba3a-96605aeaxxxx@uat-uxo-korebots-korevg-np.kore.ai:5060",
        "prevStatus": "Available",
        "prevStatusType": "AVAILABLE",
        "customId": "1111",
        "id": "a-8b67d6c-db44-4806-ba3a-96605aeaxxxx",
        "name": "fdsa Geller",
        "addresses": [
            "wss://sbc1-korevg-np.kore.ai:8443"
        ],
        "iceServers": [
            {
                "url": "stun:global.stun.twilio.com:3478",
                "urls": "stun:global.stun.twilio.com:3478"
            },
            {
                "url": "turn:global.turn.twilio.com:3478?transport=udp",
                "username": "38b91f68f32f4247b8c5ff1007ab68c6c3f152fb72f21b97b4246c42909bxxxx",
                "urls": "turn:global.turn.twilio.com:3478?transport=udp",
                "credential": "nPncCYbTAT4XX7H5t1iPMiYOfxxxx/kJ3ZadxTx0ncg="
            },
            {
                "url": "turn:global.turn.twilio.com:3478?transport=tcp",
                "username": "38b91f68f32f4247b8c5ff1007ab68c6c3f152fb72f21b97b4246c42909bxxxx",
                "urls": "turn:global.turn.twilio.com:3478?transport=tcp",
                "credential": "nPncCYbTAT4XX7H5t1iPMiYOfxxxx/kJ3ZadxTx0ncg="
            },
            {
                "url": "turn:global.turn.twilio.com:443?transport=tcp",
                "username": "38b91f68f32f4247b8c5ff1007ab68c6c3f152fb72f21b97b4246c42909bxxxx",
                "urls": "turn:global.turn.twilio.com:443?transport=tcp",
                "credential": "nPncCYbTAT4XX7H5t1iPMiYOfxxxx/kJ3ZadxTx0ncg="
            }
        ],
        "domain": "uat-uxo-korebots-korevg-np.kore.ai",
        "role": "Bot Owner",
        "skills": [
            {
                "skillId": "677f7728c14c0b208a81xxxx",
                "userId": "u-fa49c902-2c47-58d7-b61b-d00777dcxxxx",
                "createdBy": "u-fa49c902-2c47-58d7-b61b-d00777dcxxxx",
                "orgId": "o-c8b351ff-6b3c-5769-afea-1a0adaf4xxxx",
                "accountId": "671103693114e02715cexxxx",
                "proficiencyLevel": "expert",
                "iId": "st-240f7943-fcb7-565e-ac83-e3c353cdxxxx",
                "aId": "a-8b67d6c-db44-4806-ba3a-96605aeaxxxx",
                "createdByAId": "a-8b67d6c-db44-4806-ba3a-96605aeaxxxx",
                "createdAt": "2025-01-09T07:13:44.523Z",
                "updatedAt": "2025-01-28T07:11:32.235Z",
                "id": "677f7728c14c0b208a81xxxx",
                "name": "Default Skill",
                "skillGroupName": "Default SkillGroup",
                "skillGroupColor": "#D2000D"
            }
        ],
        "queues": [
            {
                "id": "qu-6106458-2d84-4b8d-9bc6-699ebcecxxxx",
                "name": "Default Queue",
                "description": "Auto created system default queue",
                "isPreferredAgent": true
            }
        ],
        "internalChatPermission": true,
        "callRegion": "US"
    }
]
```

## Response Body Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>Account identifier
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>addresses
   </td>
   <td>List of WSS addresses for voice communication
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>agentGroups
   </td>
   <td>List of agent groups containing groupId accessLevel role and name
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>attachmentsEnabled
   </td>
   <td>Whether file attachments are enabled
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>callRegion
   </td>
   <td>The call region, for example, USA
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>canSupportCase
   </td>
   <td>Whether the agent can handle cases
   </td>
   <td> boolean
   </td>
  </tr>
  <tr>
   <td>canSupportChat
   </td>
   <td>Whether the agent can provide chat support
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>canSupportVoice
   </td>
   <td>Whether the agent can provide voice support
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>caseLanguageSupport
   </td>
   <td>List of supported case languages with proficiency levels
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>chatLanguageSupport
   </td>
   <td>List of supported chat languages with proficiency levels
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>createdAt
   </td>
   <td>Account creation timestamp
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>createdBy
   </td>
   <td>User ID of the creator
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>createdByAId
   </td>
   <td>Agent ID of the creator
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>customId
   </td>
   <td>The custom identifier for the user
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>desktopLayouts
   </td>
   <td>List of desktop layout configurations
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>domain
   </td>
   <td>Voice communication domain
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>emailId
   </td>
   <td>The user's email address
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>emojisEnabled
   </td>
   <td>Whether emoji usage is enabled
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>firstName
   </td>
   <td>The user's first name
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>fullName
   </td>
   <td>Complete name of the user
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>hoursOfOperationId
   </td>
   <td>ID reference for operation hours
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>iceServers
   </td>
   <td>List of ICE server configurations for voice communication
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>id
   </td>
   <td>Agent identifier
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>iId
   </td>
   <td>Internal identifier
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>internalChatPermission
   </td>
   <td>Whether internal chat is permitted
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>isAccountOwner
   </td>
   <td>Indicates if the user is the account owner
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>lastName
   </td>
   <td>The user's last name
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>lastOnlineAt
   </td>
   <td>Timestamp of last online presence
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>lFullName
   </td>
   <td>Lowercase version of the full name
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>markedAutoAway
   </td>
   <td>Whether the user is marked as automatically away
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>maxDigitalChatSupport
   </td>
   <td>Maximum concurrent digital chats allowed
   </td>
   <td>number
   </td>
  </tr>
  <tr>
   <td>maxEmailChatSupport
   </td>
   <td>Maximum concurrent email chats allowed
   </td>
   <td>number
   </td>
  </tr>
  <tr>
   <td>maxMessagingChatSupport
   </td>
   <td>Maximum concurrent messaging chats allowed
   </td>
   <td>number
   </td>
  </tr>
  <tr>
   <td>name
   </td>
   <td>The display name
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>nickName
   </td>
   <td>The user's nickname (optional)
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>onlineStatus
   </td>
   <td>Current online status text
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>onlineStatusType
   </td>
   <td>Current online status type
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>orgId
   </td>
   <td>Organization identifier
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>phoneNumber
   </td>
   <td>The user's phone number
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>preferences
   </td>
   <td>User preferences (includes theme)
   </td>
   <td>object
   </td>
  </tr>
  <tr>
   <td>prevStatus
   </td>
   <td>Previous online status text
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>prevStatusType
   </td>
   <td>Previous online status type
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>profImage
   </td>
   <td>Profile image identifier
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>queues
   </td>
   <td>List of queue assignments with ID name and preferences
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>role
   </td>
   <td>The  user's role (for example, Bot Owner)
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>roleId
   </td>
   <td>The role identifier
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>sipURI
   </td>
   <td>The SIP URI for voice communications
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>skills
   </td>
   <td>List of user skills with proficiency levels
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>status
   </td>
   <td>The user's account status (for example, ACTIVE)
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>updatedAt
   </td>
   <td>Last update timestamp
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>userId
   </td>
   <td>Unique user identifier (UUID format)
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>voiceLanguageSupport
   </td>
   <td>List of supported voice languages with proficiency levels
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>voiceSupport
   </td>
   <td>Voice support configuration details
   </td>
   <td>array
   </td>
  </tr>
</table>