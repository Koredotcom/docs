# Get Voice Campaign API

Use this API to fetch complete details of an existing voice campaign using the campaign ID.

| **Method**        | PUT                                                                                                                                                         |
|-------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**      | `https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign/{{campaignId}}`                                                   |
| **Content-Type**  | `application/json`                                                                                                                                           |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](https://docs.kore.ai/xo/apis/automation/api-introduction/#generating-the-jwt-token)                 |
| **API Scope**     | Campaign Management                                                                                                                                          |

## Path Parameters

| **Parameter** | **Description**                                                                                                         | **Type**         |
|---------------|-------------------------------------------------------------------------------------------------------------------------|------------------|
| `host`          | Environment URL, for example, https://platform.kore.ai                                                                 | string, required |
| `botId`      | You can access it from the General Settings page of the bot.                                       | string, required |
| `campaignId`    | Unique ID of the campaign to be updated. For example: `cd-ed19e3c7-3682-5e72-a839-af9e0711xxxx`                        | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign/{{campaignId}}' \
--header 'iid: st-0603182c-7ffb-53c3-b307-47ca14b9xxxx' \
--header 'accountId: 67777ce93e25326494e9xxxx' \
--header 'auth: <token>'

```

## Headers

| **Header** | **Description**                   | **Required/Optional** |
|------------|-----------------------------------|------------------------|
| `auth`     | JWT token for authentication.     | required               |
| `iid`     | The Application Id.     | required               |
| `accountId`     | The Account Id.     | required               |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign Interactive Support SMS Campaign retrieved successfully",
    "data": {
        "_id": "cd-3aefda80-f98e-5f4f-ad41-92803abbxxxx",
        "name": "Interactive Support SMS Campaign",
        "lname": "interactive support sms campaign",
        "description": "Updated: This campaign sends an SMS with a link or instructions to interact with a Kore.ai bot. Customers can check order status, raise tickets, or get help—all via chat-enabled SMS.",
        "status": "Ready",
        "priority": "5",
        "dialingStrategy": {
            "callerId": {
                "phoneNumber": "+919876543210"
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
            }
        },
        "experienceFlow": "cf-67447605-115e-5dd2-a676-e158cf3bxxxx",
        "createdAt": "2025-06-27T09:25:53.320Z",
        "updatedAt": "2025-06-27T09:31:56.940Z",
        "schedule": {
            "isSchedulingEnabled": false,
            "isRecurrenceEnabled": false
        },
        "contactLists": [
            "Renewal Due - May/June 2025"
        ],
        "enableMachineDetect": false,
        "format": "advanced"
    }
}
```

## Response Body Parameters

| Parameter                                          | Description                                                                                   | Type                  |
|---------------------------------------------------|-----------------------------------------------------------------------------------------------|-----------------------|
| `status`                                          | Overall status of the API response. Example: `"success"`                                      | String                |
| `message`                                         | Response message indicating the result of the request.                                        | String                |
| `data`                                            | Contains the campaign details.                                                                | Object                |
| `data._id`                                        | Unique identifier of the campaign.                                                            | String                |
| `data.name`                                       | Campaign name (title-cased).                                                                  | String                |
| `data.lname`                                      | Lowercased campaign name.                                                                     | String                |
| `data.description`                                | Detailed description of the campaign purpose and behavior.                                    | String                |
| `data.status`                                     | Current status of the campaign. Example: `"Ready"`                                            | String                |
| `data.priority`                                   | Priority level assigned to the campaign.                                                      | String                |
| `data.dialingStrategy`                            | Configuration for dialing or communication strategy.                                          | Object                |
| `data.dialingStrategy.callerId.phoneNumber`       | Phone number used as the caller ID or sender ID.                                              | String                |
| `data.dialingStrategy.callingHours`               | Campaign's operating schedule.                                                                | Object                |
| `data.dialingStrategy.callingHours.frequency`     | Frequency for running the campaign. Example: `"WEEKLY"`                                       | String                |
| `data.dialingStrategy.callingHours.timezone`      | Time zone for the calling hours.                                                              | String                |
| `data.dialingStrategy.callingHours.days`          | Days and time range when the campaign is active.                                              | Array of Object       |
| `data.dialingStrategy.callingHours.days[].day`    | Day of the week when campaign runs. Example: `"MO"`                                           | String                |
| `data.dialingStrategy.callingHours.days[].start`  | Campaign start time for the day.                                                              | String (HH:MM AM/PM)  |
| `data.dialingStrategy.callingHours.days[].end`    | Campaign end time for the day.                                                                | String (HH:MM AM/PM)  |
| `data.experienceFlow`                             | Associated experience flow ID used by the campaign.                                           | String                |
| `data.createdAt`                                  | Timestamp when the campaign was created.                                                      | String (ISO 8601)     |
| `data.updatedAt`                                  | Timestamp when the campaign was last updated.                                                 | String (ISO 8601)     |
| `data.schedule`                                   | Scheduling configuration for the campaign.                                                    | Object                |
| `data.schedule.isSchedulingEnabled`               | Indicates whether the campaign has a scheduled start.                                         | Boolean               |
| `data.schedule.isRecurrenceEnabled`               | Indicates whether recurrence is enabled.                                                      | Boolean               |
| `data.contactLists`                               | Names of contact lists associated with the campaign.                                          | Array of String       |
| `data.enableMachineDetect`                        | Whether machine detection is enabled for the campaign.                                        | Boolean               |
| `data.format`                                     | Format of the campaign configuration. Example: `"advanced"`                                   | String                |