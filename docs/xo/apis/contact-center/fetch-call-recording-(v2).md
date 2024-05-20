# Fetch Call Recording (Version 2)

This API facilitates the downloading of voice call recordings. The API provides an S3-hosted URL where the recording can be accessed.

!!! NOTE

    The earlier version of the [Call Recording API](../contact-center/fetch-call-recording.md) is expected to be deprecated in the future. We will ensure existing customers receive sufficient advance notice. However, we recommend that new customers utilize v2 moving forward.

<table>
  <tr>
   <td>Method
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/api/public/bot/{{:streamId}}/v2/recordings</code>
   </td>
  </tr>
  <tr>
   <td>Content Type
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>SmartAssist Recordings
   </td>
  </tr>
</table>

## Path Parameters

<table>
  <tr>
   <td>PARAMETER
   </td>
   <td>DESCRIPTION
   </td>
   <td>TYPE
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>BotId or StreamId. You can access it from the General Settings page of the bot.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Query Parameters

<table>
  <tr>
   <td>PARAMETER
   </td>
   <td>DESCRIPTION
   </td>
   <td>TYPE
   </td>
  </tr>
  <tr>
   <td>userId
   </td>
   <td>The ID of the user whose conversation history will be accessed. It can be a user email ID or an enterprise-assigned unique ID. You can access it from the conversation logs.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>sessionId
   </td>
   <td>The unique identifier for the session record. You can access it from the conversation logs.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://uat-smartassist.kore.ai/api/public/bot/st-fd81a2b1-43af-544d-8082-831bc09cxxxx/v2/recordings?sessionId=65e7133a3242653c58d7xxxx' \
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

<table>
  <tr>
   <td>STATUS
   </td>
   <td>DESCRIPTION
   </td>
  </tr>
  <tr>
   <td>success
   </td>
   <td>The URL is generated successfully.
   </td>
  </tr>
  <tr>
   <td>media_unavailable
   </td>
   <td>The recording is not available on the server.
   </td>
  </tr>
  <tr>
   <td>call_in_progress
   </td>
   <td>A call is currently ongoing.
   </td>
  </tr>
  <tr>
   <td>media_in_progress
   </td>
   <td>The phase after the call ends but before the media generation begins.
   </td>
  </tr>
</table>