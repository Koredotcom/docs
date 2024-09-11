# Delete a Queue

To delete a specific queue with the given  `streamId` and `queueId`.

| **METHOD**          | **DELETE**                                               |
|-----------------|------------------------------------------------------|
| **Endpoint**       | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/queues/{id}` |
| **Content Type**    | `application/json`                                   |
| **Authorization**   | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**       | Configuration                                        |

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                       | **TYPE**   |
|---------------|-------------------------------------------------------|------------|
| host          | Environment URL, for example, https://platform.kore.ai | string, required |
| botId         | botId or streamId. You can access it from the General Settings page of the bot. | string, required |
| id            | Can be taken from the [/queues GET API](../contact-center/get-a-specific-queue.md).               | string, required |

## Sample Request

```
curl --location --request DELETE 'http://{{host}}/agentassist/api/v1/public/st-0aae83f7-49c7-58c8-921a-29d84d03xxxx/queues' \
--header 'accept: application/json' \
--header 'accountId: 64dc99337ac0b4d3d684exxx' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTdlZjBkY2IwLTQ1ZTItNTY3YS1hYzMyLTkwNTA1NzdmMWIyYiJ9.7t145BjU0eZDdlnXYazmqkVT-8WpDIUgCquQM0Uxxxx' \
--header 'Content-Type: application/json' \
--data ''
```