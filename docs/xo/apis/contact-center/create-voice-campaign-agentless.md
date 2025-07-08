# Create Voice Campaign API - Agentless Mode

Use this API to create a new outbound voice campaign with agentless dialing mode.

| **Method**        | POST                                                                                                                                                                                                                        |
|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**      | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign?accountId={{accountId}}&campaignType={{campaignType}}`                                                                                                     |
| **Content-Type**  | `application/json`                                                                                                                                                                                                            |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token).                                                                                 |
| **API Scope**     | Campaign Management                                                                                                                                                                                                           |

## Path Parameters

| **Parameter** | **Description** | **Type** |
|---------------|------------------|----------|
| `host` | Environment URL, for example, `https://platform.kore.ai` | string, required |
| `streamId` | botId or streamId. You can access it from the General Settings page of the bot. | string, required |

## Query Parameters

| **Parameter**   | **Description**                                  | **Type**           |
|-----------------|--------------------------------------------------|--------------------|
| `accountId`     | The unique ID associated with the account.       | string, required |
| `campaignType`  | Type of Campaign. Use `"sms"`                    | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign?accountId={{accountId}}&campaignType={{campaignType}}' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--data '{
    "name": "Voice From API - With Agentless Dialing Mode- 2",
    "description": "Voice From API - With Agentless Dialing Mode and Start Flow- 2",
    "contactLists": [
        "APIContctList"
    ],
    "priority": "5",
    "dialingMode": "Agentless",
    "dialingStrategy": {
        "callerId": {
            "phoneNumber": "+1345678902"
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
    "experienceFlowName": "Voice Flow 2",
    "enableMachineDetect": false,
    "campaignType": "voice"
}'
```

## Header

| **Header** | **Description**                   | **Required/Optional** |
|------------|-----------------------------------|------------------------|
| `auth`     | JWT token for authentication.     | required               |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign Voice From API - With Agentless Dialing Mode- 2 creation in progress",
    "id": "cd-02099ba-dc11-4bb0-a7ea-253863c8xxxx",
    "data": {
        "campId": "cd-02099ba-dc11-4bb0-a7ea-253863c8xxxx"
    }
}
```

## Response Body Parameters

| **Parameter**     | **Description**                                 | **Type** |
|-------------------|-------------------------------------------------|----------|
| `status`          | Status of the operation (`success`).            | string   |
| `message`         | Descriptive message of the action result.       | string   |
| `id`              | Unique identifier for the campaign.             | string   |
| `data.campId`     | Unique ID of the campaign.                      | string   |