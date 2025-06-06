# Control Transcription API

This API is used to control the transcription session of a bot conversation. It lets you end an ongoing transcription session by sending the appropriate action.

| **Field**         | **Value** |
|-------------------|-----------|
| **Method**        | POST |
| **Endpoint**      | `https://{{host}}/api/1.1/public/bot/{{botid}}/control/transcription?conversationId={{conversationId}}` |
| **Content Type**  | `application/json` |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**     | AgentAssist Transcription |

## Path Parameters

| **Parameter** | **Required/Optional** | **Description** |
|---------------|------------------------|------------------|
| `host`        | Required               | Environment URL, for example, `https://platform.kore.ai` |
| `botId`       | Required               | Unique ID of the bot |

## Query Parameters

| **Parameter**     | **Required/Optional** | **Description**                          |
|-------------------|------------------------|------------------------------------------|
| `conversationId`  | Required               | Unique identifier of the bot conversation |

## Sample Request

```
curl --location 'https://{{host}}/api/1.1/public/bot/st-4b8bb9d0-096d-56e5-b72f-f43ecf1xxxxx/control/transcription?conversationId=CAe8a34d2556235bcf0cbc51e98bbxxxxx' \
--header 'auth: {{JWT_TOKEN}}' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer xxxxOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydWUsImlhdCI6MTUxNjIzOTAyMiwiYXBwSWQiOiJjcy0zMWVhZDc5Zi0xNDhlLTVmZDUtOTdlNC1mZmI0ZmZjY2FhOTAifQ.b4eBlpjTEkywayWzmgXf-PeKC-6-suxxxxx' \
--data '{
    "action": "end"
}
'
```

## Body Parameters

| **Parameter** | **Description**                                                                                                                                   | **Mandate** |
|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------|-------------|
| `action`      | The control action to be performed. In this case, the value must be `"end"` to terminate the transcription session.                              | Required    |

## Sample Response

```
{
    "status": "success"
}
```