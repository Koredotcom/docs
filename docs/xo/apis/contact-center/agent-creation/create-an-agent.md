# Create an Agent

To add an agent with the given Stream Id.

<table>
  <tr>
   <td>Method
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents</code>
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
   <td>customId
   </td>
   <td>The customID of the agent, without any special characters or spaces, and up to 15 characters long.
   </td>
   <td>String, Optional
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request POST \
     'https://smartassist.kore.ai/agentassist/api/v1/public/{{streamId}}/agents'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
      --data-raw '{
  "status": "ACTIVE",
  "callRegion": "JP",
  "agentAffinity": false,
  "canSupportChat": true,
  "attachmentsEnabled": true,
  "emojisEnabled": true,
  "roleId": "6344eb107b65bd738aa6xxxx",
  "chatLanguageSupport": [
    {
      "isActive": true,
      "language": "en",
      "proficiency": "expert"
    }
  ],
  "canSupportVoice": true,
  "voiceLanguageSupport": [
    {
      "isActive": true,
      "language": "en",
      "proficiency": "expert"
    }
  ],
  "desktopLayouts": [
    {
      "isDefault": true,
      "name": "Default Layout",
      "id": "ly-59736ed-eaac-40d6-8c5b-db294b10xxxx"
    },
    {
      "isDefault": false,
      "name": "test1",
      "id": "ly-2a591ae-5021-4e25-a9be-9997e585xxxx"
    }
  ],
  "userId": "u-cc128d1c-a846-5acb-b075-9fc49a73xxxx",
  "accountId": "633ffa91d784f471d0b8xxxx",
  "createdBy": "u-ca2cc57f-5c2b-5437-bb07-fe9020d8xxxx",
  "orgId": "o-f7507858-f354-504a-b56b-39464fb0xxxx",
  "agentGroups": [
    {
      "groupId": "ag-bdc4010-e237-48e6-bb72-d3449a03xxxx",
      "role": "agent"
    }
  ],
  "lastOnlineAt": "2022-10-11T04:06:41.286Z",
  "createdAt": "2022-10-07T10:10:39.231Z",
  "updatedAt": "2022-10-12T10:48:53.418Z",
  "onlineStatus": "Available",
  "onlineStatusType": "AVAILABLE",
  "id": "a-1a36a7e-bb33-4bcc-ab7b-ac337738xxxx",
  "emailId": "test.agent01.oct07@kore.com",
  "firstName": "test",
  "lastName": "agent 01",
  "nickName": "test agent 01",
  "phoneNumber": "91234567890",
  "profImage": "no-avatar",
  "sipURI": "sip:supportdevelopment227@52.4.142.107:5060",
  "skills": [
    {
      "skillId": "633ffac608f3a0745993xxxx",
      "proficiencyLevel": "expert",
      "userId": "u-cc128d1c-a846-5acb-b075-9fc49a73xxxx",
      "createdBy": "u-ca2cc57f-5c2b-5437-bb07-fe9020d8xxxx",
      "accountId": "633ffa91d784f471d0b8xxxx",
      "orgId": "o-f7507858-f354-504a-b56b-39464fb0xxxx",
      "createdAt": "2022-10-12T10:48:53.468Z",
      "updatedAt": "2022-10-12T10:48:53.468Z",
      "id": "63469b95b63e3c0ed3e3xxxx",
      "name": "Default Skill",
      "skillGroupName": "Default SkillGroup",
      "skillGroupColor": "#D2000D"
    }
  ],
  "queues": [
    {
      "id": "qu-353c014-96bb-4c3e-aebd-87a37927xxxx",
      "name": "Default Queue",
      "description": "queue description",
      "isPreferredAgent": true
    }
  ],
  "maxDigitalChatSupport": 5,
  "maxEmailChatSupport": 2,
  "maxMessagingChatSupport": 3
}
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
   <td>emaiId
   </td>
   <td>The Email Id of the agent.
Example: adfa@adfa.com
   </td>
   <td>Email, Required
   </td>
  </tr>
  <tr>
   <td>firstName
   </td>
   <td>The First Name of the agent up to 50 characters long.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>lastName
   </td>
   <td>The Last Name of the agent up to 50 characters long.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>nickName
   </td>
   <td>The Nick Name of the agent up to 50 characters long.
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>phoneNumber
   </td>
   <td>The Phone number of the agent.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>profImage
   </td>
   <td>The file Id of the profile image to be set.
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>agentGroupId
   </td>
   <td>The Id of the agent group which you can find with <a href="https://docs.kore.ai/smartassist/api/get-all-agent-groups/">GET /agent-groups</a>
Example: ag-3234fsdf21312412123
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>canSupportChat
   </td>
   <td>It tells whether the agent supports chat.
   </td>
   <td>Boolean, Optional
   </td>
  </tr>
  <tr>
   <td>canSupportVoice
   </td>
   <td>It tells whether the agent can support the voice chat.
   </td>
   <td>Boolean, Optional
   </td>
  </tr>
  <tr>
   <td>voiceLanguageSupport
   </td>
   <td>An array of Objects with the following details
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>language
   </td>
   <td>The Language supported.
Example: en/es
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>proficiency
   </td>
   <td>The Proficiency level which can be:
expert, novice, average, good.
Example : ‘expert’
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>isActive
   </td>
   <td>It tells whether this support is active.
   </td>
   <td>Boolean, Optional
   </td>
  </tr>
  <tr>
   <td>chatLanguageSupport
   </td>
   <td>Array of Objects with the following details
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>language
   </td>
   <td>The Language supported.
Example: en/es
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>proficiency
   </td>
   <td>The Proficiency level can be:
expert, novice, average, good.
Example: ‘expert’
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>isActive
   </td>
   <td>It tells whether this support is active.
   </td>
   <td>Boolean, Optional
   </td>
  </tr>
  <tr>
   <td>skills
   </td>
   <td>Array of Objects which you can find with <a href="https://{{host}}/api/public/%7B%7BstreamId%7D%7D/skill-groups/%7B%7BskillGroupId%7D%7D/skills">GET /skills </a>.
It contains the following details
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>skillId
   </td>
   <td>The Skill Id.
Example: s-21223123
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>proficiencyLevel
   </td>
   <td>The Proficiency level can be:
expert, novice, average, good.
Example: ‘expert’
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>roleId
   </td>
   <td>The Role id which you can find with GET /roles.
Example:633edb2bfa0ecc1192c62190
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>desktopLayouts
   </td>
   <td>Array of Objects which can find with GET /layouts. It contains the following details
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td>id
   </td>
   <td>The desktop Layout Id.
Example: ly-de35d82-7323-4420-b893-c35b5175c6c6
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>isPreferredAgent
   </td>
   <td>It tells whether this is a preferred agent.
   </td>
   <td>Boolean, Optional
   </td>
  </tr>
  <tr>
   <td>createDefaultLayoutAndAssign
   </td>
   <td>It tells whether to create and assign the default layout.
   </td>
   <td>Boolean, Optional
   </td>
  </tr>
</table>

## Sample Response

```
{
  "emailId": "amanda.jones@abc.com",
  "firstName": "Amanda",
  "lastName": "Jones",
  "nickName": "Amanda",
  "phoneNumber": 13456782345,
  "profImage": "5ff233123124xxxx",
  "agentGroupId": "ag-3234fsdf2131241xxxx",
  "canSupportChat": true,
  "maxChatSupport": 5,
  "canSupportVoice": true,
  "attachmentsEnabled": true,
  "emojisEnabled": true,
  "roleId": "6ff233123124xxxx",
  "chatLanguageSupport": [
    {
      "language": "en",
      "proficiency": "expert",
      "isActive": true
    }
  ],
  "voiceLanguageSupport": [
    {
      "language": "es",
      "proficiency": "expert",
      "isActive": true
    }
  ],
  "skills": [
    {
      "skillId": "s-2122xxxx",
      "proficiencyLevel": "expert",
      "userId": "u-f9e37b9c-66d5-5525-9df1-da0edbeaxxxx",
      "createdBy": "u-f9e37b9c-66d5-5525-9df1-da0edbeaxxxx",
      "orgId": "o-cff7fba7-ebf6-5b01-81a3-42bd24faxxxx",
      "accountId": "62cd37c6f35860734283xxxx",
      "id": "62cd41c87e03db706718xxxx",
      "name": "Default Skill",
      "skillGroupName": "Default SkillGroup",
      "skillGroupColor": "#D2000D"
    }
  ],
  "desktopLayouts": [
    {
      "id": "ly-de35d82-7323-4420-b893-c35b5175xxxx",
      "isDefault": true
    }
  ],
  "queues": [
    {
      "id": "qu-80ac056-57db-420b-b937-9581dd20xxxx",
      "isPreferredAgent": true
    }
  ],
  "createDefaultLayoutAndAssign": true,
  "orgId": "o-89381108-2ea3-53a2-a422-b8992bbaxxxx",
  "userId": "u-021655cc-4cd6-524b-b42a-1bed8b5cxxxx",
  "callRegion": "JP",
  "maxDigitalChatSupport": 5,
  "maxEmailChatSupport": 5,
  "maxMessagingChatSupport": 5
}
```