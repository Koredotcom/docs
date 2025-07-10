# Get All Voice Campaigns API

Use this API to retrieve all Voice campaign configurations associated with a specific account.

| **Method**   | POST |
|--------------|------|
| **Endpoint** | `https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign/getAllCampaignDetails` |
| **Content-Type** | `application/json` |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope** | Campaign Management |

## Path Parameters

| **Parameter** | **Description** | **Type** |
|---------------|-----------------|----------|
| `host`        | Environment URL, for example, `https://platform.kore.ai` | string, required |
| `botId`    | You can access it from the General Settings page of the bot. | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign/getAllCampaignDetails' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--header 'iid: st-0603182c-7ffb-53c3-b307-47ca14b9xxxx' \
--header 'accountId: 67777ce93e25326494e9xxxx' \
--data '{
  "limit": 50,
  "skip": 0,
  "page": 1,
  "startDate": "2025-05-29T18:30:00.000Z",
  "endDate" : "2025-06-26T18:29:59.999Z",
  "type" :"voice",
  "sortBy": {
    "createdAt": "desc"
  },
  "filters": {
    "status": ["Ready", "Stopped"],
    "priority": [5],
    "dialingMode": ["Progressive", "Preview"]
  }
}
'
```

## Headers

| **Header** | **Description**                   | **Required/Optional** |
|------------|-----------------------------------|------------------------|
| `auth`     | JWT token for authentication.     | required               |
| `iid`     | The Application Id.     | required               |
| `accountId`     | The Account Id.     | required               |

## Body Parameters

| Parameter                    | Description                                                                                      | Type               |
|-----------------------------|--------------------------------------------------------------------------------------------------|--------------------|
| `limit`                     | Maximum number of campaign records to return.                                                    | Integer            |
| `skip`                      | Number of records to skip from the start (for pagination).                                       | Integer            |
| `page`                      | Page number to retrieve.                                                                         | Integer            |
| `startDate`                 | Start of the date range filter (inclusive). Format: ISO 8601 UTC.                                | String (ISO 8601)  |
| `endDate`                   | End of the date range filter (inclusive). Format: ISO 8601 UTC.                                  | String (ISO 8601)  |
| `type`                      | Campaign type to filter. Example: `"voice"`.                                                     | String             |
| `sortBy`                    | Sorting configuration for results.                                                               | Object             |
| `sortBy.createdAt`          | Sort direction for the `createdAt` field. Use `"asc"` or `"desc"`.                              | String             |
| `filters`                   | Filters to apply to the campaign list.                                                           | Object             |
| `filters.status`            | Filter by campaign status. Example: `["Ready", "Stopped"]`.                                      | Array of String    |
| `filters.priority`          | Filter by campaign priority level. Example: `[5]`.                                               | Array of Integer   |
| `filters.dialingMode`       | Filter by dialing modes. Example: `["Progressive", "Preview"]`.                                  | Array of String    |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign  retrieved successfully",
    "data": {
        "results": [
            {
                "_id": "cd-dcebc67-d981-4469-b220-5a4ea567xxxx",
                "name": "Billing Reminder Voice Campaign",
                "description": "Progressive dialing campaign to notify customers about pending bill payments. Connects to an agent if available; otherwise, a voice bot shares payment details",
                "priority": "5",
                "dialingMode": "Preview",
                "status": "Ready",
                "createdAt": "2025-06-26T11:04:17.130Z",
                "updatedAt": "2025-06-26T11:08:55.828Z",
                "schedule": {
                    "isSchedulingEnabled": false,
                    "isRecurrenceEnabled": false
                },
                "campaignInstanceUpdatedAt": "2025-06-26T11:08:55.828Z",
                "connection": "Default Queue",
                "contactLists": [
                    "Recent Buyers - Q2 2025"
                ]
            }
        ],
        "skip": 0,
        "limit": 50,
        "hasMore": false,
        "totalPages": 1,
        "totalResults": 1
    }
}
```

## Response Body Parameters

| Parameter                                           | Description                                                                                  | Type                    |
|----------------------------------------------------|----------------------------------------------------------------------------------------------|-------------------------|
| `status`                                           | Indicates the overall response status. Example: `"success"`                                 | String                  |
| `message`                                          | Descriptive message about the response.                                                     | String                  |
| `data`                                             | Contains paginated campaign data.                                                           | Object                  |
| `data.results`                                     | List of campaign records.                                                                   | Array of Object         |
| `data.results[]`                                   | Individual campaign object.                                                                 | Object                  |
| `data.results[].\_id`                              | Unique identifier of the campaign.                                                          | String                  |
| `data.results[].name`                              | Display name of the campaign.                                                               | String                  |
| `data.results[].description`                       | Campaign description that explains its purpose.                                             | String                  |
| `data.results[].priority`                          | Campaign priority level.                                                                    | String                  |
| `data.results[].dialingMode`                       | Dialing mode used in the campaign. Example: `"Preview"`                                     | String                  |
| `data.results[].status`                            | Current status of the campaign. Example: `"Ready"`                                          | String                  |
| `data.results[].createdAt`                         | Timestamp of when the campaign was created.                                                 | String (ISO 8601)       |
| `data.results[].updatedAt`                         | Timestamp of when the campaign was last updated.                                            | String (ISO 8601)       |
| `data.results[].schedule`                          | Scheduling settings for the campaign.                                                       | Object                  |
| `data.results[].schedule.isSchedulingEnabled`      | Indicates whether scheduling is enabled.                                                    | Boolean                 |
| `data.results[].schedule.isRecurrenceEnabled`      | Indicates whether recurrence is enabled.                                                    | Boolean                 |
| `data.results[].campaignInstanceUpdatedAt`         | Timestamp of the last update to the campaign instance.                                      | String (ISO 8601)       |
| `data.results[].connection`                        | Connection or queue used by the campaign. Example: `"Default Queue"`                        | String                  |
| `data.results[].contactLists`                      | Names of the contact lists associated with the campaign.                                    | Array of String         |
| `data.skip`                                        | Number of records skipped (for pagination).                                                 | Integer                 |
| `data.limit`                                       | Number of records returned in the response.                                                 | Integer                 |
| `data.hasMore`                                     | Indicates if more pages are available beyond the current set of results.                    | Boolean                 |
| `data.totalPages`                                  | Total number of pages available.                                                            | Integer                 |
| `data.totalResults`                                | Total number of campaign records available for the applied filter criteria.                 | Integer                 |