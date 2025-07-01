# Get SMS Campaign API

Use this API to fetch complete details of an existing SMS campaign using the campaign ID.

| **Method**     | GET                                                                |
|----------------|-------------------------------------------------------------------------|
| **Endpoint**   | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{campaignId}}/?accountId={{accountId}}` |
| **Content-Type** | `application/json`                                                   |
| **Authorization** | `auth: {{JWT}}`<br> See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**  | Campaign Management                                                    |

## Path Parameters

| **Parameter** | **Description**                                                                                           | **Type**           |
|---------------|-----------------------------------------------------------------------------------------------------------|--------------------|
| `host`        | Environment URL. For example: `https://platform.kore.ai`                                                  | string, required   |
| `streamId`    | Bot ID or stream ID. You can access it from the General Settings page of the bot.                        | string, required   |
| `campaignId`  | Unique ID of the campaign to be updated. For example: `cd-ed19e3c7-3682-5e72-a839-af9e0711xxxx`           | string, required   |
| `accountId`   | Unique ID associated with the account.                                                                    | string, required   |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{campaignId}}/?accountId={{accountId}}' \
--header 'auth: <token>'
```

## Sample Response

```
{
    "status": "success",
    "message": "Campaign SMS From API - With Advanced Format - 2 retrieved successfully",
    "data": {
        "_id": "cd-ed19e3c7-3682-5e72-a839-af9e0711xxxx",
        "name": "SMS From API - With Advanced Format - 2",
        "lname": "sms from api - with advanced format - 2",
        "description": "SMS From API - With Advanced Format- 2",
        "status": "Stopped",
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
        "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
        "totalMessagesSent": 0,
        "direction": "advanced",
        "createdAt": "2025-06-26T06:03:48.502Z",
        "updatedAt": "2025-06-26T09:26:27.752Z",
        "schedule": {
            "isSchedulingEnabled": false,
            "isRecurrenceEnabled": false
        },
        "campaignInstanceId": "cid-b1c6849b-b40f-550e-ace7-3b17aab9xxxx",
        "contactLists": [
            "APIContctList"
        ],
        "enableMachineDetect": false
    }
}
```

## Response Body Parameters

| **Parameter**                             | **Description**                                                                                       | **Type**     |
|-------------------------------------------|-------------------------------------------------------------------------------------------------------|--------------|
| `_id`                                     | Unique identifier for the campaign.                                                                   | string       |
| `name`                                    | Campaign name.                                                                                        | string       |
| `lname`                                   | Lowercase version of the campaign name.                                                               | string       |
| `description`                             | Campaign description.                                                                                 | string       |
| `status`                                  | Current campaign status. For example: `Ready`.                                                        | string       |
| `priority`                                | Campaign priority. For example: `5`.                                                                  | string       |
| `dialingStrategy`                         | Dialing configuration for the campaign.                                                               | object       |
| `dialingStrategy.callerId`                | Caller ID configuration.                                                                              | object       |
| `dialingStrategy.callerId.phoneNumber`    | Caller phone number in E.164 format.                                                                  | string       |
| `dialingStrategy.callingHours`           | Allowed calling hours.                                                                                | object       |
| `dialingStrategy.callingHours.frequency`  | Frequency of calls. For example: `WEEKLY`.                                                            | string       |
| `dialingStrategy.callingHours.timezone`   | Time zone used for calling hours.                                                                     | string       |
| `dialingStrategy.callingHours.days`       | List of daily calling windows.                                                                        | array        |
| `dialingStrategy.callingHours.days.day`   | Day of the week. For example: `MO`, `TU`.                                                             | string       |
| `dialingStrategy.callingHours.days.start` | Start time. For example: `9:00 AM`.                                                                   | string       |
| `dialingStrategy.callingHours.days.end`   | End time. For example: `6:00 PM`.                                                                     | string       |
| `experienceFlow`                          | Experience flow ID assigned.                                                                          | string       |
| `totalMessagesSent`                       | Count of messages sent.                                                                               | integer      |
| `direction`                               | Campaign format type. For example: `advanced`.                                                        | string       |
| `createdAt`                               | Campaign creation timestamp in ISO format.                                                            | string       |
| `updatedAt`                               | Last update timestamp in ISO format.                                                                  | string       |
| `schedule`                                | Scheduling settings for the campaign.                                                                 | object       |
| `schedule.isSchedulingEnabled`            | Indicates if scheduling is enabled for the campaign.                                                  | boolean      |
| `schedule.isRecurrenceEnabled`            | Indicates if the campaign is set to repeat on a recurring schedule (for example, daily, weekly, etc.).             | boolean      |
| `campaignInstanceId`                      | Internal campaign instance identifier. For example: `cid-b1c6849b-b40f-550e-ace7-3b17aab9dxxxx`.       | string       |
| `contactLists`                            | List of contact list names used in the campaign.                                                      | array        |
| `enableMachineDetect`                     | Indicates if machine detection is enabled (not applicable for SMS).                                   | boolean      |