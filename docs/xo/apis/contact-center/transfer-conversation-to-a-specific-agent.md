# Transfer Conversation To a Specific Agent or Queue

To retrieve the recording of a specific call using either the `userId` or `sessionId`.To transfer a conversation to a specific agent with the given `botSessionId` and `aId` (agent Id) or queue using the `queueId`. Specific messages based on success or failure to transfer conversation are posted to the given `callbackUrl`.

| **Method**   | POST                                                                                      |
|----------|-------------------------------------------------------------------------------------------|
| **Endpoint**| [https://{{host}}/agentassist/api/v1/public/%7BstreamID%7D/assign-conversation](https://{{host}}/agentassist/api/v1/public/{streamID}/assign-conversation) |
| **Content Type** | `application/json`                                                                          |
| **Authorization** | `auth: {{JWT}}`<br> See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope** | Routing                                                                                   |

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                                                            | **TYPE**            |
|-----------|----------------------------------------------------------------------------------------|-----------------|
| host      | Environment URL, for example, `https://platform.kore.ai`                              | string, required|
| streamId  | BotId or StreamId. You can access it from the General Settings page of the bot.        | string, required|

## Query Parameters

Here is the HTML table converted to Markdown format:

| Parameter      | Description                                                                                       | Type               |
|----------------|---------------------------------------------------------------------------------------------------|--------------------|
| callbackUrl    | The URL in which message is posted. For example: `http://localhost:8009`                          | string, required   |
| orgId          | The orgId of the organization. For example: `o-fbfa482a-bf65-5386-963e-f00a8cc7xxxx`              | string, required   |
| aId            | The agent ID of the target agent. For example: `a-220172c-856e-4db6-a2d1-d4c2dabexxxx`            | string, required   |
| botSessionId   | The session ID of the bot. For example: `653a06c9aae89c5fbb4exxxx`                                | string, required   |
| queueId        | The queue ID of the target queue. For example: `qu-b5d3bb4-a1ac-4caa-9be6-55a5abc3xxxx`           | string, required   |

## Sample Requests

**Transfer to Agent**:

```
curl --location 'http://localhost/agentassist/api/v1/public/st-a0ec5267-a58a-5fbb-ab0e-e27ebc35xxxx/assign-conversation' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTUwZmViYWEzLTc0M2YtNTViMy04OTU2LTcxOGU5NmY2YmI5MCJ9.
W42GSwz5ibjk_vAx5Ukr_Q5Q4-O_zGn_jPmZuN8xxxx' \
--header 'accountid: 650d9eb6da96d0bc0d23xxxx' \
--header 'Content-Type: application/json' \
--data '{
"callbackUrl": "http://localhost:8009",
"orgId": "o-02c0d56d-fd90-5e24-8458-01be1d2exxxx",
"aId": "a-8cd2673-0cb7-462d-9453-0ee60e52xxxx",
"botSessionId": "6538f8a3c9cf425ee5cfxxxx"
}'
```
**Transfer to Queue**:
```
curl --location 'http://localhost/agentassist/api/v1/public/st-a0ec5267-a58a-5fbb-ab0e-e27ebc35xxxx/assign-conversation' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTUwZmViYWEzLTc0M2YtNTViMy04OTU2LTcxOGU5NmY2YmI5MCJ9.
W42GSwz5ibjk_vAx5Ukr_Q5Q4-O_zGn_jPmZuN8xxxx' \
--header 'accountid: 650d9eb6da96d0bc0d23xxxx' \
--header 'Content-Type: application/json' \
--data '{
"callbackUrl": "http://localhost:8009",
"orgId": "o-ee9eb154-b7e9-5387-a4a9-bc027a60xxxx",
"transferredType": "QUEUE",
"queueId": "qu-b5d3bb4-a1ac-4caa-9be6-55a5abc3xxxx",
"botSessionId": "66c2f6939489bfffc791xxxx"
}'
```
## Sample Responses

**Transfer to Agent**:

```
{
sessionId: "6538f8a3c9cf425ee5cfxxxx",
agentId: "a-8cd2673-0cb7-462d-9453-0ee60e52xxxx",
status: "transferred",
requestCompletedAt: 1698825180041
}
```
**Transfer to Queue**:

```
{
sessionId: "6538f8a3c9cf425ee5cfxxxx",
queueId: "qu-b5d3bb4-a1ac-4caa-9be6-55a5abc3xxxx",
status: “transferred”,
requestCompletedAt: 1698825180041
}
```