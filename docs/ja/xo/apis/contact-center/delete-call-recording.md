# Delete Call Recording API

This API is used to delete Voice Call Recordings. The response varies based on whether the execution is successful or not.

| **Method**        | DELETE                                                                                   |
|---------------|------------------------------------------------------------------------------------------|
| **Endpoints**     | `https://{{host}}/api/public/bot/{{:streamId}}/v2/recordings?sessionId={{sessionId}}` |
| **Content Type**  | `application/json`                                                                      |
| Authorization | `auth: {{JWT}}`<br>See [How to generate the JWT Token.](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**     | Delete Recordings

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                    | **TYPE**           |
|-----------|------------------------------------------------|----------------|
| host      | Environment URL, for example, https://platform.kore.ai | string, required |
| streamId | Bot ID or Stream ID. You can access it from the General Settings page of the bot. | string, required |

## Query Parameter

| **PARAMETER** | **DESCRIPTION**                                    | **TYPE**           |
|-----------|------------------------------------------------|----------------|
| sessionId      | The unique identifier for the session record. You can access it from the conversation logs.  | string, required |

## Sample Request

```
curl --location --request DELETE 'https://{{host}}/api/1.1/public/bot/st-b110e148-7428-5295-960b-099e8167xxxx/recordings?sessionId=6627b9adb9af28711b78xxxx' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTQ0YTIzOTNmLTk4MTEtNWY3Mi04NGUyLTM0YTY4MzI4N2I1ZCJ9.kW9tN1gTUW7QjFrHvwBp-EcRu8QhBK223Xi2NgZxxxx'
```

## Sample Request

```
{
   "message": "Call recordings deleted successfully",
   "sessionId": "66627b9adb9af28711b78xxxx"
}
```