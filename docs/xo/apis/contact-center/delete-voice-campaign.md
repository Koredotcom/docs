# Delete Voice Campaign API

Use this API to delete an active Voice campaign for a given stream ID and campaign ID.

| **Method**     | DELETE                                                                                                                                            |
|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoint**   | `https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign/{{campaignType}}?campaignType=voice`           |
| **Content-Type** | `application/json`                                                                                                                              |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token)   |
| **API Scope**  | Campaign Management                                                                                                                               |

## Path Parameters

| **Parameter** | **Description**                                                                                      | **Type**          |
|---------------|------------------------------------------------------------------------------------------------------|-------------------|
| `host`          | Environment URL, for example, https://platform.kore.ai                                                | string, required  |
| `botId`      | You can access it from the General Settings page of the bot.                      | string, required  |
| `campaignId`    | Unique identifier of the campaign to trigger.                                                        | string, required  |

## Query Parameters

| **Parameter**  | **Description**                              | **Type**         |
|----------------|----------------------------------------------|------------------|
| `campaignType`   | Type of campaign. Use `"voice"` for voice campaign.       | string, required |

## Sample Request

```
curl --location --request DELETE 'https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign/{{campaignType}}?campaignType=voice' \
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
    "message": "Campaign Billing Reminder Voice Campaign2 deleted successfully",
    "data": {
        "_id": "cd-2129073-58d9-44d5-a5d1-454b1220xxxx",
        "name": "Billing Reminder Voice Campaign2",
        "lname": "billing reminder voice campaign2",
        "description": "Progressive dialing campaign to notify customers about pending bill payments. Connects to an agent if available; otherwise, a voice bot shares payment details",
        "priority": "5",
        "dialingMode": "Preview",
        "dialingStrategy": {
            "callerId": {
                "phoneNumber": "+18123456789"
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
        "status": "Stopped",
        "maxSkips": 1,
        "createdAt": "2025-06-26T09:11:00.612Z",
        "updatedAt": "2025-06-26T11:41:42.569Z",
        "schedule": {
            "isSchedulingEnabled": false,
            "isRecurrenceEnabled": false
        },
        "campaignInstanceId": "cid-700c76d-6bb6-47ce-b2d0-58541769xxxx",
        "contactLists": [
            "Recent Buyers - Q2 2025"
        ],
        "enableMachineDetect": false
    }
}
```

## Response Body Parameters

| Parameter                                            | Description                                                                                   | Type                  |
|-----------------------------------------------------|-----------------------------------------------------------------------------------------------|-----------------------|
| `status`                                            | Overall status of the API response. Example: `"success"`                                      | String                |
| `message`                                           | Message indicating the result of the delete operation.                                        | String                |
| `data`                                              | Object containing details of the deleted campaign.                                            | Object                |
| `data._id`                                          | Unique identifier of the deleted campaign.                                                    | String                |
| `data.name`                                         | Campaign name.                                                                                | String                |
| `data.lname`                                        | Lowercase version of the campaign name.                                                       | String                |
| `data.description`                                  | Description of the campaign objective and behavior.                                           | String                |
| `data.priority`                                     | Priority assigned to the campaign.                                                            | String                |
| `data.dialingMode`                                  | Dialing mode used by the campaign. Example: `"Preview"`                                       | String                |
| `data.dialingStrategy`                              | Strategy configuration for dialing.                                                           | Object                |
| `data.dialingStrategy.callerId.phoneNumber`         | Caller ID phone number used for outbound calls.                                               | String                |
| `data.dialingStrategy.callingHours.frequency`       | Frequency of campaign execution. Example: `"WEEKLY"`                                          | String                |
| `data.dialingStrategy.callingHours.days`            | List of days with start and end times for dialing.                                            | Array of Object       |
| `data.dialingStrategy.callingHours.days[].day`      | Day of the week. Example: `"MO"`                                                              | String                |
| `data.dialingStrategy.callingHours.days[].start`    | Start time of the campaign on that day.                                                       | String (HH:MM AM/PM)  |
| `data.dialingStrategy.callingHours.days[].end`      | End time of the campaign on that day.                                                         | String (HH:MM AM/PM)  |
| `data.dialingStrategy.callingHours.timezone`        | Time zone for the defined calling hours.                                                      | String                |
| `data.dialingStrategy.dialingOrder`                 | Order in which contacts are dialed. Example: `"FIFO"`                                         | String                |
| `data.dialingStrategy.maxAttemptsPerRecord`         | Maximum number of attempts allowed per contact.                                               | Integer               |
| `data.dialingStrategy.defaultRetryPeriod`           | Time (in minutes) before retrying a failed attempt.                                            | Integer               |
| `data.dialingStrategy.maxRingTime`                  | Maximum ring time per call attempt in seconds.                                                | Integer               |
| `data.status`                                       | Current status of the campaign. Example: `"Stopped"`                                          | String                |
| `data.maxSkips`                                     | Maximum number of skips allowed for this campaign.                                            | Integer               |
| `data.createdAt`                                    | Timestamp of campaign creation.                                                               | String (ISO 8601)     |
| `data.updatedAt`                                    | Timestamp of the last campaign update.                                                        | String (ISO 8601)     |
| `data.schedule`                                     | Scheduling configuration of the campaign.                                                     | Object                |
| `data.schedule.isSchedulingEnabled`                 | Indicates if scheduling is enabled.                                                           | Boolean               |
| `data.schedule.isRecurrenceEnabled`                 | Indicates if recurrence is enabled.                                                           | Boolean               |
| `data.campaignInstanceId`                           | Unique identifier for the campaign instance.                                                  | String                |
| `data.contactLists`                                 | Names of contact lists linked to the campaign.                                                | Array of String       |
| `data.enableMachineDetect`                          | Indicates if machine detection is enabled.                                                    | Boolean               |