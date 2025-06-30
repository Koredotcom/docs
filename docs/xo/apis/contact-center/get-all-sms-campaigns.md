# Get All SMS Campaigns API

Use this API to retrieve all SMS campaign configurations associated with a specific account.

| **Method**         | POST                                                                                                                                                                                                                  |
 |------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|  
| **Endpoint**       | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/getAllCampaignDetails?accountId={{accountId}}`                                                                                                            |
| **Content-Type**   | `application/json`                                                                                                                                                                                                          |
| **Authorization**  | `auth: {{JWT}}`<br> See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token).                                                                                 |
| **API Scope**      | Campaign Management                                                                                                                                                                                                         |

## Path Parameters

| **Parameter** | **Description**                                                                                     | **Type**           |
|---------------|-----------------------------------------------------------------------------------------------------|--------------------|
| `host`        | Environment URL. For example: `https://platform.kore.ai`                                            | `string`, required |
| `streamId`    | Bot ID or Stream ID. You can access it from the **General Settings** page of the bot.              | `string`, required |

## Query Parameter

| **Parameter** | **Description**                                 | **Type**           |
|---------------|-------------------------------------------------|--------------------|
| `accountId`   | The unique ID associated with the account.      | `string`, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign//getAllCampaignDetails?accountId={{accountId}}' \
--header 'auth: <token>' \
--data '{
  "limit": 100,
  "skip": 0,
  "page": 1,
  "type": "sms"
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
                "name": "SMS From API - With Advanced Foramt - 1",
                "description": "SMS From API - With Advanced Foramt- 1",
                "status": "Stopped",
                "priority": "5",
                "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
                "createdAt": "2025-06-26T06:03:48.502Z",
                "updatedAt": "2025-06-26T09:54:42.030Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "campaignInstanceId": "cid-b1c6849b-b40f-550e-ace7-3b17aab9xxxx",
                "id": "cd-ed19e3c7-3682-5e72-a839-af9e0711xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-26T06:08:09.813Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "advanced"
            },
            {
                "name": "SMS From API - With Advanced Format - 1",
                "description": "SMS From API - With Advanced Format - 1",
                "status": "Ready",
                "priority": "5",
                "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
                "createdAt": "2025-06-26T08:33:55.244Z",
                "updatedAt": "2025-06-26T08:33:55.258Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-859d0254-71df-5fb4-a832-b3723a85xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-26T08:33:55.258Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "advanced"
            },
            {
                "name": "SMS From API - With a Message Template - 1",
                "description": "SMS From API - With a Message Template - 1",
                "status": "Ready",
                "priority": "5",
                "message": {
                    "message": "R3JlZXRpbmdzLCAhIFdlJ3JlIHRocmlsbGVkIHRvIGhhdmUgeW91IGpvaW4gdXMuIEFjY2VzcyBvdXIgdG9wIHRocmVlIGJlZ2lubmVyJ3MgdGlwcyBieSBjbGlja2luZyBvbiB0aGlzIGxpbms6IGh0dHBzOi8veW91cndlYnNpdGUuY29tL3RpcHMuIElmIHlvdSBoYXZlIGFueSBpbnF1aXJpZXMsIGRvbid0IGhlc2l0YXRlIHRvIHNlbmQgdXMgYSByZXBseSByaWdodCBoZXJlLg%3xxxx"
                },
                "createdAt": "2025-06-26T07:27:55.419Z",
                "updatedAt": "2025-06-26T07:27:55.428Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-eef4b45f-d7b6-5855-9fc2-4d4c6811xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-26T07:27:55.428Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "simple"
            },
            {
                "name": "SMS From API - With No Template - 1",
                "description": "SMS From API - With No Template - 1",
                "status": "Ready",
                "priority": "5",
                "message": {
                    "message": "TWVzc2FnZSBmb3IgeW91ciB0YXJnZXRlZCBjdXN0b21lcg%3D%3D"
                },
                "createdAt": "2025-06-26T06:37:13.780Z",
                "updatedAt": "2025-06-26T06:37:13.788Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-5a830c4d-c8a4-5ee3-8e98-c219ea86xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-26T06:37:13.788Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "simple"
            },
            {
                "name": "SMS From API - With Message Template - 1",
                "description": "SMS From API - With Message Template - 1",
                "status": "Ready",
                "priority": "5",
                "message": {
                    "message": "R3JlZXRpbmdzLCAhIFdlJ3JlIHRocmlsbGVkIHRvIGhhdmUgeW91IGpvaW4gdXMuIEFjY2VzcyBvdXIgdG9wIHRocmVlIGJlZ2lubmVyJ3MgdGlwcyBieSBjbGlja2luZyBvbiB0aGlzIGxpbms6IGh0dHBzOi8veW91cndlYnNpdGUuY29tL3RpcHMuIElmIHlvdSBoYXZlIGFueSBpbnF1aXJpZXMsIGRvbid0IGhlc2l0YXRlIHRvIHNlbmQgdXMgYSByZXBseSByaWdodCBoZXJlLg%3xxxx"
                },
                "createdAt": "2025-06-26T05:05:39.862Z",
                "updatedAt": "2025-06-26T05:05:39.870Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-7db44f75-5f82-5408-a816-e5a1c0aexxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-26T05:05:39.870Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "simple"
            },
            {
                "name": "SMS From API - With None Template - 1",
                "description": "SMS From API - With None Template - 1",
                "status": "Ready",
                "priority": "5",
                "message": {
                    "message": "TWVzc2FnZSBmb3IgeW91ciB0YXJnZXRlZCBjdXN0b21lcg%3D%3D"
                },
                "createdAt": "2025-06-26T05:02:06.514Z",
                "updatedAt": "2025-06-26T05:02:06.523Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-b9565aa2-3010-5172-b480-3e16dcc5xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-26T05:02:06.523Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "simple"
            },
            {
                "name": "From UI - With Advanced Foramt - 1",
                "description": "From UI - With Advanced Foramt - 1 - Updated",
                "status": "Ready",
                "priority": "5",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
                "createdAt": "2025-06-26T04:26:52.641Z",
                "updatedAt": "2025-06-26T04:27:56.414Z",
                "id": "cd-205411d6-242c-5d14-9eb8-bf50f89bxxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-26T04:27:56.414Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "advanced"
            },
            {
                "name": "From UI - With None Template - 1",
                "description": "From UI - With None Template - 1",
                "status": "Ready",
                "priority": "5",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "message": {
                    "templateId": "",
                    "message": "TWVzc2FnZSBmb3IgeW91ciB0YXJnZXRlZCBjdXN0b21lcg%3D%3D"
                },
                "createdAt": "2025-06-26T04:23:28.030Z",
                "updatedAt": "2025-06-26T04:23:28.030Z",
                "id": "cd-0354dad4-1463-502e-9fd1-769019d9xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-26T04:23:28.030Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "simple"
            },
            {
                "name": "From UI - With Message Template - 1",
                "description": "From UI - With Message Template - 1",
                "status": "Ready",
                "priority": "5",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "message": {
                    "templateId": "cmt-88fcd16f-bdb2-4d4d-8a2c-0324c7f9xxxx",
                    "message": "R3JlZXRpbmdzLCAhIFdlJ3JlIHRocmlsbGVkIHRvIGhhdmUgeW91IGpvaW4gdXMuIEFjY2VzcyBvdXIgdG9wIHRocmVlIGJlZ2lubmVyJ3MgdGlwcyBieSBjbGlja2luZyBvbiB0aGlzIGxpbms6IGh0dHBzOi8veW91cndlYnNpdGUuY29tL3RpcHMuIElmIHlvdSBoYXZlIGFueSBpbnF1aXJpZXMsIGRvbid0IGhlc2l0YXRlIHRvIHNlbmQgdXMgYSByZXBseSByaWdodCBoZXJlLg%3xxxx"
                },
                "createdAt": "2025-06-26T04:21:14.039Z",
                "updatedAt": "2025-06-26T04:21:14.039Z",
                "id": "cd-2daf3491-94c6-5ec3-8153-26a5e82a005d",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-26T04:21:14.039Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "simple"
            },
            {
                "name": "From API - SMS Camp with Message Template -2.0",
                "description": "From API - SMS Campaign with Message Template -1",
                "status": "Ready",
                "priority": "5",
                "message": {
                    "message": "TWVzc2FnZSBmb3IgeW91ciB0YXJnZXRlZCBjdXN0b21lcg%3D%3D"
                },
                "createdAt": "2025-06-25T17:47:46.705Z",
                "updatedAt": "2025-06-25T17:47:46.713Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-cd7160b5-8705-5644-972a-5fb276edxxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-25T17:47:46.713Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "simple"
            },
            {
                "name": "From API - SMS Camapign - 2.3",
                "description": "From UI - SMS Camapign - 1",
                "status": "Ready",
                "priority": "5",
                "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
                "createdAt": "2025-06-24T10:53:42.900Z",
                "updatedAt": "2025-06-24T10:53:42.907Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-b2e7b2f1-1b7a-5986-81e2-00256c45xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-24T10:53:42.907Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "advanced"
            },
            {
                "name": "From API - SMS Camapign - 2.2",
                "description": "From UI - SMS Camapign - 2",
                "status": "Ready",
                "priority": "5",
                "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
                "createdAt": "2025-06-24T09:50:54.743Z",
                "updatedAt": "2025-06-24T09:51:14.393Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-83151ebb-6415-5b8d-ae8c-c83b9c5exxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-24T09:51:14.393Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "advanced"
            },
            {
                "name": "From API - SMS Camapign - 2",
                "description": "From UI - SMS Camapign - 1",
                "status": "Ready",
                "priority": "5",
                "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
                "createdAt": "2025-06-24T09:27:52.326Z",
                "updatedAt": "2025-06-24T09:27:52.345Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-e0930dd0-c086-5939-ac72-1afce925xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-24T09:27:52.345Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "advanced"
            },
            {
                "name": "From API - SMS Camapign - 1",
                "description": "From UI - SMS Camapign - 1",
                "status": "Ready",
                "priority": "5",
                "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
                "createdAt": "2025-06-24T08:30:09.034Z",
                "updatedAt": "2025-06-24T08:30:09.059Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "id": "cd-ddab10e0-c8fd-579a-8e76-68c169f0xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-24T08:30:09.059Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "advanced"
            },
            {
                "name": "From UI with template",
                "description": "From UI with template",
                "status": "Stopped",
                "priority": "5",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "message": {
                    "templateId": "cmt-fc4d79d9-f8b7-5551-96f5-34cb24eexxxx",
                    "message": "SGVsbG8sIGhvdyBtYXkgSSBhc3Npc3QgeW91Pw%3D%3D"
                },
                "createdAt": "2025-06-11T07:08:25.977Z",
                "updatedAt": "2025-06-24T08:25:05.851Z",
                "campaignInstanceId": "cid-52f25ff9-c429-5aa5-bda4-4c56d3faxxxx",
                "id": "cd-b2192995-6f7e-5293-a57c-cb3b0584xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-24T08:25:05.855Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "simple"
            },
            {
                "name": "From UI - Advanced SMS Camapign - 1",
                "description": "From UI - Advanced SMS Camapign - 11",
                "status": "Ready",
                "priority": "5",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
                "createdAt": "2025-06-10T07:16:46.256Z",
                "updatedAt": "2025-06-11T07:07:16.935Z",
                "id": "cd-05d247cc-fcd4-5474-a536-0c57d731xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-11T07:07:16.935Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "advanced"
            },
            {
                "name": "From UI - with none message",
                "description": "From UI - with none message",
                "status": "Ready",
                "priority": "5",
                "schedule": {
                    "isSchedulingEnabled": false
                },
                "message": {
                    "templateId": "",
                    "message": "TWVzc2FnZSBmb3IgeW91ciB0YXJnZXRlZCBjdXN0b21lcg%3D%3D"
                },
                "createdAt": "2025-06-11T07:03:55.373Z",
                "updatedAt": "2025-06-11T07:03:55.373Z",
                "id": "cd-560524fd-3de9-5541-9220-63138688xxxx",
                "totalMessagesSent": 0,
                "campaignInstanceUpdatedAt": "2025-06-11T07:03:55.373Z",
                "campaignExecutionType": "NORMAL",
                "contactLists": [
                    "APIContctList"
                ],
                "format": "simple"
            }
        ],
        "skip": 0,
        "limit": 100,
        "hasMore": false,
        "totalPages": 1,
        "totalResults": 17
    }
}
```

## Response Body Parameters

| **Parameter**                 | **Description**                                                        | **Type**   |
|------------------------------|------------------------------------------------------------------------|------------|
| `id`                         | Unique identifier for the campaign.                                    | `string`   |
| `campaignInstanceId`         | Unique instance ID (only in some records).                             | `string`   |
| `name`                       | Campaign name.                                                         | `string`   |
| `description`                | Campaign description.                                                  | `string`   |
| `status`                     | Campaign status (for example, `Ready`, `Stopped`).                     | `string`   |
| `priority`                   | Campaign priority level. For example: 5.                               | `string`   |
| `experienceFlow`             | Experience Flow ID (present in advanced format campaigns).             | `string`   |
| `message.message`            | Base64 encoded message content.                                        | `string`   |
| `message.templateId`         | Template ID (if message uses a template).                              | `string`   |
| `schedule`                   | Contains schedule config (`isSchedulingEnabled`, `isRecurrenceEnabled`). | `object` |
| `createdAt`                  | ISO timestamp when the campaign was created.                           | `string`   |
| `updatedAt`                  | ISO timestamp of last campaign update.                                 | `string`   |
| `campaignInstanceUpdatedAt`  | ISO timestamp of the campaign instance update.                         | `string`   |
| `campaignExecutionType`      | Execution type (`NORMAL`, etc.).                                       | `string`   |
| `contactLists`               | List of contact lists associated with the campaign.                    | `array`    |
| `format`                     | Message format type (`simple` or `advanced`).                          | `string`   |