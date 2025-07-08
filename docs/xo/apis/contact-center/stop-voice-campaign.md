# Stop Voice Campaign API

Use this API to stop an active Voice campaign for a given stream ID and campaign ID.

| **Method**        | POST                                                                                                                                                                                                      |
|-------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**      | `https://{{host}}/campaign/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}&campaignType={{campaignType}}&trigger={{trigger}}`                                                 |
| **Content-Type**  | `application/json`                                                                                                                                                                                        |
| **Authorization** | `auth: {{JWT}}`  <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token)                                                                  |
| **API Scope**     | Campaign Management                                                                                                                                                                                       |

## Path Parameters

| **Parameter** | **Description**                                                                                 | **Type**           |
|---------------|-------------------------------------------------------------------------------------------------|--------------------|
| `host`        | Environment URL, for example, `https://platform.kore.ai`                                        | string, required   |
| `streamId`    | botId or streamId. You can access it from the General Settings page of the bot.                | string, required   |
| `campaignId`  | Unique identifier of the campaign to trigger.                                                  | string, required   |

## Query Parameters

| **Parameter**   | **Description**                                                    | **Type**          |
|-----------------|--------------------------------------------------------------------|-------------------|
| `accountId`     | The unique ID associated with the account.                         | string, required  |
| `campaignType`  | Type of campaign. Use `"voice"` for voice campaign.                             | string, required  |
| `trigger`       | Action to perform. Use `"stop"` to stop the campaign.              | string, required  |

## Sample Request

```
curl --location 'https://{{host}}/campaign/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}&campaignType={{campaignType}}&trigger={{trigger}}' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--data '{}
'
```

## Sample Response

```
{
    "status": "Stopped",
    "message": "Campaign Stopped",
    "updatedAt": "2025-06-27T07:13:51.444Z",
    "campaignInstanceId": "cid-dbb5e25-605e-4556-8912-9292181axxxx"
}
```

## Response Body Parameters

| **Parameter**         | **Description**                                                     | **Type**         |
|-----------------------|---------------------------------------------------------------------|------------------|
| `status`              | Indicates the current status of the campaign. For example, Stopped | string           |
| `message`             | Success confirmation message. For example, Campaign Stopped        | string           |
| `updatedAt`           | ISO timestamp when the campaign was activated.                     | string           |
| `campaignInstanceId`  | ID of the specific campaign instance that was stopped.             | string           |