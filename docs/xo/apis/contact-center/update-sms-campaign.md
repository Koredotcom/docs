# Update SMS Campaign API

Use this API to update an existing SMS campaign using the format, contact lists, experience flow, and dialing strategy.

| **Method**       | PUT                                                                                                                                                                                                  |
 |------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|  
| **Endpoint**     | `https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}&campaignType={{campaignType}}`                                                                   |
| **Content-Type** | `application/json`                                                                                                                                                                                        |
| **Authorization**| `auth: {{JWT}}`  <br> See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token).                                                                 |
| **API Scope**    | Campaign Management                                                                                                                                                                                       |

## Path Parameters


| **Parameter** | **Description**                                                                                                         | **Type**         |
|---------------|-------------------------------------------------------------------------------------------------------------------------|------------------|
| `host`        | Environment URL. For example: `https://platform.kore.ai`                                                                | string, required |
| `streamId`    | The bot ID or stream ID. You can find it on the **General Settings** page of the bot.                                  | string, required |
| `campaignId`  | Unique ID of the campaign to be updated. For example: `cd-ed19e3c7-3682-5e72-a839-af9e0711xxxx`                         | string, required |

## Query Parameters

| **Parameter**   | **Description**                                  | **Type**         |
|-----------------|--------------------------------------------------|------------------|
| `accountId`     | The unique ID associated with the account.       | string, required |
| `campaignType`  | Type of campaign. Use `"sms"`.                   | string, required |

## Sample Request

```
curl --location --request PUT 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/campaign/{{campaignId}}?accountId={{accountId}}&campaignType={{campaignType}}' \
--header 'auth: <token>' \
--data '{
    "name": "SMS From API - With Advanced Format - 2",
    "description": "SMS From API - With Advanced Format- 2",
    "contactLists": [
     "APIContctList"
    ],
    "priority": "5",
    "format": "advanced",
    "campaignType": "sms",
    "dialingStrategy": {
        "callerId": {
            "phoneNumber": "+919860792682",
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

| **Header** | **Description**                 | **Required/Optional** |
|------------|---------------------------------|------------------------|
| `auth`     | JWT token for authentication.   | required               |

## Body Parameters


| **Parameter**                                 | **Description**                                                                             | **Type**          |
|----------------------------------------------|---------------------------------------------------------------------------------------------|-------------------|
| `name`                                       | Name of the campaign.                                                                       | string, required  |
| `description`                                | Description of the campaign.                                                                | string, optional  |
| `contactLists`                               | List of contact list names to use in the campaign.                                          | array, required   |
| `campaignType`                               | Type of campaign. Always `sms`.                                                             | string, required  |
| `priority`                                   | Campaign execution priority. For example, 5                                                 | string, optional  |
| `format`                                     | Message format. Use `simple`.                                                               | string, required  |
| `message`                                    | Message content.                                                                            | object, required  |
| `message.templateId`                         | Template ID for pre-configured message. Leave empty if sending a plain message.             | string, optional  |
| `message.message`                            | Base64-encoded message content.                                                             | string, required  |
| `dialingStrategy`                            | Calling strategy.                                                                           | object, required  |
| `dialingStrategy.callerId`                   | Caller ID details.                                                                          | object, required  |
| `dialingStrategy.callerId.phoneNumber`       | Caller’s phone number in E.164 format.                                                      | string, required  |
| `dialingStrategy.callingHours`               | Permitted days and times.                                                                   | object, required  |
| `dialingStrategy.callingHours.frequency`     | Frequency type. For example: `WEEKLY`.                                                      | string, required  |
| `dialingStrategy.callingHours.timezone`      | Time zone for the campaign. For example: `Asia/Kolkata`.                                    | string, required  |
| `dialingStrategy.callingHours.days`          | List of day/time windows.                                                                   | array, required   |
| `dialingStrategy.callingHours.days.day`      | Day of the week (`MO`, `TU`, `WE`, etc.).                                                   | string, required  |
| `dialingStrategy.callingHours.days.start`    | Start time (for example, `9:00 AM`).                                                        | string, required  |
| `dialingStrategy.callingHours.days.end`      | End time (for example, `6:00 PM`).                                                          | string, required  |
| `schedule`                                   | Scheduling settings.                                                                        | object, optional  |
| `schedule.isSchedulingEnabled`               | Set to `false` to trigger the campaign immediately.                                         | boolean, optional |
| `experienceFlowName`                         | Name of the associated experience flow.                                                     | string, required  |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign SMS From API - With Advanced Format- 2 details updated successfully",
    "data": {
        "_id": "cd-ed19e3c7-3682-5e72-a839-af9e0711ddda",
        "name": "SMS From API - With Advanced Format - 2",
        "lname": "sms from api - with advanced format - 2",
        "description": "SMS From API - With Advanced Format- 2",
        "status": "Stopped",
        "priority": "5",
        "dialingStrategy": {
            "callerId": {
                "phoneNumber": "+919860792682"
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
        "experienceFlow": "cf-0d438227-57cb-5a42-82b8-0099453a8af0",
        "totalMessagesSent": 0,
        "direction": "advanced",
        "createdAt": "2025-06-26T06:03:48.502Z",
        "updatedAt": "2025-06-26T09:54:42.030Z",
        "schedule": {
            "isSchedulingEnabled": false,
            "isRecurrenceEnabled": false
        },
        "campaignInstanceId": "cid-b1c6849b-b40f-550e-ace7-3b17aab9dxxxx",
        "contactLists": [
            "APIContctList"
        ],
        "enableMachineDetect": false
    }
}
```

## Response Body Parameters

| **Parameter**                              | **Description**                                                                                 | **Type**    |
|-------------------------------------------|-------------------------------------------------------------------------------------------------|-------------|
| `_id`                                      | Unique identifier for the campaign.                                                             | string      |
| `name`                                     | Campaign name.                                                                                  | string      |
| `lname`                                    | Lowercase version of campaign name.                                                             | string      |
| `description`                              | Campaign description.                                                                           | string      |
| `status`                                   | Current campaign status. For example: `Ready`.                                                  | string      |
| `priority`                                 | Campaign priority. For example: `5`.                                                            | string      |
| `dialingStrategy`                          | Dialing configuration for the campaign.                                                         | object      |
| `dialingStrategy.callerId`                 | Caller ID configuration.                                                                        | object      |
| `dialingStrategy.callerId.phoneNumber`     | Caller phone number in E.164 format.                                                            | string      |
| `dialingStrategy.callingHours`            | Allowed calling hours.                                                                          | object      |
| `dialingStrategy.callingHours.frequency`   | Frequency of calls. For example: `WEEKLY`.                                                      | string      |
| `dialingStrategy.callingHours.timezone`    | Time zone used for calling hours.                                                               | string      |
| `dialingStrategy.callingHours.days`        | List of daily calling windows.                                                                  | array       |
| `dialingStrategy.callingHours.days.day`    | Day of the week (for example, `MO`, `TU`).                                                             | string      |
| `dialingStrategy.callingHours.days.start`  | Start time (for example, `9:00 AM`).                                                                   | string      |
| `dialingStrategy.callingHours.days.end`    | End time (for example, `6:00 PM`).                                                                     | string      |
| `experienceFlow`                           | Experience flow ID assigned.                                                                    | string      |
| `totalMessagesSent`                        | Count of messages sent.                                                                         | integer     |
| `direction`                                | Campaign format type. For example: `advanced`.                                                  | string      |
| `createdAt`                                | Campaign creation timestamp in ISO format.                                                      | string      |
| `updatedAt`                                | Last update timestamp in ISO format.                                                            | string      |
| `schedule`                                 | Scheduling settings for the campaign.                                                           | object      |
| `schedule.isSchedulingEnabled`             | Indicates if scheduling is enabled for the campaign.                                            | boolean     |
| `schedule.isRecurrenceEnabled`             | Indicates if the campaign repeats automatically (daily, weekly, etc.).                          | boolean     |
| `campaignInstanceId`                       | Internal campaign instance identifier. For example: `cid-b1c6849b-b40f-550e-ace7-xxxx`          | string      |
| `contactLists`                             | List of contact list names used in the campaign.                                                | array       |
| `enableMachineDetect`                      | Indicates if machine detection is enabled (not applicable for SMS).                             | boolean     |