# Get All Campaign List Details API

Use this API to retrieve metadata for all contact lists configured under a specific account, filtered by list type (for example, call or SMS). The response includes information such as list name, status, contact mapping, source, sync configuration, and campaign associations.

| **Method**        | GET                                                                                                                                                                                                                                                                                 |
|------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**      | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{CampaignId}}/status?accountId={{accountId}}&view=status`                                                                                                                                                         |
| **Content-Type**  | `application/json`                                                                                                                                                                                                                                                                    |
| **Authorization**| `auth: {{JWT}}`  <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**     | Campaign Management                                                                                                                                                                                                                                                                   |

## Path Parameters

| **Parameter** | **Description**                                                                                  | **Type**          |
|---------------|--------------------------------------------------------------------------------------------------|-------------------|
| `host`        | Environment URL, for example, `https://platform.kore.ai`                                         | `string`, required |
| `streamId`    | `botId` or `streamId`. You can access it from the General Settings page of the bot.             | `string`, required |
| `campaignId`  | Unique identifier of the campaign to trigger.                                                    | `string`, required |

## Query Parameters

| **Parameter** | **Description**                                             | **Type**           |
|---------------|-------------------------------------------------------------|--------------------|
| `accountId`   | The unique ID associated with the account.                 | string, required |
| `view`        | Value must be `status` to retrieve status only.            | string, optional |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/contactList/getAllListDetails?accountId={{accountId}}&type={{campaignType}}' \
--header 'auth: <token>'
```

## Sample Response

```
{
    "status": "success",
    "message": "",
    "data": [
        {
            "_id": "cl-c0027ca-80a6-463b-86be-caa3e359xxxx",
            "name": "APIContctList",
            "description": "API contacts ",
            "totalRecordCount": 0,
            "status": "Ready",
            "mapping": {
                "firstName": "firstName",
                "lastName": "lastName",
                "phoneNumber": "phoneNumber",
                "timeZone": "",
                "uniqueId": ""
            },
            "isListInUse": false,
            "listType": "call",
            "campaignInUse": [
                {
                    "name": "TestCampaign2",
                    "id": "cd-fe22fafc-d35a-521f-87cb-4983b483xxxx"
                },
                {
                    "id": "cd-aec6488-706a-4d0c-a28b-6c91e3e1xxxx",
                    "name": "UI vocie Camapaign"
                },
                {
                    "name": "Campaign 2",
                    "id": "cd-94a304d8-e1e0-5f3e-b77a-a8a04032xxxx"
                },
                {
                    "id": "cd-46dec02-c575-45d3-ad1b-5a609b16xxxx",
                    "name": "Voice Campaign from Public API - 2"
                },
                {
                    "name": "From UI - Advanced SMS Camapign - 1",
                    "id": "cd-05d247cc-fcd4-5474-a536-0c57d731xxxx"
                },
                {
                    "name": "From UI - with none message",
                    "id": "cd-560524fd-3de9-5541-9220-63138688xxxx"
                },
                {
                    "name": "From UI with template",
                    "id": "cd-b2192995-6f7e-5293-a57c-cb3b0584xxxx"
                },
                {
                    "name": "From API - SMS Camapign - 1",
                    "id": "cd-ddab10e0-c8fd-579a-8e76-68c169f0xxxx"
                },
                {
                    "id": "cd-1eb686b-1bcc-4b7b-9d71-8d77894cxxxx",
                    "name": "Voice Campaign From UI - 2"
                },
                {
                    "id": "cd-bb0b88a-6665-4750-b67a-0b97037bxxxx",
                    "name": "Voice Campaign frdom Public API - 2"
                },
                {
                    "name": "From API - SMS Camapign - 2",
                    "id": "cd-e0930dd0-c086-5939-ac72-1afce925xxxx"
                },
                {
                    "id": "cd-7f84805c-190e-5ab4-baa5-8d4dbed7xxxx",
                    "name": "From API - SMS Camapign - 2.1"
                },
                {
                    "name": "From API - SMS Camapign - 2.1",
                    "id": "cd-83151ebb-6415-5b8d-ae8c-c83b9c5exxxx"
                },
                {
                    "name": "From API - SMS Camapign - 2.3",
                    "id": "cd-b2e7b2f1-1b7a-5986-81e2-00256c45xxxx"
                },
                {
                    "id": "cd-abb1dcb-4070-438d-b908-b7c10719xxxx",
                    "name": "Voice Campaign frdom Public API -Agentless 4.5"
                },
                {
                    "id": "cd-ca67d6e-de72-4b29-bd86-0ce4a482xxxx",
                    "name": "Voice Campaign frdom Public API -Agentless 4.6"
                },
                {
                    "name": "From API - SMS Camp with Message Template -2.0",
                    "id": "cd-cd7160b5-8705-5644-972a-5fb276edxxxx"
                },
                {
                    "name": "From UI - With Message Template - 1",
                    "id": "cd-2daf3491-94c6-5ec3-8153-26a5e82axxxx"
                },
                {
                    "name": "From UI - With None Template - 1",
                    "id": "cd-0354dad4-1463-502e-9fd1-769019d9xxxx"
                },
                {
                    "name": "From UI - With Advanced Format - 1",
                    "id": "cd-205411d6-242c-5d14-9eb8-bf50f89bxxxx"
                },
                {
                    "id": "cd-2be7857-44c7-4d37-b212-b4728942xxxx",
                    "name": "Voice From UI - With Agentless Dialing Mode- 1"
                },
                {
                    "id": "cd-d9038b4-8922-43c5-93eb-de147088xxxx",
                    "name": "Voice From UI - With Progressive Dailing Mode- 1"
                },
                {
                    "id": "cd-0dc9b4d-a697-47b6-98d0-21516e7exxxx",
                    "name": "Voice From UI - With Preview Dialing Mode- 1"
                },
                {
                    "name": "SMS From API - With None Template - 1",
                    "id": "cd-b9565aa2-3010-5172-b480-3e16dcc5xxxx"
                },
                {
                    "name": "SMS From API - With Message Template - 1",
                    "id": "cd-7db44f75-5f82-5408-a816-e5a1c0aexxxx"
                },
                {
                    "id": "cd-49ed846-73ac-4ed3-9c40-42902bc7xxxx",
                    "name": "Voice From API - With Agentless Dialing Mode- 1"
                },
                {
                    "id": "cd-ca3925a-15eb-4852-a594-21528d92xxxx",
                    "name": "Voice From API-With Progressive Dailing Mode- 1"
                },
                {
                    "name": "SMS From API - With Advanced Format - 1",
                    "id": "cd-ed19e3c7-3682-5e72-a839-af9e0711xxxx"
                },
                {
                    "id": "cd-0e0475b-a418-400d-9164-21eb7e89xxxx",
                    "name": "Voice From API- With Preview Dialing Mode- 1"
                },
                {
                    "name": "SMS From API - With No Template - 1",
                    "id": "cd-5a830c4d-c8a4-5ee3-8e98-c219ea86xxxx"
                },
                {
                    "name": "SMS From API - With a Message Template - 1",
                    "id": "cd-eef4b45f-d7b6-5855-9fc2-4d4c6811xxxx"
                },
                {
                    "name": "SMS From API - With Advanced Format - 1",
                    "id": "cd-859d0254-71df-5fb4-a832-b3723a85xxxx"
                },
                {
                    "id": "cd-02099ba-dc11-4bb0-a7ea-253863c8xxxx",
                    "name": "Voice From API - With Agentless Dialing Mode- 2"
                },
                {
                    "id": "cd-ece75d7-3261-4c1c-85b8-1ca2ae68xxxx",
                    "name": "Voice From API-With Progressive Dailing Mode- 2"
                },
                {
                    "id": "cd-c806ae6-8e00-4131-ba20-bc072038xxxx",
                    "name": "Voice From API- With Preview Dialing Mode- 2"
                }
            ],
            "source": "apiIntegration",
            "apiConfigurations": {
                "method": "GET",
                "url": "https://67444511b4e2e04abea1xxxx.mockapi.io/api/v1/constactList",
                "auth": {
                    "authorizationType": "none"
                },
                "headers": [],
                "dataSyncInterval": 1440,
                "dataSyncMode": "dontAllowDuplicates"
            },
            "files": [],
            "updatedAt": "2025-06-27T07:33:07.456Z"
        },
        {
            "_id": "cl-8d9ddb7-7775-405d-a82e-0b4da3dcxxxx",
            "name": "Contact list of Passive June 26",
            "description": "contact list Description",
            "totalRecordCount": 2,
            "status": "Ready",
            "mapping": {
                "firstName": "firstName",
                "lastName": "lastName",
                "phoneNumber": "phoneNumber",
                "timeZone": "timeZone",
                "uniqueId": "uniqueId"
            },
            "isListInUse": false,
            "listType": "call",
            "campaignInUse": [],
            "source": "passiveApiIntegration",
            "apiConfigurations": {
                "dataSyncMode": "allowDuplicates"
            },
            "files": [],
            "updatedAt": "2025-06-26T06:44:04.967Z"
        },
        {
            "_id": "cl-2cd812c-12d3-408d-a507-be9ab81bxxxx",
            "name": "Contact list of Passive June 25",
            "description": "contact list Description",
            "totalRecordCount": 0,
            "status": "Ready",
            "mapping": {
                "firstName": "firstName",
                "lastName": "lastName",
                "phoneNumber": "phoneNumber",
                "timeZone": "timeZone",
                "uniqueId": "uniqueId"
            },
            "isListInUse": false,
            "listType": "call",
            "campaignInUse": [],
            "source": "passiveApiIntegration",
            "apiConfigurations": {
                "dataSyncMode": "allowDuplicates"
            },
            "files": [],
            "updatedAt": "2025-06-25T04:42:33.905Z"
        },
        {
            "_id": "cl-a5b12c8-cce8-4ee2-99aa-13558a2bxxxx",
            "name": "ContactList in share 24 June",
            "description": "contact list 24 June Description",
            "totalRecordCount": 4,
            "status": "Ready",
            "mapping": {
                "firstName": "firstName",
                "lastName": "lastName",
                "phoneNumber": "phoneNumber",
                "timeZone": "timeZone",
                "uniqueId": "uniqueId"
            },
            "isListInUse": false,
            "listType": "call",
            "campaignInUse": [],
            "source": "passiveApiIntegration",
            "apiConfigurations": {
                "dataSyncMode": "allowDuplicates"
            },
            "files": [],
            "updatedAt": "2025-06-24T11:07:51.754Z"
        }
    ]
}
```

## Response Body Parameters

| **Parameter**     | **Description**                                       | **Type** |
|-------------------|-------------------------------------------------------|----------|
| `status`          | API call result. Value: `"success"` or `"failure"`.   | string |
| `data.id`         | Campaign ID.                                          | string |
| `data.status`     | Current campaign status (for example, `Active`, `Stopped`).  | string |
| `data.name`       | Campaign name.                                        | string |