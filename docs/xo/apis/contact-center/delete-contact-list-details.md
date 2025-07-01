# Delete Contact List Details API

Use this API to delete an existing contact list associated with a campaign.

| **Method**        | DELETE |
|------------------|--------|
| **Endpoint**     | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/contactList/{{contactListId}}?accountId={{accountId}}` |
| **Content-Type** | `application/json` |
| **Authorization**| `auth: {{JWT}}`  <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**    | Campaign Management |

## Path Parameters

| **Parameter**    | **Description**                                                                 | **Type**         |
|------------------|----------------------------------------------------------------------------------|------------------|
| `host`           | Environment URL, for example, `https://platform.kore.ai`                         | string, required |
| `streamId`       | `botId` or `streamId`. You can access it from the General Settings page of the bot. | string, required |
| `contactListId`  | Unique identifier of the contact list to update.                                 | string, required |

## Query Parameters

| **Parameter** | **Description**                          | **Type**         |
|---------------|-------------------------------------------|------------------|
| `accountId`   | The unique ID associated with the account. | string, required |

## Sample Request

```
curl --location --request DELETE 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/contactList/{{contactListId}}?accountId={{accountId}}' \
--header 'auth: <token>' \
--data ''
```

## Sample Response

```
{
  "status": "success",
  "message": "Contact list deleted successfully"
}
```

## Response Body Parameters

| **Parameter** | **Description**                                      | **Type** |
|---------------|-------------------------------------------------------|----------|
| `status`      | Indicates the result status (`success`).              | string   |
| `message`     | Confirmation message for successful deletion.         | string   |