# Delete Voice Campaign API

Use this API to delete an active Voice campaign for a given stream ID and campaign ID.

| **Method**     | DELETE                                                                                                                                            |
|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**   | `https://{{host}}/agentassist/api/v1/public{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}&campaignType={{campaignType}}`           |
| **Content-Type** | `application/json`                                                                                                                              |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token)   |
| **API Scope**  | Campaign Management                                                                                                                               |

## Path Parameters

| **Parameter** | **Description**                                                                                      | **Type**          |
|---------------|------------------------------------------------------------------------------------------------------|-------------------|
| host          | Environment URL, for example, https://platform.kore.ai                                                | string, required  |
| streamId      | botId or streamId. You can access it from the General Settings page of the bot.                      | string, required  |
| campaignId    | Unique identifier of the campaign to trigger.                                                        | string, required  |

## Query Parameters

| **Parameter**  | **Description**                              | **Type**         |
|----------------|----------------------------------------------|------------------|
| accountId      | The unique ID associated with the account.   | string, required |
| campaignType   | Type of campaign. Use `"voice"` for voice campaign.       | string, required |

## Sample Request

```
curl --location --request DELETE 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}&campaignType={{campaignType}}' \
--header 'auth: <token>'
```

## Sample Response

```
{
  "status": "Deleted",
  "message": "Campaign Deleted",
  "deletedAt": "2025-06-26T15:00:00.000Z"
}
```

## Response Body Parameters

| **Parameter** | **Description**                                                  | **Type** |
|---------------|------------------------------------------------------------------|----------|
| status        | Indicates the current status of the campaign. For example, Deleted | string   |
| message       | Success confirmation message. For example, Campaign Deleted     | string   |
| deletedAt     | ISO timestamp when the campaign was activated.                  | string   |