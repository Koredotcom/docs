# Get Voice Campaign API

Use this API to fetch complete details of an existing voice campaign using the campaign ID.

| **Method**        | PUT                                                                                                                                                         |
|-------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**      | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}`                                                   |
| **Content-Type**  | `application/json`                                                                                                                                           |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](https://docs.kore.ai/xo/apis/automation/api-introduction/#generating-the-jwt-token)                 |
| **API Scope**     | Campaign Management                                                                                                                                          |

## Path Parameters

| **Parameter** | **Description**                                                                                                         | **Type**         |
|---------------|-------------------------------------------------------------------------------------------------------------------------|------------------|
| host          | Environment URL, for example, https://platform.kore.ai                                                                 | string, required |
| streamId      | botId or streamId. You can access it from the General Settings page of the bot.                                       | string, required |
| campaignId    | Unique ID of the campaign to be updated. For example: `cd-ed19e3c7-3682-5e72-a839-af9e0711xxxx`                        | string, required |

## Query Parameter

| **Parameter** | **Description**                               | **Type**         |
|---------------|-----------------------------------------------|------------------|
| accountId     | The unique ID associated with the account.    | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}' \
--header 'auth: <token>'
```

## Sample Response

```
{
    "status": "success",
    "message": "Campaign Voice From API- With Preview Dialing Mode- 2 retrieved successfully",
    "data": {
        "_id": "cd-0e0475b-a418-400d-9164-21eb7e89xxxx",
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
        "contactLists": [
            "APIContctList"
        ],
        "enableMachineDetect": false
    }
}
```

## Response Body Parameters

| **Parameter**                                      | **Description**                                                                                          | **Type**         |
|----------------------------------------------------|----------------------------------------------------------------------------------------------------------|------------------|
| _id                                               | Unique identifier for the campaign.                                                                      | string           |
| name                                              | Campaign name.                                                                                           | string           |
| lname                                             | Lowercase version of campaign name.                                                                      | string           |
| description                                       | Campaign description.                                                                                    | string           |
| status                                            | Current campaign status. For example: Ready.                                                             | string           |
| priority                                          | Campaign priority. For example: 5                                                                         | string           |
| dialingStrategy                                   | Dialing configuration for the campaign.                                                                  | object           |
| dialingStrategy.callerId                          | Caller ID configuration.                                                                                 | object           |
| dialingStrategy.callerId.phoneNumber              | Caller phone number in E.164 format.                                                                     | string           |
| dialingStrategy.callingHours                      | Allowed calling hours.                                                                                   | object           |
| dialingStrategy.callingHours.frequency            | Frequency of calls. Example: `WEEKLY`.                                                                   | string           |
| dialingStrategy.callingHours.timezone             | Time zone used for calling hours.                                                                        | string           |
| dialingStrategy.callingHours.days                 | List of daily calling windows.                                                                           | array            |
| dialingStrategy.callingHours.days.day             | Day of the week (for example, `MO`, `TU`).                                                               | string           |
| dialingStrategy.callingHours.days.start           | Start time (for example, `9:00 AM`).                                                                     | string           |
| dialingStrategy.callingHours.days.end             | End time (for example, `6:00 PM`).                                                                       | string           |
| maxAttemptsPerRecord                              | Maximum retries per contact.                                                                             | number           |
| defaultRetryPeriod                                | Retry delay in minutes.                                                                                  | number           |
| maxRingTime                                       | Ring time (in seconds) before timeout.                                                                   | number           |
| createdAt                                         | Campaign creation timestamp in ISO format.                                                               | string           |
| updatedAt                                         | Last update timestamp in ISO format.                                                                     | string           |
| schedule                                          | Scheduling settings for the campaign.                                                                    | object           |
| schedule.isSchedulingEnabled                      | Indicates if scheduling is enabled for the campaign.                                                     | boolean          |
| schedule.isRecurrenceEnabled                      | Indicates whether the campaign is set to repeat automatically on a recurring schedule (daily, weekly).   | boolean          |
| campaignInstanceId                                | Internal campaign instance identifier. For example, `cid-b1c6849b-b40f-550e-ace7-3b17aab9dxxxx`          | string           |
| contactLists                                      | List of contact list names used in the campaign.                                                         | array            |
| enableMachineDetect                               | Indicates if machine detection is enabled (not applicable for sms).                                      | boolean          |