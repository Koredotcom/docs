# Update a Specific Agent

To update the details of a particular agent with the given Stream Id and Agent Id.

| **Method**      | PUT                                                         |
|-------------|-------------------------------------------------------------|
| **Endpoint**    | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{agentId}}` |
| **Content Type**| `application/json`                                          |
| **Authorization** | `auth: {{JWT}}` <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**   | SmartAssist Analytics                                       |

## Path Parameters

| **Parameter** | **Description**                                                                                            | **Type**         |
|-----------|--------------------------------------------------------------------------------------------------------|--------------|
| host      | Environment URL, for example, https://platform.kore.ai                                               | string, required |
| BotId     | BotId or StreamId. You can access it from the General Settings page of the bot.                        | string, required |
| agentId   | The Agent Id of the particular agent whose details are being retrieved.                                 | string, required |

## Sample Request

```
curl --location --request PUT 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{agentId}}' \
     --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
      --data-raw '{
    "emailId": "username@domain.com",
    "firstName": "Amanda",
    "lastName": "Jones",
    "nickName": "Amanda",
    "phoneNumber": 13456782xxx,
    "profImage": "5ff2331231245454",
    "agentGroupId": "ag-3234fsdf2131241xxxx",
    "canSupportChat": true,
    "maxChatSupport": 5,
    "canSupportVoice": true,
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
            "skillId": "s-21223123",
            "proficiencyLevel": "expert",
            "userId": "u-f9e37b9c-66d5-5525-9df1-da0edbeaxxxx",
            "createdBy": "u-f9e37b9c-66d5-5525-9df1-da0edbeaxxxx",
            "orgId": "o-cff7fba7-ebf6-5b01-81a3-42bd24faxxxx",
            "accountId": "62cd37c6f35860734283xxxx",
            "id": "62cd41c87e03db7067180d63",
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
    "createDefaultLayoutAndAssign": true
  }'
```

## Body Parameters

| **Parameter**              | **Description**                                                                                                     | **Type**          |
|------------------------|-----------------------------------------------------------------------------------------------------------------|---------------|
| emaiId                 | The Email Id of the agent. Example: adfa@adfa.com                                                               | email, required |
| firstName              | The First Name of the agent up to 50 characters long.                                                           | string, required |
| lastName               | The Last Name of the agent up to 50 characters long.                                                            | string, required |
| nickName               | The Nick Name of the agent up to 50 characters long.                                                            | string, optional |
| phoneNumber            | The Phone number of the agent.                                                                                  | string, required |
| profImage              | The File id of the profile image to be set.                                                                     | string, optional |
| agentGroupId           | The Id of the agent group, which you can find with [GET /agent-groups](../contact-center/get-all-agent-groups.md). Example: ag-3234fsdf21312412123 | string, optional |
| canSupportChat         | It tells whether the agent supports chat.                                                                       | boolean, optional |
| canSupportVoice        | It tells whether the agent can support the voice chat.                                                          | boolean, optional |
| maxChatSupport         | It tells how many chats the agent can handle at a time.                                                          | number, optional |
| voiceLanguageSupport   | An Array of Objects with the following details                                                                  | required      |
| language               | The Language supported. Example: en/es                                                                           | string, required |
| proficiency            | The Proficiency level can be: expert, novice, average, good. Example: ‘expert’                                  | string, required |
| isActive               | It tells whether this support is active.                                                                         | boolean, optional |
| chatLanguageSupport    | An Array of Objects with the following details                                                                  | required      |
| language               | The Language supported. Example: en/es                                                                           | string, required |
| proficiency            | The Proficiency level can be: expert, novice, average, good. Example: ‘expert’                                  | string, required |
| isActive               | It tells whether this support is active.                                                                         | boolean, optional |
| skills                 | Array of Objects, which you can find with [GET /skills](../contact-center/get-a-skill-group.md). It contains the following details | required      |
| skillId                | The Skill Id. Example: s-21223123                                                                               | string, required |
| proficiencyLevel       | The Proficiency level can be: expert, novice, average, good Example: ‘expert’                                   | string, required |
| roleId                 | The Role id which you can find with GET /roles. Example:633edb2bfa0ecc1192c62190                                | string, optional |
| desktopLayouts         | Array of Objects which you can find with GET /layouts. It contains the following details                         | optional      |
| id                     | The desktop Layout Id. Example: ly-de35d82-7323-4420-b893-c35b5175c6c6                                           | string, optional |
| isPreferredAgent       | It tells whether this is a preferred agent.                                                                     | boolean, optional |
| createDefaultLayoutAndAssign | It tells whether to create and assign the default layout.                                                      | boolean, optional |

## Sample Response

```
{
  "status": "ACTIVE",
  "agentAffinity": false,
  "canSupportChat": true,
  "maxChatSupport": 5,
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
  "createdBy": "u-ca2cc57f-5c2b-5437-bb07-fe9020d8xxx",
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
  "emailId": "test.agent01.octxx@domain.com",
  "firstName": "test",
  "lastName": "agent 01",
  "nickName": "test agent 01",
  "phoneNumber": "9123456xxxx",
  "profImage": "no-avatar",
  "sipURI": "sip:supportdevelopment2xx@52.4.142.1xx:5060",
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
  ]
}
```