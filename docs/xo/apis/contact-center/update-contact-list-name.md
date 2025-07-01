# Update Contact List Name API

Use this API to update the name of a specific contact list associated with a campaign.

| **Method**     | PUT                                                                                   |
|----------------|----------------------------------------------------------------------------------------|
| **Endpoint**   | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/contactList/{{contactListId}}?accountId={{accountId}}` |
| **Content-Type** | `application/json`                                                                   |
| **Authorization** | `auth: {{JWT}}` <br> See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**  | Campaign Management                                                                   |

## Path Parameters

| **Parameter**     | **Description**                                                                  | **Type**          |
|------------------|----------------------------------------------------------------------------------|-------------------|
| `host`           | Environment URL, for example, `https://platform.kore.ai`                         | string, required  |
| `streamId`       | `botId` or `streamId`. You can access it from the General Settings page of the bot. | string, required  |
| `contactListId`  | Unique identifier of the contact list to update.                                 | string, required  |

## Query Parameters

| **Parameter** | **Description**                                 | **Type**          |
|---------------|--------------------------------------------------|-------------------|
| `accountId`   | The unique ID associated with the account.       | string, required  |

## Sample Request

```
curl --location --request PUT 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/contactList/{{contactListId}}?accountId={{accountId}}' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--data '{
    "name": "Contact list of Passive June 27- Updated"
}'
```

## Sample Response

```
{
  "status": "success",
  "message": "Contact list name updated successfully",
  "data": {
    "_id": "cl-4db9a03-07a3-4009-973a-b8940e81xxxx",
    "name": "Contact list of Passive June 27 - Updated",
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
    "updatedAt": "2025-06-27T12:34:56.789Z"
  }
}
```

## Response Body Parameters

| **Parameter**                     | **Description**                                                       | **Type**  |
|----------------------------------|------------------------------------------------------------------------|-----------|
| `_id`                            | Unique identifier of the contact list.                                | string    |
| `name`                           | Updated name of the contact list.                                     | string    |
| `description`                    | Description associated with the contact list.                         | string    |
| `totalRecordCount`              | Total number of records in the contact list.                          | integer   |
| `status`                         | Current status of the contact list. Possible value: `Ready`.          | string    |
| `mapping`                        | Mapping of CSV fields to system-recognized field names.               | object    |
| `mapping.firstName`             | Field mapped to the contact's first name.                             | string    |
| `mapping.lastName`              | Field mapped to the contact's last name.                              | string    |
| `mapping.phoneNumber`          | Field mapped to the contact's phone number.                           | string    |
| `mapping.timeZone`             | Field mapped to the contact's time zone.                              | string    |
| `mapping.uniqueId`             | Field mapped to the contact's unique identifier.                      | string    |
| `isListInUse`                   | Indicates if the list is currently associated with an active campaign.| boolean   |
| `listType`                       | Type of the list. Example: `call`.                                    | string    |
| `campaignInUse`                 | An array of campaign IDs that use this contact list.                  | array     |
| `source`                         | Source of the contact list. Example: `passiveApi`.                    | string    |
| `apiConfigurations`             | API-specific configuration for syncing.                               | object    |
| `apiConfigurations.dataSyncMode`| Indicates how duplicate data is handled. Value: `allowDuplicates`.    | string    |
| `files`                          | List of file metadata objects (empty if no file is attached).         | array     |
| `createdAt`                      | ISO timestamp of when the contact list was created.                   | string    |
| `updatedAt`                      | ISO timestamp of the most recent update to the contact list.          | string    |