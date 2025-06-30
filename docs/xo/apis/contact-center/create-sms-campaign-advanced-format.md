# Create SMS Campaign (Advanced Format) API

Use this API to create an SMS campaign with advanced formatting using the specified experience flow and contact list.

| **Method**        | POST                                                                                                                                                               |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**      | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign?accountId={{accountId}}&campaignType={{campaignType}}`                                              |
| **Content-Type**  | `application/json`                                                                                                                                                    |
| **Authorization** | `auth: {{JWT}}`  <br> See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token).                        |
| **API Scope**     | Campaign Management                                                                                                                                                   |

## Path Parameters

| **Parameter** | **Description**                                                                              | **Type**         |
|---------------|----------------------------------------------------------------------------------------------|------------------|
| `host`        | Environment URL. For example: `https://platform.kore.ai`                                     | `string`, required |
| `streamId`    | Bot ID or Stream ID. You can find this on the General Settings page of the bot.             | `string`, required |

## Query Parameters

| **Parameter**   | **Description**                                           | **Type**           |
|------------------|-----------------------------------------------------------|--------------------|
| `accountId`      | The unique ID associated with the account.                | `string`, required |
| `campaignType`   | Type of campaign. Use `"sms"`.                            | `string`, required |

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign?accountId={{accountId}}&campaignType={{campaignType}}' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--data '{
    "name": "SMS From API - With Advanced Format - 1",
    "description": "SMS From API - With Advanced Format - 1",
    "contactLists": [
     "APIContctList"
    ],
    "priority": "5",
    "format": "advanced",
    "campaignType": "sms",
    "dialingStrategy": {
        "callerId": {
            "phoneNumber": "+919876543210",
            "direction": "outbound"
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
    },
    "experienceFlowName": "sms flow"
}'
```

## Header

| **Header** | **Description**               | **Required/Optional** |
|------------|-------------------------------|------------------------|
| `auth`     | JWT token for authentication. | required               |

## Body Parameters

| **Parameter**                                   | **Description**                                                                 | **Type**           |
|--------------------------------------------------|---------------------------------------------------------------------------------|--------------------|
| `name`                                           | Name of the campaign.                                                           | string, required   |
| `description`                                    | Description of the campaign.                                                    | string, optional   |
| `contactLists`                                   | List of contact list names to use in the campaign.                              | array, required    |
| `campaignType`                                   | Type of campaign. Always `sms`.                                                 | string, required   |
| `priority`                                       | Campaign execution priority. For example, 5                                     | string, optional   |
| `format`                                         | Message format. Use `simple`.                                                   | string, required   |
| `message`                                        | Message content.                                                                | object, required   |
| `message.templateId`                             | Template ID for pre-configured message. Leave empty for plain message.          | string, optional   |
| `message.message`                                | Base64-encoded message content.                                                 | string, required   |
| `dialingStrategy`                                | Calling strategy.                                                               | object, required   |
| `dialingStrategy.callerId`                       | Caller ID details.                                                              | object, required   |
| `dialingStrategy.callerId.phoneNumber`           | Caller’s phone number in E.164 format.                                          | string, required   |
| `dialingStrategy.callingHours`                   | Permitted days and times.                                                       | object, required   |
| `dialingStrategy.callingHours.frequency`         | Frequency type. For example: `WEEKLY`.                                          | string, required   |
| `dialingStrategy.callingHours.timezone`          | Time zone for the campaign. For example: `Asia/Kolkata`.                        | string, required   |
| `dialingStrategy.callingHours.days`              | List of day/time windows.                                                       | array, required    |
| `dialingStrategy.callingHours.days.day`          | Day of the week (`MO`, `TU`, `WE`, etc.).                                       | string, required   |
| `dialingStrategy.callingHours.days.start`        | Start time (for example, `9:00 AM`).                                            | string, required   |
| `dialingStrategy.callingHours.days.end`          | End time (for example, `6:00 PM`).                                              | string, required   |
| `schedule`                                       | Scheduling settings.                                                            | object, optional   |
| `schedule.isSchedulingEnabled`                   | Set to `false` to trigger the campaign immediately.                             | boolean, optional  |
| `experienceFlowName`                             | Name of the associated experience flow.                                         | string, required   |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign SMS From API - With Advanced Format - 1 creation in progress",
    "data": {
        "_id": "cd-859d0254-71df-5fb4-a832-b3723a85xxxx",
        "name": "SMS From API - With Advanced Format - 1",
        "lname": "sms from api - with advanced format - 1",
        "description": "SMS From API - With Advanced Format - 1",
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
        "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453axxxx",
        "totalMessagesSent": 0,
        "direction": "advanced",
        "createdAt": "2025-06-26T08:33:55.244Z",
        "updatedAt": "2025-06-26T08:33:55.244Z",
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

| **Parameter**                            | **Description**                                             | **Type**        |
|-----------------------------------------|-------------------------------------------------------------|-----------------|
| `_id`                                   | Unique identifier for the campaign.                         | string          |
| `name`                                  | Campaign name.                                              | string          |
| `lname`                                 | Lowercase version of campaign name.                         | string          |
| `description`                           | Campaign description.                                       | string          |
| `status`                                | Current campaign status. For example: `Ready`.              | string          |
| `priority`                              | Campaign priority. For example: `5`.                        | string          |
| `dialingStrategy`                       | Dialing configuration for the campaign.                     | object          |
| `dialingStrategy.callerId`             | Caller ID configuration.                                    | object          |
| `dialingStrategy.callerId.phoneNumber` | Caller phone number in E.164 format.                        | string          |
| `dialingStrategy.callingHours`         | Allowed calling hours.                                      | object          |
| `dialingStrategy.callingHours.frequency` | Frequency of calls. Example: `WEEKLY`.                     | string          |
| `dialingStrategy.callingHours.timezone` | Time zone used for calling hours.                          | string          |
| `dialingStrategy.callingHours.days`     | List of daily calling windows.                              | array           |
| `dialingStrategy.callingHours.days.day` | Day of the week (for example, `MO`, `TU`).                         | string          |
| `dialingStrategy.callingHours.days.start` | Start time (for example, `9:00 AM`).                              | string          |
| `dialingStrategy.callingHours.days.end` | End time (for example, `6:00 PM`).                                | string          |
| `experienceFlow`                        | Experience flow ID assigned.                                | string          |
| `totalMessagesSent`                     | Count of messages sent.                                     | integer         |
| `direction`                             | Campaign format type. For example: `advanced`.              | string          |
| `createdAt`                             | Campaign creation timestamp in ISO format.                  | string          |
| `updatedAt`                             | Last update timestamp in ISO format.                        | string          |
| `schedule`                              | Scheduling settings for the campaign.                       | object          |
| `schedule.isSchedulingEnabled`         | Indicates if scheduling is enabled for the campaign.        | boolean         |
| `contactLists`                          | List of contact list names used in the campaign.            | array           |
| `enableMachineDetect`                   | Indicates if machine detection is enabled (not for SMS).    | boolean         |
