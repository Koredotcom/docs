# Get All Voice Campaigns API

Use this API to retrieve all Voice campaign configurations associated with a specific account.

| **Method**   | POST |
|--------------|------|
| **Endpoint** | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/getAllCampaignDetails?accountId={{accountId}}` |
| **Content-Type** | `application/json` |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope** | Campaign Management |

## Path Parameters

| **Parameter** | **Description** | **Type** |
|---------------|-----------------|----------|
| `host`        | Environment URL, for example, `https://platform.kore.ai` | string, required |
| `streamId`    | botId or streamId. You can access it from the General Settings page of the bot. | string, required |

## Query Parameter

| **Parameter** | **Description**                         | **Type**         |
|---------------|-----------------------------------------|------------------|
| `accountId`   | The unique ID associated with the account. | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/getAllCampaignDetails?accountId={{accountId}}' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--data '{
  "limit": 10,
  "skip": 0,
  "page": 1,
  "type" :"voice"
}
'
```

## Sample Response

```
{
    "status": "success",
    "message": "Campaign  retrieved successfully",
    "data": {
        "results": [
            {
                "_id": "cd-0e0475b-a418-400d-9164-21eb7e89xxxx",
                "name": "Voice From API- With Preview Dialing Mode- 2",
                "description": "Voice From API - With Preview Dialing Mode and queue- 2 - Updated Description",
                "priority": "5",
                "dialingMode": "Preview",
                "status": "Stopped",
                "createdAt": "2025-06-26T06:05:50.301Z",
                "updatedAt": "2025-06-26T16:05:24.326Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "campaignInstanceId": "cid-7469a7a-d009-438c-94a1-d8620197xxxx",
                "campaignInstanceUpdatedAt": "2025-06-26T06:07:15.340Z",
                "connection": "Default Queue",
                "contactLists": [
                    "APIContctList"
                ]
            },
            {
                "_id": "cd-c806ae6-8e00-4131-ba20-bc072038xxxx",
                "name": "Voice From API- With Priview Dailing Mode- 2",
                "description": "Voice From API - With Priview Dailing Mode and queue- 2",
                "priority": "5",
                "dialingMode": "Preview",
                "status": "Ready",
                "createdAt": "2025-06-26T15:48:38.285Z",
                "updatedAt": "2025-06-26T15:48:38.285Z",
                "campaignInstanceUpdatedAt": "2025-06-26T15:48:38.285Z",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "connection": "Default Queue",
                "contactLists": [
                    "APIContctList"
                ]
            },
            {
                "_id": "cd-ece75d7-3261-4c1c-85b8-1ca2ae68xxxx",
                "name": "Voice From API-With Progressive Dailing Mode- 2",
                "description": "Voice From API - With Progressive Dailing Mode and Queue- 2",
                "priority": "5",
                "dialingMode": "Progressive",
                "status": "Ready",
                "createdAt": "2025-06-26T15:32:00.318Z",
                "updatedAt": "2025-06-26T15:32:00.318Z",
                "campaignInstanceUpdatedAt": "2025-06-26T15:32:00.318Z",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "connection": "Default Queue",
                "contactLists": [
                    "APIContctList"
                ]
            },
            {
                "_id": "cd-02099ba-dc11-4bb0-a7ea-253863c8xxxx",
                "name": "Voice From API - With Agentless Dailing Mode- 2",
                "description": "Voice From API - With Agentless Dailing Mode and Start Flow- 2",
                "priority": "5",
                "dialingMode": "Agentless",
                "experienceFlow": "cf-95a7c0ef-a752-554f-8497-c1f61464xxxx",
                "status": "Ready",
                "createdAt": "2025-06-26T15:18:48.248Z",
                "updatedAt": "2025-06-26T15:18:48.248Z",
                "campaignInstanceUpdatedAt": "2025-06-26T15:18:48.248Z",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "connection": "Voice Flow 2",
                "contactLists": [
                    "APIContctList"
                ]
            },
            {
                "_id": "cd-ca3925a-15eb-4852-a594-21528d92xxxx",
                "name": "Voice From API-With Progressive Dailing Mode- 1",
                "description": "Voice From API - With Progressive Dailing Mode and Queue- 1",
                "priority": "5",
                "dialingMode": "Progressive",
                "status": "Ready",
                "createdAt": "2025-06-26T05:20:18.897Z",
                "updatedAt": "2025-06-26T05:20:18.897Z",
                "campaignInstanceUpdatedAt": "2025-06-26T05:20:18.897Z",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "connection": "Default Queue",
                "contactLists": [
                    "APIContctList"
                ]
            },
            {
                "_id": "cd-49ed846-73ac-4ed3-9c40-42902bc7xxxx",
                "name": "Voice From API - With Agentless Dailing Mode- 1",
                "description": "Voice From API - With Agentless Dailing Mode and Start Flow- 1",
                "priority": "5",
                "dialingMode": "Agentless",
                "experienceFlow": "cf-95a7c0ef-a752-554f-8497-c1f61464xxxx",
                "status": "Ready",
                "createdAt": "2025-06-26T05:17:57.198Z",
                "updatedAt": "2025-06-26T05:17:57.198Z",
                "campaignInstanceUpdatedAt": "2025-06-26T05:17:57.198Z",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "connection": "Voice Flow 2",
                "contactLists": [
                    "APIContctList"
                ]
            },
            {
                "_id": "cd-0dc9b4d-a697-47b6-98d0-21516e7exxxx",
                "name": "Voice From UI - With Priview Dailing Mode- 1",
                "description": "Voice From UI - With Priview Dailing Mode and queue- 1",
                "priority": "5",
                "dialingMode": "Preview",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "status": "Ready",
                "createdAt": "2025-06-26T04:36:09.441Z",
                "updatedAt": "2025-06-26T04:36:09.441Z",
                "campaignInstanceUpdatedAt": "2025-06-26T04:36:09.441Z",
                "connection": "Default Queue",
                "contactLists": [
                    "APIContctList"
                ]
            },
            {
                "_id": "cd-d9038b4-8922-43c5-93eb-de147088xxxx",
                "name": "Voice From UI - With Progressive Dailing Mode- 1",
                "description": "Voice From UI - With Progressive Dailing Mode and Queue- 1",
                "priority": "5",
                "dialingMode": "Progressive",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "status": "Ready",
                "createdAt": "2025-06-26T04:34:04.318Z",
                "updatedAt": "2025-06-26T04:34:04.318Z",
                "campaignInstanceUpdatedAt": "2025-06-26T04:34:04.318Z",
                "connection": "Default Queue",
                "contactLists": [
                    "APIContctList"
                ]
            },
            {
                "_id": "cd-2be7857-44c7-4d37-b212-b4728942xxxx",
                "name": "Voice From UI - With Agentless Dailing Mode- 1",
                "description": "Voice From UI - With Agentless Dailing Mode and Start Flow- 1",
                "priority": "5",
                "dialingMode": "Agentless",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "experienceFlow": "cf-95a7c0ef-a752-554f-8497-c1f61464xxxx",
                "status": "Ready",
                "createdAt": "2025-06-26T04:31:11.280Z",
                "updatedAt": "2025-06-26T04:31:11.280Z",
                "campaignInstanceUpdatedAt": "2025-06-26T04:31:11.280Z",
                "connection": "Voice Flow 2",
                "contactLists": [
                    "APIContctList"
                ]
            },
            {
                "_id": "cd-ca67d6e-de72-4b29-bd86-0ce4a482xxxx",
                "name": "Voice Campaign frdom Public API -Agentless 4.6",
                "description": "Voice Campaign for doc",
                "priority": "5",
                "dialingMode": "Agentless",
                "experienceFlow": "cf-95a7c0ef-a752-554f-8497-c1f61464xxxx",
                "status": "Ready",
                "createdAt": "2025-06-25T17:44:15.525Z",
                "updatedAt": "2025-06-25T17:44:15.525Z",
                "campaignInstanceUpdatedAt": "2025-06-25T17:44:15.525Z",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "connection": "Voice Flow 2",
                "contactLists": [
                    "APIContctList"
                ]
            }
        ],
        "skip": 0,
        "limit": 10,
        "hasMore": true,
        "totalPages": 2,
        "totalResults": 15
    }
}
```

## Response Body Parameters

| **Parameter**                | **Description**                                                                 | **Type**  |
|-----------------------------|---------------------------------------------------------------------------------|-----------|
| `id`                        | Unique identifier for the campaign.                                            | string    |
| `campaignInstanceId`        | Unique instance ID (only in some records)                                      | string    |
| `name`                      | Campaign name                                                                  | string    |
| `description`               | Campaign description                                                           | string    |
| `status`                    | Campaign status (for example, `Ready`, `Stopped`)                              | string    |
| `priority`                  | Campaign priority level. For example: 5                                        | string    |
| `experienceFlow`            | Experience Flow ID (for Agentless mode)                                        | string    |
| `dialingMode`               | Dialing mode: `Preview`, `Progressive`, or `Agentless`.                        | string    |
| `schedule`                  | Contains schedule config (`isSchedulingEnabled`, `isRecurrenceEnabled`)       | object    |
| `createdAt`                 | ISO timestamp when the campaign was created                                    | string    |
| `updatedAt`                 | ISO timestamp of last campaign update                                          | string    |
| `campaignInstanceUpdatedAt`| ISO timestamp of the campaign instance update                                  | string    |
| `campaignExecutionType`     | Execution type (`NORMAL`, etc.)                                                | string    |
| `contactLists`             | List of contact lists associated with the campaign                             | array     |
| `format`                   | Message format type (`simple` or `advanced`)                                   | string    |