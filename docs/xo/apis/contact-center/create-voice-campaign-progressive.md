# Create Voice Campaign API - Progressive Mode

Use this API to create a voice campaign with Progressive dialing mode that routes answered calls to live agents via a queue.

| **Method**      | POST                                                                                          |
|----------------|-----------------------------------------------------------------------------------------------|
| **Endpoint**    | `https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign?campaignType=voice` |
| **Content-Type**| `application/json`                                                                            |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**   | Campaign Management                                                                           |

## Path Parameters

| **Parameter** | **Description**                                                                                  | **Type**         |
|---------------|--------------------------------------------------------------------------------------------------|------------------|
| `host`        | Environment URL, for example, `https://platform.kore.ai`                                         | string, required |
| `botId`    | You can access it from the General Settings page of the bot.             | string, required |

## Query Parameter

| **Parameter**   | **Description**                                      | **Type**         |
|-----------------|------------------------------------------------------|------------------|
| `campaignType`  | Type of campaign. Use `"sms"`                        | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign?campaignType=voice' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--header 'iid: st-0603182c-7ffb-53c3-b307-47ca14b9xxxx' \
--header 'accountId: 67777ce93e25326494e9xxxx' \
--data '{
    "name": "Service Renewal Outreach Campaign",
    "description": "Connects customers with live agents to assist with upcoming service renewals using progressive dialing. Ensures personalized support and improved engagement.",
    "contactLists": [
        "Recent Buyers - Q2 2025"
    ],
    "priority": "5",
    "dialingMode": "Progressive",
    "dialingStrategy": {
        "callerId": {
            "phoneNumber": "+1812345678"
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
    "message": "Campaign Service Renewal Outreach Campaign creation in progress",
    "data": {
        "name": "Service Renewal Outreach Campaign",
        "lname": "service renewal outreach campaign",
        "description": "Connects customers with live agents to assist with upcoming service renewals using progressive dialing. Ensures personalized support and improved engagement.",
        "priority": "5",
        "dialingMode": "Progressive",
        "dialingStrategy": {
            "callerId": {
                "phoneNumber": "+1812345678"
            },
            "callingHours": {
                "frequency": "WEEKLY",
                "days": [
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "MO"
                    },
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "TU"
                    },
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "WE"
                    },
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "TH"
                    },
                    {
                        "start": "9:00 AM",
                        "end": "6:00 PM",
                        "day": "FR"
                    }
                ],
                "timezone": "Asia/Kolkata"
            },
            "dialingOrder": "FIFO",
            "maxAttemptsPerRecord": 3,
            "defaultRetryPeriod": 10,
            "maxRingTime": 30
        },
        "status": "Preparing",
        "createdAt": "2025-06-26T10:44:10.322Z",
        "updatedAt": "2025-06-26T10:44:10.322Z",
        "id": "cd-26d3ec6-e1ec-4abd-a21c-3109795exxxx",
        "contactLists": [
            "Recent Buyers - Q2 2025"
        ],
        "enableMachineDetect": false
    }
}
```

## Response Body Parameters

### Response Parameters

| Parameter                                              | Description                                                                 | Type                    |
|--------------------------------------------------------|-----------------------------------------------------------------------------|-------------------------|
| `status`                                               | Indicates the overall response status. Example: `"success"`                | String                  |
| `message`                                              | Descriptive message about the result.                                      | String                  |
| `data`                                                 | Contains the campaign configuration details.                               | Object                  |
| `data.name`                                            | Display name of the campaign.                                              | String                  |
| `data.lname`                                           | Lowercase name of the campaign, used internally.                           | String                  |
| `data.description`                                     | Description of the campaign purpose and functionality.                     | String                  |
| `data.priority`                                        | Campaign priority level.                                                   | String                  |
| `data.dialingMode`                                     | Dialing mode used for the campaign. Example: `"Progressive"`              | String                  |
| `data.dialingStrategy`                                 | Defines dialing strategy configuration.                                    | Object                  |
| `data.dialingStrategy.callerId.phoneNumber`            | Caller ID phone number used for outbound calls.                            | String                  |
| `data.dialingStrategy.callingHours`                    | Defines the allowed calling hours and schedule.                            | Object                  |
| `data.dialingStrategy.callingHours.frequency`          | Calling frequency. Example: `"WEEKLY"`                                     | String                  |
| `data.dialingStrategy.callingHours.days`               | Daily schedules with start/end time and day.                               | Array of Object         |
| `data.dialingStrategy.callingHours.days[].start`       | Start time of calling window.                                              | String (hh:mm AM/PM)    |
| `data.dialingStrategy.callingHours.days[].end`         | End time of calling window.                                                | String (hh:mm AM/PM)    |
| `data.dialingStrategy.callingHours.days[].day`         | Day of the week. Example: `"MO"`, `"TU"`                                   | String (2-letter)       |
| `data.dialingStrategy.callingHours.timezone`           | Timezone used for the calling schedule. Example: `"Asia/Kolkata"`         | String                  |
| `data.dialingStrategy.dialingOrder`                    | Order in which records are dialed. Example: `"FIFO"`                       | String                  |
| `data.dialingStrategy.maxAttemptsPerRecord`            | Maximum retry attempts for each record.                                    | Integer                 |
| `data.dialingStrategy.defaultRetryPeriod`              | Default wait time between retries.                                         | Integer (minutes)       |
| `data.dialingStrategy.maxRingTime`                     | Maximum ring time before hanging up.                                       | Integer (seconds)       |
| `data.status`                                          | Current state of the campaign. Example: `"Preparing"`                      | String                  |
| `data.createdAt`                                       | Campaign creation timestamp.                                               | String (ISO 8601)       |
| `data.updatedAt`                                       | Last updated timestamp.                                                    | String (ISO 8601)       |
| `data.id`                                              | Unique identifier for the campaign.                                        | String                  |
| `data.contactLists`                                    | Names of associated contact lists.                                         | Array of String         |
| `data.enableMachineDetect`                             | Indicates whether machine detection is enabled.                            | Boolean                 |
