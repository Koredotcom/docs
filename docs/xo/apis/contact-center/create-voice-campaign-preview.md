# Create Voice Campaign API - Preview Mode

Use this API to create a voice campaign that uses Preview dialing mode. In this mode, agents review contact information before initiating calls. The campaign routes answered calls to a specified agent queue.

| **Method**       | POST                                                                                                                                                         |
|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**     | `https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign?campaignType=voice`                                     |
| **Content-Type** | `application/json`                                                                                                                                           |
| **Authorization**| `auth: {{JWT}}`  <br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token)                      |
| **API Scope**    | Campaign Management                                                                                                                                          |

## Path Parameters

| **Parameter** | **Description**                                                                                   | **Type**          |
|---------------|---------------------------------------------------------------------------------------------------|-------------------|
| `host`        | Environment URL, for example, `https://platform.kore.ai`                                          | string, required  |
| `botId`    | You can access it from the General Settings page of the bot.                  | string, required  |

## Query Parameter

| **Parameter**   | **Description**                              | **Type**          |
|------------------|----------------------------------------------|-------------------|
| `campaignType`   | Type of Campaign. Use `sms`.                 | string, required  |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign?campaignType=voice' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--header 'iid: st-0603182c-7ffb-53c3-b307-47ca14b9xxxx' \
--header 'accountId: 67777ce93e25326494e9xxxx' \
--data '{
    "name": "Billing Reminder Voice Campaign",
    "description": "Progressive dialing campaign to remind customers about upcoming bill payments. Connects to an agent if available, else plays a recorded message",
    "contactLists": [
        "Recent Buyers - Q2 2025"
    ],
    "priority": "5",
    "dialingMode": "Preview",
    "dialingStrategy": {
        "callerId": {
            "phoneNumber": "+181234567"
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
        "maxAttemptsPerRecord": 3,
        "defaultRetryPeriod": 10,
        "maxRingTime": 30
    },
    "schedule": {
        "isSchedulingEnabled": false
    },
    "queue_name": "Default Queue",
    "enableMachineDetect": false,
    "maxSkips": 1,
    "campaignType": "voice"
}'
```

## Headers

| **Header** | **Description**                   | **Required/Optional** |
|------------|-----------------------------------|------------------------|
| `auth`     | JWT token for authentication.     | required               |
| `iid`     | The Application Id.     | required               |
| `accountId`     | The Account Id.     | required               |

## Body Parameters

| **Header**                                       | **Description**                                                  | **Type**              |
|--------------------------------------------------|------------------------------------------------------------------|-----------------------|
| `name`                                           | Name of the campaign.                                            | string, required      |
| `description`                                    | Description of the campaign.                                     | string, optional      |
| `contactLists`                                   | List of contact list names to use.                               | array of strings, required |
| `priority`                                       | Campaign priority (for example, `"5"`).                          | string, required      |
| `dialingMode`                                    | Must be set to `Progressive` for agent-routed dialing.           | string, required      |
| `dialingStrategy`                                | Strategy details for dialing (caller ID, hours, retry, ring time).| object, required      |
| `dialingStrategy.callerId.phoneNumber`           | Outgoing caller ID number.                                       | object, required      |
| `dialingStrategy.callingHours`                   | Weekly schedule with time zone and allowed calling windows.      | object, required      |
| `dialingStrategy.dialingOrder`                   | Order of record processing (for example, `FIFO`).                | string, required      |
| `dialingStrategy.maxAttemptsPerRecord`           | Max number of call attempts per contact.                         | number, required      |
| `dialingStrategy.defaultRetryPeriod`             | Retry interval (in minutes).                                     | number, required      |
| `dialingStrategy.maxRingTime`                    | Max ring duration per attempt (in seconds).                      | number, required      |
| `schedule`                                       | Indicates if scheduled execution is enabled.                     | object, required      |
| `schedule.isSchedulingEnabled`                   | Set to `false` to start immediately without scheduling.          | boolean, required     |
| `queue_name`                                     | The queue to which answered calls are routed.                    | string, required      |
| `enableMachineDetect`                            | Whether to enable machine detection.                             | boolean, optional     |
| `maxSkips`                                       | Max number of record skips allowed per agent.                    | number, optional      |
| `campaignType`                                   | Must be `"voice"`.                                               | string, required      |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign Voice From API- With Preview Dialing Mode- 2 creation in progress",
    "id": "cd-c806ae6-8e00-4131-ba20-bc072038xxxx",
    "data": {
        "campId": "cd-c806ae6-8e00-4131-ba20-bc072038xxxx"
    }
}
```

## Response Body Parameters

| **Parameter**   | **Description**                                 | **Type**  |
|----------------|--------------------------------------------------|-----------|
| `status`       | Status of the operation (`success`).             | string    |
| `message`      | Descriptive message of the action result.        | string    |
| `id`           | Unique identifier for the campaign.              | string    |
| `data.campId`  | Unique ID of the campaign.                       | string    |