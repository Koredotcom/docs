# Delete a Specific Agent from a Particular Agent Group

To delete a particular agent with the given Stream Id and Agent Id.

<table>
  <tr>
   <td>Method
   </td>
   <td>DELETE
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{agentId}}</code>
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
   <td>agentId
   </td>
   <td>The Agent Id of the particular agent whose details are being retrieved.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request DELETE\
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agents/{{agentId}}'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
```

## Sample Response

```
{
    "status": "ACTIVE",
    "agentAffinity": false,
    "canSupportChat": true,
    "maxChatSupport": 5,
    "roleId": "6344eb107b65bd738aa698b1",
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
            "id": "ly-59736ed-eaac-40d6-8c5b-db294b100672"
        },
        {
            "isDefault": false,
            "name": "test1",
            "id": "ly-2a591ae-5021-4e25-a9be-9997e5857e2d"
        }
    ],
    "userId": "u-cc128d1c-a846-5acb-b075-9fc49a73xxxx",
    "accountId": "633ffa91d784f471d0b8xxxx",
    "createdBy": "u-ca2cc57f-5c2b-5437-bb07-fe9020d88050",
    "orgId": "o-f7507858-f354-504a-b56b-39464fb05319",
    "agentGroups": [
        {
            "groupId": "ag-bdc4010-e237-48e6-bb72-d3449a03a622",
            "role": "agent"
        }
    ],
    "lastOnlineAt": "2022-10-11T04:06:41.286Z",
    "createdAt": "2022-10-07T10:10:39.231Z",
    "updatedAt": "2022-10-12T10:48:53.418Z",
    "onlineStatus": "Available",
    "onlineStatusType": "AVAILABLE",
    "id": "a-1a36a7e-bb33-4bcc-ab7b-ac33773871d8",
    "emailId": "test.agent01.octxx@domain.com",
    "firstName": "test",
    "lastName": "agent 01",
    "nickName": "test agent 01",
    "phoneNumber": "9123456xxxx",
    "profImage": "no-avatar",
    "sipURI": "sip:supportdevelopment2xx@52.4.142.1xx:5060",
    "skills": [
        {
            "skillId": "633ffac608f3a07459939a1f",
            "proficiencyLevel": "expert",
            "userId": "u-cc128d1c-a846-5acb-b075-9fc49a73xxxx",
            "createdBy": "u-ca2cc57f-5c2b-5437-bb07-fe9020d88050",
            "accountId": "633ffa91d784f471d0b8xxxx",
            "orgId": "o-f7507858-f354-504a-b56b-39464fb05319",
            "createdAt": "2022-10-12T10:48:53.468Z",
            "updatedAt": "2022-10-12T10:48:53.468Z",
            "id": "63469b95b63e3c0ed3e3fa5b",
            "name": "Default Skill",
            "skillGroupName": "Default SkillGroup",
            "skillGroupColor": "#D2000D"
        }
    ],
    "queues": [
        {
            "id": "qu-353c014-96bb-4c3e-aebd-87a37927c780",
            "name": "Default Queue",
            "description": "queue description",
            "isPreferredAgent": true
        }
    ]
}
```