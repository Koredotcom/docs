# Add Contacts to Contact List API

Use this API to add one or more contacts to an existing contact list.

| **Method**    | POST |
|---------------|------|
| **Endpoint**  | `https://{{host}}/api/1.1/public/{{streamId}}/campaign/contactList/addContacts?accountId={{accountId}}` |
| **Content-Type** | `application/json` |
| **Authorization** | `auth: {{JWT}}`  <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope** | Campaign Management |

## Path Parameters

| **Parameter** | **Description** | **Type** |
|---------------|----------------|----------|
| `host`        | Environment URL, for example, `https://platform.kore.ai` | string, required |
| `streamId`    | botId or streamId. You can access it from the General Settings page of the bot. | string, required |

## Query Parameter

| **Parameter** | **Description**                            | **Type**         |
|---------------|--------------------------------------------|------------------|
| `accountId`   | The unique ID associated with the account. | string, required |

## Sample Request

```
curl --location 'https://{{host}}/api/1.1/public/{{streamId}}/campaign/contactList/addContacts?accountId={{accountId}}' \
--header 'auth: <token>' \
--header 'iid: st-eb9fd8be-e88c-5ab0-908d-8da48793xxxx' \
--header 'accountId: 6818bd1c713e9c3db50bxxxx' \
--header 'Content-Type: application/json' \
--data-raw '{
    "contact_list_name": "Contact list of Passive June 27",
    "data": [{
        "phoneNumber": "9122333445566",
        "first name": "John",
        "last name": "Doe",
        "email": "john.doe@abc.com"
    }]
}'
```

## Headers

| **Header**   | **Description**                                                                 | **Required/Optional** |
|--------------|----------------------------------------------------------------------------------|------------------------|
| `iid`        | Stream or application ID. For example, `st-eb9fd8be-e88c-5ab0-908d-8da48793xxxx` | required               |
| `accountId`  | The unique ID associated with the account.                                       | string, required       |

## Body Parameter

| **Parameter**        | **Description**                                           | **Type**         |
|----------------------|-----------------------------------------------------------|------------------|
| `contact_list_name`  | Name of the contact list to which contacts must be added. | string, required |

## Sample Response

```
{
    "status": "success",
    "message": "Contacts queued for addition."
}
```

## Response Body Parameters

| **Parameter** | **Description**                               | **Type** |
|---------------|-----------------------------------------------|----------|
| `status`      | Indicates the status. Value: `"success"`      | string   |
| `message`     | Success message. Indicates queued operation.  | string   |
