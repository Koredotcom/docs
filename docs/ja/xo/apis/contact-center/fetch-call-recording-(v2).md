# Fetch Call Recording (Version 2)

This API facilitates the downloading of voice call recordings. The API provides an S3-hosted URL where the recording can be accessed.

!!! NOTE

    The earlier version of the [Call Recording API](../contact-center/fetch-call-recording.md) is expected to be deprecated in the future. We will ensure existing customers receive sufficient advance notice. However, we recommend that new customers utilize v2 moving forward.

| **Method**        | GET                                                                                                  |
|---------------|------------------------------------------------------------------------------------------------------|
| **Endpoint**      | `https://{{host}}/api/public/bot/{{:streamId}}/v2/recordings`                                        |
| **Content Type**  | `application/json`                                                                                   |
| **Authorization** | `auth: {{JWT}}` <br>                                     See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**     | SmartAssist Recordings                                                                               |

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                                           | **TYPE**          |
|-----------|-----------------------------------------------------------------------|---------------|
| host      | Environment URL, for example, https://platform.kore.ai            | string, required |
| BotId     | BotId or StreamId. You can access it from the General Settings page of the bot. | string, required |

## Query Parameters

| **PARAMETER** | **DESCRIPTION**                                                                                      | **TYPE**            |
|-----------|--------------------------------------------------------------------------------------------------|-----------------|
| userId    | The ID of the user whose conversation history will be accessed. It can be a user email ID or an enterprise-assigned unique ID. You can access it from the conversation logs. | string, required |
| sessionId | The unique identifier for the session record. You can access it from the conversation logs.      | string, required |

## Sample Request

```
curl --location 'https://{{host}}/api/public/bot/st-fd81a2b1-43af-544d-8082-831bc09cxxxx/v2/recordings?sessionId=65e7133a3242653c58d7xxxx' \
--header 'auth: {{JWT_TOKEN}}' \
--header 'Content-Type: application/json'
```

## Sample Response

```
{
   "status": "success",
   "recording": [
       {
           "fileName": "22d8ca62d5c430a03a8d06999289a7c0-merged.wav",
           "fileUrl": "https://uat-smartassist.kore.ai/api/getMediaStream/smartassistrecording/UAT/o-ddda92ea-9174-5c0d-8938-4b5f13ab89bf/st-fd81a2b1-43af-544d-8082-831bc09c78a3/2024/05-03-2024/f-4a76076d-56f1-5b99-999f-5c760568405a.wav?e=1709706278&n=6398115875&s=InpqMWpnVzRkajFlc1RZeGVzaDBHM2pwWFFibzVwcEloTkkrSW5UbTZ0ek09Ig$$"
       }
   ]
}
```

## Recording Statuses

| **STATUS**            | **DESCRIPTION**                                                |
|-------------------|------------------------------------------------------------|
| success           | The URL is generated successfully.                         |
| media_unavailable | The recording is not available on the server.              |
| call_in_progress  | A call is currently ongoing.                               |
| media_in_progress | The phase after the call ends but before the media generation begins. |