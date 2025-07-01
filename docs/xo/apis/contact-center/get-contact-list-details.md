# Get Contact List Details API

Use this API to retrieve the full details of a specific contact list using its ID.

| **Method**   | GET |
|--------------|-----|
| **Endpoint** | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/contactList/{{contactListId}}?accountId={{accountId}}` |
| **Content-Type** | `application/json` |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope** | Campaign Management |

## Path Parameters

| **Parameter**   | **Description**                                                                 | **Type**          |
|-----------------|----------------------------------------------------------------------------------|-------------------|
| `host`          | Environment URL, for example, `https://platform.kore.ai`                         | string, required  |
| `streamId`      | `botId` or `streamId`. You can access it from the General Settings page of the bot. | string, required  |
| `contactListId` | Unique identifier of the contact list to update.                                 | string, required  |

## Query Parameters

| **Parameter** | **Description**                         | **Type**         |
|---------------|------------------------------------------|------------------|
| `accountId`   | The unique ID associated with the account. | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/contactList/{{contactListId}}?accountId={{accountId}}' \
--header 'auth: <token>'
```

## Sample Response

```
{
  "status": "success",
  "message": "",
  "data": {
    "_id": "cl-4db9a03-07a3-4009-973a-b8940e81xxxx",
    "name": "Contact list of Passive June 27",
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
    "source": "passiveApi",
    "apiConfigurations": {
      "dataSyncMode": "allowDuplicates"
    },
    "files": [],
    "createdAt": "2025-06-27T07:37:17.489Z",
    "updatedAt": "2025-06-27T07:37:17.489Z"
  }
}
```

## Response Body Parameters

| **Parameter**       | **Description**                                         | **Type**  |
|---------------------|----------------------------------------------------------|-----------|
| `_id`               | Unique ID of the contact list.                           | string    |
| `name`              | Name of the contact list.                                | string    |
| `description`       | Optional description of the contact list.               | string    |
| `totalRecordCount`  | Number of contacts in the list.                          | number    |
| `status`            | Status of the list (for example, `"Ready"`).             | string    |
| `mapping`           | Field mappings for contact attributes.                   | object    |
| `isListInUse`       | Indicates if the list is currently in use.               | boolean   |
| `listType`          | Type of list – usually `"call"`.                         | string    |
| `campaignInUse`     | Campaigns currently using this list.                     | array     |
| `source`            | `"passiveApi"` if created via API.                       | string    |
| `apiConfigurations` | Data sync settings, like duplicate handling.             | object    |
| `files`             | List of files associated with this contact list.         | array     |
| `createdAt`         | ISO timestamp of when the contact list was created.      | string    |
| `updatedAt`         | ISO timestamp of the most recent update to the contact list. | string |