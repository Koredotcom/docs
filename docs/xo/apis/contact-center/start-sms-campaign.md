# Start SMS Campaign API

Use this API to start an active SMS campaign for a given stream ID and campaign ID.

| **Method**        | POST                                                                                                                                                                                                                                               |
|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**      | `https://{{host}}/campaign/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}&campaignType={{campaignType}}&trigger={{trigger}}`                                                                                          |
| **Content-Type**  | `application/json`                                                                                                                                                                                                                                 |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token)                                                                                                        |
| **API Scope**     | Campaign Management                                                                                                                                                                                                                                |

## Path Parameters

| **Parameter** | **Description**                                                                                     | **Type**          |
|---------------|-----------------------------------------------------------------------------------------------------|-------------------|
| `host`        | Environment URL, for example, `https://platform.kore.ai`                                            | string, required  |
| `streamId`    | botId or streamId. You can access it from the General Settings page of the bot.                    | string, required  |
| `campaignId`  | Unique identifier of the campaign to trigger.                                                      | string, required  |

## Query Parameters

| **Parameter**  | **Description**                                        | **Type**          |
|----------------|--------------------------------------------------------|-------------------|
| `accountId`    | The unique ID associated with the account.            | string, required  |
| `campaignType` | Type of campaign. Use `"sms"` for SMS.                | string, required  |
| `trigger`      | Action to perform. Use `"play"` to start.             | string, required  |

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
  "status": "Active",
  "message": "Campaign Started",
  "updatedAt": "2025-06-26T14:37:50.069Z"
}
```

## Response Body Parameters

| **Parameter** | **Description**                                             | **Type**         |
|---------------|-------------------------------------------------------------|------------------|
| `status`      | Indicates the current status of the campaign. For example, Active | string          |
| `message`     | Success confirmation message. For example, Campaign Started | string           |
| `updatedAt`   | ISO timestamp when the campaign was activated.              | string           |