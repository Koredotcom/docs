# Update Voice Campaign API

Use this API to update the configuration details of an existing voice campaign using the dialing mode. This operation allows you to modify metadata, dialing strategies, schedules, and other runtime parameters.

| **Method**       | PUT |
|------------------|-----------|
| **Endpoint**     | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}&campaignType={{campaignType}}` |
| **Content-Type** | `application/json` |
| **Authorization**| `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**    | Campaign Management |

## Path Parameters

| **Parameter** | **Description** | **Type** |
|---------------|------------------|-----------|
| `host` | Environment URL, for example, `https://platform.kore.ai` | string, required |
| `streamId` | `botId` or `streamId`. You can access it from the General Settings page of the bot. | string, required |
| `campaignId` | Unique ID of the campaign to be updated. For example: `cd-ed19e3c7-3682-5e72-a839-af9e0711xxxx` | string, required |

## Query Parameters

| **Parameter** | **Description** | **Type** |
|---------------|------------------|-----------|
| `accountId` | The unique ID associated with the account. | string, required |
| `campaignType` | Type of Campaign. Use `"sms"` | string, required |

## Sample Request

```
curl --location --request PUT 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}&campaignType={{campaignType}}' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--data '{
    "name": "Voice From API- With Preview Dialing Mode- 2",
    "description": "Voice From API - With Preview Dialing Mode and queue- 2 - Updated Description",
    "contactLists": [
        "APIContctList"
    ],
    "priority": "5",
    "dialingMode": "Preview",
    "dialingStrategy": {
        "callerId": {
            "phoneNumber": "+1765432101"
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
    "maxSkips": 3,
    "campaignType": "voice"
}'
```

## Header

| **Header** | **Description**                    | **Required/Optional** |
|------------|------------------------------------|------------------------|
| `auth`     | JWT token for authentication.      | required               |

## Body Parameters

| **Parameter**                                 | **Description**                                                      | **Type**           |
|----------------------------------------------|----------------------------------------------------------------------|--------------------|
| name                                          | Name of the campaign.                                                | string, required   |
| description                                   | Description of the campaign.                                         | string, optional   |
| contactLists                                  | List of contact list names to use in the campaign.                   | array, required    |
| priority                                      | Campaign execution priority. For example, 5                          | string, optional   |
| dialingMode                                   | Dialing mode: `Preview`, `Progressive`, `Predictive`.                | string, required   |
| dialingStrategy                               | Configuration for how dialing should work.                           | object, required   |
| dialingStrategy.callerId                      | Caller ID details.                                                   | object, required   |
| dialingStrategy.callerId.phoneNumber          | Caller’s phone number in E.164 format.                               | string, required   |
| dialingStrategy.callingHours                  | Permitted days and times.                                            | object, required   |
| dialingStrategy.callingHours.frequency        | Frequency type. For example: `WEEKLY`.                               | string, required   |
| dialingStrategy.callingHours.timezone         | Time zone for the campaign. For example: `Asia/Kolkata`.             | string, required   |
| dialingStrategy.callingHours.days             | List of day/time windows.                                            | array, required    |
| dialingStrategy.callingHours.days.day         | Day of the week (`MO`, `TU`, `WE`, etc.).                            | string, required   |
| dialingStrategy.callingHours.days.start       | Start time (for example, `9:00 AM`).                                        | string, required   |
| dialingStrategy.callingHours.days.end         | End time (for example, `6:00 PM`).                                          | string, required   |
| dialingStrategy.dialingOrder                  | Order of dialing: `FIFO` or `LIFO`.                                  | string, required   |
| dialingStrategy.maxAttemptsPerRecord          | Maximum retry attempts per contact.                                  | number, required   |
| dialingStrategy.defaultRetryPeriod            | Time gap (in minutes) between retries.                               | number, required   |
| dialingStrategy.maxRingTime                   | Maximum ring duration in seconds.                                    | number, required   |
| schedule                                      | Scheduling settings.                                                 | object, optional   |
| schedule.isSchedulingEnabled                  | Set to `false` to trigger the campaign immediately.                  | boolean, optional  |
| queue_name                                    | The queue to which this campaign is assigned.                        | string, required   |
| enableMachineDetect                           | Whether answering machine detection is enabled.                      | boolean, required  |
| maxSkips                                      | Number of skips allowed before moving to the next contact.           | number, required   |
| campaignType                                  | Must be `"voice"`.                                                   | string, required   |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign Voice From API- With Preview Dialing Mode- 2 details updated successfully",
    "id": "cd-0e0475b-a418-400d-9164-21eb7e89xxxx",
    "data": {
        "name": "Voice From API- With Preview Dialing Mode- 2",
        "lname": "voice from api- with preview dialing mode- 2",
        "description": "Voice From API - With Preview Dialing Mode and queue- 2 - Updated Description",
        "priority": "5",
        "dialingMode": "Preview",
        "dialingStrategy": {
            "callerId": {
                "phoneNumber": "+1765432101"
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
            "maxAttemptsPerRecord": 1,
            "defaultRetryPeriod": 1,
            "maxRingTime": 21
        },
        "status": "Stopped",
        "maxSkips": 3,
        "createdAt": "2025-06-26T06:05:50.301Z",
        "updatedAt": "2025-06-26T16:05:24.326Z",
        "schedule": {
            "isSchedulingEnabled": false,
            "isRecurrenceEnabled": false
        },
        "campaignInstanceId": "cid-7469a7a-d009-438c-94a1-d8620197xxxx",
        "id": "cd-0e0475b-a418-400d-9164-21eb7e89xxxx",
        "contactLists": [
            "APIContctList"
        ],
        "enableMachineDetect": false
    }
}
```

## Response Body Parameters

| **Parameter**                             | **Description**                                                                 | **Type**    |
|------------------------------------------|---------------------------------------------------------------------------------|-------------|
| _id                                      | Unique identifier for the campaign.                                             | string      |
| name                                     | Campaign name.                                                                  | string      |
| lname                                    | Lowercase version of campaign name.                                             | string      |
| description                              | Campaign description.                                                           | string      |
| priority                                 | Campaign priority. For example: 5                                               | string      |
| dialingMode                              | Dialing mode (Preview/Progressive/Predictive).                                  | string      |
| dialingStrategy                          | Dialing configuration for the campaign.                                         | object      |
| dialingStrategy.callerId.phoneNumber     | Caller phone number in E.164 format.                                            | string      |
| dialingStrategy.callingHours.frequency   | Frequency of calls. Example: `WEEKLY`.                                          | string      |
| dialingStrategy.callingHours.timezone    | Time zone used for calling hours.                                               | string      |
| dialingStrategy.callingHours.days        | List of daily calling windows.                                                  | array       |
| status                                   | Current state of the campaign (`Stopped`, `Running`, etc.).                     | string      |
| maxSkips                                 | Max skips (if in Preview mode).                                                 | number      |
| createdAt                                | ISO timestamp of campaign creation.                                             | string      |
| updatedAt                                | ISO timestamp of the latest update.                                             | string      |
| schedule                                 | Scheduling settings for the campaign.                                           | object      |
| campaignInstanceId                       | Internal campaign instance identifier. Example: `cid-b1c6849b-b40f-550e...`     | string      |
| contactLists                             | Associated contact lists.                                                       | string      |
| enableMachineDetect                      | Machine detection setting.                                                      | boolean     |