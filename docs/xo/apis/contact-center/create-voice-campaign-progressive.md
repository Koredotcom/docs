# Create Voice Campaign API - Progressive Mode

Use this API to create a voice campaign with Progressive dialing mode that routes answered calls to live agents via a queue.

| **Method**      | POST                                                                                          |
|----------------|-----------------------------------------------------------------------------------------------|
| **Endpoint**    | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign?accountId={{accountId}}&campaignType={{campaignType}}` |
| **Content-Type**| `application/json`                                                                            |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**   | Campaign Management                                                                           |

## Path Parameters

| **Parameter** | **Description**                                                                                  | **Type**         |
|---------------|--------------------------------------------------------------------------------------------------|------------------|
| `host`        | Environment URL, for example, `https://platform.kore.ai`                                         | string, required |
| `streamId`    | `botId` or `streamId`. You can access it from the General Settings page of the bot.             | string, required |

## Query Parameters

| **Parameter**   | **Description**                                      | **Type**         |
|-----------------|------------------------------------------------------|------------------|
| `accountId`     | The unique ID associated with the account.           | string, required |
| `campaignType`  | Type of campaign. Use `"sms"`                        | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign?accountId={{accountId}}&campaignType={{campaignType}}' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--data '{
    "name": "Voice From API-With Progressive Dailing Mode- 2",
    "description": "Voice From API - With Progressive Dailing Mode and Queue- 2",
    "contactLists": [
        "APIContctList"
    ],
    "priority": "5",
    "dialingMode": "Progressive",
    "dialingStrategy": {
        "callerId": {
            "phoneNumber": "+17654321012"
        },
        "callingHours": {
            "frequency": "WEEKLY",
            "timezone": "Asia/Kolkata",
            "days": [
                {
                    "day": "MO",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                },
                {
                    "day": "TU",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                },
                {
                    "day": "WE",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                },
                {
                    "day": "TH",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                },
                {
                    "day": "FR",
                    "start": "9:00 AM",
                    "end": "6:00 PM"
                }
            ]
        },
        "dialingOrder": "FIFO",
        "maxAttemptsPerRecord": 1,
        "defaultRetryPeriod": 1,
        "maxRingTime": 21
    },
    "schedule": {
        "isSchedulingEnabled": false
    },
    "queue_name": "Default Queue",
    "enableMachineDetect": false,
    "campaignType": "voice"
}'
```

## Body Parameters

| **Header**             | **Description**                                                       | **Type**                 |
|------------------------|-----------------------------------------------------------------------|--------------------------|
| `name`                 | Name of the campaign.                                                 | string, required         |
| `description`          | Description of the campaign.                                          | string, optional         |
| `contactLists`         | List of contact list names to use.                                    | array of strings, required |
| `priority`             | Campaign priority (for example, `"5"`).                               | string, required         |
| `dialingMode`          | Must be set to `Progressive` for agent-routed dialing.                | string, required         |
| `dialingStrategy`      | Strategy details for dialing (caller ID, hours, retry, ring time).    | object, required         |
| `schedule`             | Indicates if scheduled execution is enabled.                          | object, required         |
| `queue_name`           | The queue to which answered calls are routed.                         | string, required         |
| `enableMachineDetect`  | Whether to enable machine detection.                                  | boolean, optional        |
| `campaignType`         | Must be `"voice"`.                                                    | string, required         |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign Voice From API-With Progressive Dailing Mode- 2 creation in progress",
    "id": "cd-ece75d7-3261-4c1c-85b8-1ca2ae68xxxx",
    "data": {
        "campId": "cd-ece75d7-3261-4c1c-85b8-1ca2ae68xxxx"
    }
}
```

## Response Body Parameters

| **Parameter**     | **Description**                                      | **Type**         |
|-------------------|------------------------------------------------------|------------------|
| `status`          | Status of the operation (`success`).                 | string           |
| `message`         | Descriptive message of the action result.            | string           |
| `id`              | Unique identifier for the campaign.                  | string           |
| `data.campId`     | Unique ID of the campaign.                           | string           |