# Create SMS Campaign API

Use this API to create an SMS campaign with a “None” message format.

| **Method**        | POST |
|-------------------|----------|
| **Endpoint**      | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign?accountId={{accountId}}&campaignType={{campaignType}}` |
| **Content-Type**  | `application/json` |
| **Authorization** | `auth: {{JWT}}`  <br> See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**     | Campaign Management |

## Path Parameters

| **Parameter** | **Description** | **Type** |
|---------------|------------------|----------|
| `host` | Environment URL, for example, `https://platform.kore.ai` | string, required |
| `streamIId` | `botId` or `streamId`. You can access it from the General Settings page of the bot. | string, required |

## Query Parameters

| **Parameter**   | **Description**                         | **Type**         |
|------------------|-----------------------------------------|------------------|
| `accountId`     | The unique ID associated with the account. | string, required |
| `campaignType`  | Type of Campaign. Use `"sms"`             | string, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign?accountId={{accountId}}&campaignType={{campaignType}}' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--data '{
    "name": "SMS From API - With No Template - 1",
    "description": "SMS From API - With No Template - 1",
    "contactLists": [
     "APIContctList"
    ],
    "campaignType": "sms",
    "priority": "5",
    "format": "simple",
    "message": {
        "templateId": "",
        "message": "TWVzc2FnZSBmb3IgeW91ciB0YXJnZXRlZCBjdXN0b21lcg%3D%3D"
    },
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
    "schedule": {
        "isSchedulingEnabled": false
    }
}'
```

## Header

| **Header** | **Description**                | **Required/Optional** |
|------------|--------------------------------|------------------------|
| `auth`     | JWT token for authentication.  | required               |

## Body Parameters

| **Parameter**                                | **Description**                                                                 | **Type**           |
|----------------------------------------------|---------------------------------------------------------------------------------|--------------------|
| `name`                                       | Name of the campaign.                                                           | string, required   |
| `description`                                | Description of the campaign.                                                    | string, optional   |
| `contactLists`                               | List of contact list names to use in the campaign.                              | array, required    |
| `campaignType`                               | Type of campaign. Always `sms`.                                                 | string, required   |
| `priority`                                   | Campaign execution priority. For example, 5                                     | string, optional   |
| `format`                                     | Message format. Use `simple`.                                                   | string, required   |
| `message`                                    | Message content.                                                                | object, required   |
| `message.templateId`                         | Template ID for pre-configured message. Leave empty for plain message.          | string, optional   |
| `message.message`                            | Base64-encoded message content.                                                 | string, required   |
| `dialingStrategy`                            | Calling strategy.                                                               | object, required   |
| `dialingStrategy.callerId`                   | Caller ID details.                                                              | object, required   |
| `dialingStrategy.callerId.phoneNumber`       | Caller’s phone number in E.164 format.                                          | string, required   |
| `dialingStrategy.callingHours`               | Permitted days and times.                                                       | object, required   |
| `dialingStrategy.callingHours.frequency`     | Frequency type. For example: `WEEKLY`.                                          | string, required   |
| `dialingStrategy.callingHours.timezone`      | Time zone for the campaign. For example: `Asia/Kolkata`.                        | string, required   |
| `dialingStrategy.callingHours.days`          | List of day/time windows.                                                       | array, required    |
| `dialingStrategy.callingHours.days.day`      | Day of the week (`MO`, `TU`, `WE`, etc.).                                       | string, required   |
| `dialingStrategy.callingHours.days.start`    | Start time (for example, `9:00 AM`).                                            | string, required   |
| `dialingStrategy.callingHours.days.end`      | End time (for example, `6:00 PM`).                                              | string, required   |
| `schedule`                                   | Scheduling settings.                                                            | object, optional   |
| `schedule.isSchedulingEnabled`               | Set to `false` to trigger the campaign immediately.                             | boolean, optional  |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign SMS From API - With No Template - 1 creation in progress",
    "data": {
        "_id": "cd-5a830c4d-c8a4-5ee3-8e98-c219ea86xxxx",
        "name": "SMS From API - With No Template - 1",
        "lname": "sms from api - with no template - 1",
        "description": "SMS From API - With No Template - 1",
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
        "message": {
            "message": "TWVzc2FnZSBmb3IgeW91ciB0YXJnZXRlZCBjdXN0b21lcg%3D%3D"
        },
        "totalMessagesSent": 0,
        "direction": "simple",
        "createdAt": "2025-06-26T06:37:13.780Z",
        "updatedAt": "2025-06-26T06:37:13.780Z",
        "schedule": {
            "isSchedulingEnabled": false
        },
        "contactLists": [
            "APIContctList"
        ],
        "enableMachineDetect": false
    }
}
```

## Response Body Parameters

| **Parameter**                                  | **Description**                                              | **Type**         |
|------------------------------------------------|--------------------------------------------------------------|------------------|
| `_id`                                          | Unique identifier for the campaign.                          | string           |
| `name`                                         | Campaign name.                                               | string           |
| `lname`                                        | Lowercase version of campaign name.                          | string           |
| `description`                                  | Campaign description.                                        | string           |
| `status`                                       | Current campaign status. For example: Ready.                 | string           |
| `priority`                                     | Campaign priority. For example: 5                            | string           |
| `dialingStrategy`                              | Dialing configuration for the campaign.                      | object           |
| `dialingStrategy.callerId`                     | Caller ID configuration.                                     | object           |
| `dialingStrategy.callerId.phoneNumber`         | Caller phone number in E.164 format.                         | string           |
| `dialingStrategy.callingHours`                 | Allowed calling hours.                                       | object           |
| `dialingStrategy.callingHours.frequency`       | Frequency of calls. Example: `WEEKLY`.                       | string           |
| `dialingStrategy.callingHours.timezone`        | Time zone used for calling hours.                            | string           |
| `dialingStrategy.callingHours.days`            | List of daily calling windows.                               | array            |
| `dialingStrategy.callingHours.days.day`        | Day of the week (for example, `MO`, `TU`).                          | string           |
| `dialingStrategy.callingHours.days.start`      | Start time (for example, `9:00 AM`).                                | string           |
| `dialingStrategy.callingHours.days.end`        | End time (for example, `6:00 PM`).                                  | string           |
| `message`                                      | Contains the Base64-encoded SMS content.                     | object           |
| `message.message`                              | Base64-encoded SMS message string.                           | string           |
| `totalMessagesSent`                            | Count of messages sent.                                      | integer          |
| `direction`                                    | Campaign format type. For example: `simple`.                 | string           |
| `createdAt`                                    | Campaign creation timestamp in ISO format.                   | string           |
| `updatedAt`                                    | Last update timestamp in ISO format.                         | string           |
| `schedule`                                     | Scheduling settings for the campaign.                        | object           |
| `schedule.isSchedulingEnabled`                 | Indicates if scheduling is enabled for the campaign.         | boolean          |
| `contactLists`                                 | List of contact list names used in the campaign.             | array            |
| `enableMachineDetect`                          | Indicates if machine detection is enabled (not for SMS).     | boolean          |
