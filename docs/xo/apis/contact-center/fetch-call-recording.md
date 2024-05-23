# Fetch Call Recording

To retrieve the recording of a specific call using either the `userId` or `sessionId`.

| **Method**    | GET                                                                           |
|-----------|-------------------------------------------------------------------------------|
| **Endpoints** | `https://{{host}}/api/public/bot/{{BotID}}/recordings?{{userId}}`             |
|           | `https://{{host}}/api/public/bot/{{BotID}}/recordings?{{sessionId}}`          |
| **Content Type** | `application/json`                                                           |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope** | SmartAssist Recordings                                                        |

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                                           | **TYPE**            |
|-----------|-----------------------------------------------------------------------|-----------------|
| host      | Environment URL, for example, https://platform.kore.ai            | string, required|
| BotId     | BotId or StreamId. You can access it from the General Settings page of the bot.| string, required|

## Query Parameters

| **PARAMETER** | **DESCRIPTION**                                                           | **TYPE**            |
|-----------|-----------------------------------------------------------------------|-----------------|
| userId    | The ID of the user whose conversation history will be accessed. It can be a user email id or an enterprise-assigned unique id. | string, required|
| sessionId | The unique identifier for the session record.                         | string, required|

## Sample Requests

```
curl --location --request GET '{{host}}/api/1.1/public/bot/{{BotID}}/recordings?userId={{userId}}' \
--header 'auth: {{JWT_TOKEN}}'
curl --location --request GET '{{host}}/api/1.1/public/bot/{{BotID}}/recordings?sessionId={{sessionId}}' \
--header 'auth: {{JWT_TOKEN}}'
```

## Sample Response

```
{
    "recording": [
        "data:audio/wav;base64,{encodedFileInTheSpecifiedFormat}"
    ]
}
```