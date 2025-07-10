# Update Contact List by ID

Use this API to update a specific contact list associated with a campaign.

| **Method**     | PUT                                                                                   |
|----------------|----------------------------------------------------------------------------------------|
| **Endpoint**   | `https://{{host}}/agentassist/api/v1/public/{{IID}}/campaign/contactList/{{contactListId}}` |
| **Content-Type** | `application/json`                                                                   |
| **Authorization** | `auth: {{JWT}}` <br> See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**  | Campaign Management                                                                   |

## Path Parameters

| **Parameter**     | **Description**                                                                  | **Type**          |
|------------------|----------------------------------------------------------------------------------|-------------------|
| `host`           | Environment URL, for example, `https://platform.kore.ai`                         | string, required  |
| `IId`       | The application ID. | string, required  |
| `contactListId`  | Unique identifier of the contact list to update.                                 | string, required  |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{IID}}/campaign/contactList/createContactList' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--header 'iid: st-0603182c-7ffb-53c3-b307-47ca14b9xxxx' \
--header 'accountId: 67777ce93e25326494e9xxxx' \
--data '{
    "name1": "Renewal Due - July 2025",
    "description": "This list contains customers with services expiring in July 2025. It includes contact details and subscription info to help agents provide tailored support during live calls.",
    "source": "passiveApiIntegration",
    "allowDuplicates": true
}'

```

## Headers

| **Header** | **Description**                   | **Required/Optional** |
|------------|-----------------------------------|------------------------|
| `auth`     | JWT token for authentication.     | required               |
| `iid`     | The Application Id.     | required               |
| `accountId`     | The Account Id.     | required               |

## Body Parameters

| **Parameter**     | **Description**                                                    | **Type**         |
|-------------------|--------------------------------------------------------------------|------------------|
| `name`            | Name of the contact list                                           | string, required |
| `description`     | Description of the contact list                                    | string, optional |
| `source`          | Source of the list. Use `passiveApiIntegration` for API-based ingestion       | string, required |
| `allowDuplicates` | Set to `true` to allow duplicate records                           | boolean, required |

## Sample Response

```
{
    "status": "success",
    "message": "Contact list Renewal Due - August 2025 updated successfully",
    "data": {
        "contactListId": "cl-c2ce382-2516-457e-8eb4-9847deecxxxx",
        "body": {
            "name": "Renewal Due - August 2025",
            "orgId": "o-f8b351e7-f83a-51bd-bd42-d5d40861xxxx",
            "iId": "st-0603182c-7ffb-53c3-b307-47ca14b9xxxx",
            "listType": "call",
            "accountId": "67777ce93e25326494e9xxxx",
            "updatedBy": "u-eb5bbee1-6af9-5b9a-b471-03a3fe48xxxx"
        }
    }
}
```

## Response Body Parameters

| **Parameter**                          | **Description**                                                  | **Type**   |
|------------------------------------|--------------------------------------------------------------|--------|
| `status`                           | Indicates the success or failure of the API call.            | String |
| `message`                          | Message confirming the update operation.                     | String |
| `data`                             | Contains details of the updated contact list.                | Object |
| `data.contactListId`              | Unique identifier of the contact list.                       | String |
| `data.body`                        | Object with updated metadata of the contact list.            | Object |
| `data.body.name`                   | Name of the contact list.                                    | String |
| `data.body.orgId`                 | Unique identifier of the organization.                       | String |
| `data.body.iId`                   | Instance ID associated with the request context.             | String |
| `data.body.listType`              | Type of the list (for example, `call`, `sms`).                      | String |
| `data.body.accountId`             | Identifier of the account to which the list belongs.         | String |
| `data.body.updatedBy`             | Identifier of the user who performed the update.             | String |
