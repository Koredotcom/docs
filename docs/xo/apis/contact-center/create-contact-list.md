# Create Contact List API

Use this API to create a new contact list for use in passive voice campaigns.

| **Method**       | POST                                                                                                                             |
|------------------|----------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**     | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/contactList/createContactList?accountId={{accountId}}`        |
| **Content-Type** | `application/json`                                                                                                               |
| **Authorization**| `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**    | Campaign Management                                                                                                              |

## Path Parameters

| **Parameter** | **Description**                                                                                     | **Type**          |
|---------------|-----------------------------------------------------------------------------------------------------|-------------------|
| `host`        | Environment URL, for example, `https://platform.kore.ai`                                            | string, required  |
| `streamId`    | `botId` or `streamId`. You can access it from the **General Settings** page of the bot.            | string, required  |

## Query Parameter

| **Parameter** | **Description**                              | **Type**          |
|---------------|----------------------------------------------|-------------------|
| `accountId`   | The unique ID associated with the account.   | string, required  |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/contactList/createContactList?accountId={{accountId}}' \
--header 'auth: <token>' \
--header 'iid: st-eb9fd8be-e88c-5ab0-908d-8da48793xxxx' \
--header 'Content-Type: application/json' \
--data '{
    "name": "Contact list of Passive June 27",
    "description": "contact list Description",
    "source": "passiveApi",
    "allowDuplicates": true
}'
```

## Header

| **Header** | **Description**                                                                 | **Required/Optional** |
|------------|----------------------------------------------------------------------------------|------------------------|
| `iid`      | Stream or application ID. For example, `st-eb9fd8be-e88c-5ab0-908d-8da48793xxxx` | required               |

## Body Parameters

| **Parameter**     | **Description**                                                    | **Type**         |
|-------------------|--------------------------------------------------------------------|------------------|
| `name`            | Name of the contact list                                           | string, required |
| `description`     | Description of the contact list                                    | string, optional |
| `source`          | Source of the list. Use `passiveApi` for API-based ingestion       | string, required |
| `allowDuplicates` | Set to `true` to allow duplicate records                           | boolean, required |

## Sample Response

```
{
    "status": "success",
    "message": "Contact list Contact list of Passive June 27 created successfully",
    "data": {
        "isActive": true,
        "name": "Contact list of Passive June 27",
        "description": "contact list Description",
        "totalRecordCount": 0,
        "status": "Ready",
        "createdBy": "u-4baef569-f6c2-5486-a119-96857249xxxx",
        "updatedBy": "u-4baef569-f6c2-5486-a119-96857249xxxx",
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
        "updatedAt": "2025-06-27T07:37:17.489Z",
        "_id": "cl-4db9a03-07a3-4009-973a-b8940e81xxxx",
        "allowDuplicates": true
    }
}
```

## Response Body Parameters

| **Parameter**                      | **Description**                                                                 | **Type**         |
|------------------------------------|---------------------------------------------------------------------------------|------------------|
| `_id`                              | Unique ID of the contact list                                                  | string           |
| `name`                             | Name of the contact list                                                       | string           |
| `description`                      | Description of the contact list                                                | string           |
| `status`                           | Current state of the contact list. Usually `Ready`                             | string           |
| `isActive`                         | Indicates if the contact list is active                                        | boolean          |
| `totalRecordCount`                 | Number of records currently in the list                                        | number           |
| `source`                           | Source of list creation. For passive API, the value is `passiveApi`            | string           |
| `allowDuplicates`                 | Indicates if duplicate contact records are allowed                             | boolean          |
| `createdAt`                        | Timestamp when the list was created (ISO format)                               | string           |
| `updatedAt`                        | Timestamp when the list was last updated (ISO format)                          | string           |
| `createdBy`                        | Internal ID of the user who created the list                                   | string           |
| `updatedBy`                        | Internal ID of the user who last updated the list                              | string           |
| `mapping`                          | Field mapping for contact data                                                 | object           |
| `apiConfigurations`               | Contains passive API sync configuration (for example, `dataSyncMode`)                | object           |
| `apiConfigurations.dataSyncMode` | Describes how the API handles duplicate entries (`allowDuplicates`)            | string           |
| `listType`                         | Type of list. Value is `call` for voice campaigns                              | string           |
| `isListInUse`                      | Indicates if the contact list is currently associated with any campaign        | boolean          |
| `campaignInUse`                    | List of campaigns (IDs) currently using this list (empty if unused)            | array            |
| `files`                            | List of file objects, if any uploaded via UI or API (empty for passive API)    | array            |