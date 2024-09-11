# Create an Agent

To add an agent with the given Stream Id.

| **METHOD**       | **POST**                                                         |
|--------------|--------------------------------------------------------------|
| **Endpoint**     | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents` |
| **Content Type** | `application/json`                                           |
| **Authorization**| `auth: {{JWT}}` <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**    | SmartAssist Analytics                                        |

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                                                                         | **TYPE**        |
|-----------|-----------------------------------------------------------------------------------------------------|-------------|
| host      | Environment URL, for example, https://platform.kore.ai                                           | string, required |
| BotId     | BotId or StreamId. You can access it from the General Settings page of the bot.                     | string, required |
| customId  | The customID of the agent, without any special characters or spaces, and up to 15 characters long. | string, optional |

## Sample Request

```
curl --location --request POST 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents' \
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

| **PARAMETER**             | **DESCRIPTION**                                                                                                                   | **TYPE**             |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------|------------------|
| emaiId                | The Email Id of the agent.                                                                                                    | email, required |
| firstName             | The First Name of the agent up to 50 characters long.                                                                         | string, required |
| lastName              | The Last Name of the agent up to 50 characters long.                                                                          | string, required |
| nickName              | The Nick Name of the agent up to 50 characters long.                                                                          | string, optional |
| phoneNumber           | The Phone number of the agent.                                                                                                | string, required |
| profImage             | The file Id of the profile image to be set.                                                                                   | string, optional |
| agentGroupId          | The Id of the agent group which you can find with [GET /agent-groups](../contact-center/get-all-agent-groups.md). | string, required |
| canSupportChat        | It tells whether the agent supports chat.                                                                                     | boolean, pptional |
| canSupportVoice       | It tells whether the agent can support the voice chat.                                                                        | boolean, optional |
| voiceLanguageSupport  | An array of Objects with the following details.                                                                              | array, required         |
| language              | The Language supported.                                                                                                       | string, required |
| proficiency           | The Proficiency level which can be: expert, novice, average, good.                                                            | string, required |
| isActive              | It tells whether this support is active.                                                                                      | boolean, optional |
| chatLanguageSupport   | Array of Objects with the following details.                                                                                 | array, required         |
| language              | The Language supported.                                                                                                       | string, required |
| proficiency           | The Proficiency level which can be: expert, novice, average, good.                                                            | string, required |
| isActive              | It tells whether this support is active.                                                                                      | boolean, optional |
| skills                | Array of Objects which you can find with [GET /skills](https://{{host}}/api/public/%7B%7BstreamId%7D%7D/skill-groups/%7B%7BskillGroupId%7D%7D/skills). | Required         |
| skillId               | The Skill Id.                                                                                                                 | string, required |
| proficiencyLevel      | The Proficiency level which can be: expert, novice, average, good.                                                            | string, required |
| roleId                | The Role id which you can find with GET /roles.                                                                               | string, optional |
| desktopLayouts        | Array of Objects which can find with GET /layouts. It contains the following details.                                          | optional         |
| id                    | The desktop Layout Id.                                                                                                        | string, optional |
| isPreferredAgent      | It tells whether this is a preferred agent.                                                                                   | boolean, optional |
| createDefaultLayoutAndAssign | It tells whether to create and assign the default layout.                                                                 | boolean, optional |

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