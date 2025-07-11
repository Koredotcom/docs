# Update Voice Campaign by ID

Use this API to update the configuration details of an existing voice campaign using the dialing mode. This operation allows you to modify metadata, dialing strategies, schedules, and other runtime parameters.

| **Method**       | PUT |
|------------------|-----------|
| **Endpoint**     | `https://((host))/agentassist/api/v1/public/{{IID}}/campaign/{{campaignId}}?campaignType=voice` |
| **Content-Type** | `application/json` |
| **Authorization**| `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| **API Scope**    | Campaign Management |

## Path Parameters

| **Parameter** | **Description** | **Type** |
|---------------|------------------|-----------|
| `host` | Environment URL, for example, `https://platform.kore.ai` | string, required |
| `IId` | The Application ID. | string, required |
| `campaignId` | Unique ID of the campaign to be updated. For example: `cd-ed19e3c7-3682-5e72-a839-af9e0711xxxx` | string, required |

## Query Parameter

| **Parameter** | **Description** | **Type** |
|---------------|------------------|-----------|
| `campaignType` | Type of Campaign. Use `"voice"` | string, required |

## Sample Request

```
curl --location --request PUT 'https://{{host}}/agentassist/api/v1/public/{{botId}}/campaign/{{campaignId}}?campaignType=voice' \
--header 'auth: <token>' \
--header 'Content-Type: application/json' \
--header 'iid: st-0603182c-7ffb-53c3-b307-47ca14b9xxxx' \
--header 'accountId: 67777ce93e25326494e9xxxx' \
--data '{
    "name": "Billing Reminder Voice Campaign",
    "description": "Progressive dialing campaign to notify customers about pending bill payments. Connects to an agent if available; otherwise, a voice bot shares payment details",
    "contactLists": [
        "Recent Buyers - Q2 2025"
    ],
    "priority": "5",
    "dialingMode": "Preview",
    "dialingStrategy": {
        "callerId": {
            "phoneNumber": "+18123456789"
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

| **Parameter**                                 | **Description**                                                      | **Type**           |
|----------------------------------------------|----------------------------------------------------------------------|--------------------|
| `name`                                          | Name of the campaign.                                                | string, required   |
| `description`                                  | Description of the campaign.                                         | string, optional   |
| `contactLists`                                 | List of contact list names to use in the campaign.                   | array, required    |
| `priority`                                      | Campaign execution priority. For example, 5                          | string, optional   |
| `dialingMode`                                   | Dialing mode: `Preview`, `Progressive`, `Predictive`.                | string, required   |
| `dialingStrategy`                               | Configuration for how dialing should work.                           | object, required   |
| `dialingStrategy.callerId`                      | Caller ID details.                                                   | object, required   |
| `dialingStrategy.callerId.phoneNumber`          | Caller’s phone number in E.164 format.                               | string, required   |
| `dialingStrategy.callingHours`                  | Permitted days and times.                                            | object, required   |
| `dialingStrategy.callingHours.frequency`        | Frequency type. For example: `WEEKLY`.                               | string, required   |
| `dialingStrategy.callingHours.timezone`         | Time zone for the campaign. For example: `Asia/Kolkata`.             | string, required   |
| `dialingStrategy.callingHours.days`             | List of day/time windows.                                            | array, required    |
| `dialingStrategy.callingHours.days.day`         | Day of the week (`MO`, `TU`, `WE`, etc.).                            | string, required   |
| `dialingStrategy.callingHours.days.start`       | Start time (for example, `9:00 AM`).                                        | string, required   |
| `dialingStrategy.callingHours.days.end`         | End time (for example, `6:00 PM`).                                          | string, required   |
| `dialingStrategy.dialingOrder`                  | Order of dialing: `FIFO` or `LIFO`.                                  | string, required   |
| `dialingStrategy.maxAttemptsPerRecord`          | Maximum retry attempts per contact.                                  | number, required   |
| `dialingStrategy.defaultRetryPeriod`            | Time gap (in minutes) between retries.                               | number, required   |
| `dialingStrategy.maxRingTime`                   | Maximum ring duration in seconds.                                    | number, required   |
| `schedule`                                      | Scheduling settings.                                                 | object, optional   |
| `schedule.isSchedulingEnabled`                  | Set to `false` to trigger the campaign immediately.                  | boolean, optional  |
| `queue_name`                                    | The queue to which this campaign is assigned.                        | string, required   |
| `enableMachineDetect`                           | Whether answering machine detection is enabled.                      | boolean, required  |
| `maxSkips`                                      | Number of skips allowed before moving to the next contact.           | number, required   |
| `campaignType`                                  | Must be `"voice"`.                                                   | string, required   |

## Sample Response

```
{
    "status": "success",
    "message": "Campaign Billing Reminder Voice Campaign details updated successfully",
    "id": "cd-dcebc67-d981-4469-b220-5a4ea567xxxx",
    "data": {
        "name": "Billing Reminder Voice Campaign",
        "lname": "billing reminder voice campaign",
        "description": "Progressive dialing campaign to notify customers about pending bill payments. Connects to an agent if available; otherwise, a voice bot shares payment details",
        "priority": "5",
        "dialingMode": "Preview",
        "dialingStrategy": {
            "callerId": {
                "phoneNumber": "+1123456789"
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
        "status": "Ready",
        "maxSkips": 1,
        "createdAt": "2025-06-26T11:04:17.130Z",
        "updatedAt": "2025-06-26T11:08:55.828Z",
        "schedule": {
            "isSchedulingEnabled": false,
            "isRecurrenceEnabled": false
        },
        "id": "cd-dcebc67-d981-4469-b220-5a4ea567xxxx",
        "contactLists": [
            "Recent Buyers - Q2 2025"
        ],
        "enableMachineDetect": false
    }
}
```

## Response Body Parameters

| **Parameter**                                              | **Description**                                                                 | **Type**                    |
|--------------------------------------------------------|-----------------------------------------------------------------------------|-------------------------|
| `status`                                               | Indicates the overall response status. Example: `"success"`                | string                  |
| `message`                                              | Descriptive message about the result.                                      | string                  |
| `id`                                                   | Unique identifier of the campaign (also repeated in `data.id`).            | string                  |
| `data`                                                 | Contains the campaign configuration details.                               | object                  |
| `data.name`                                            | Display name of the campaign.                                              | String                  |
| `data.lname`                                           | Lowercase name of the campaign, used internally.                           | string                  |
| `data.description`                                     | Description of the campaign purpose and functionality.                     | string                  |
| `data.priority`                                        | Campaign priority level.                                                   | string                  |
| `data.dialingMode`                                     | Dialing mode used for the campaign. Example: `"Preview"`                  | string                  |
| `data.dialingStrategy`                                 | Defines dialing strategy configuration.                                    | object                  |
| `data.dialingStrategy.callerId.phoneNumber`            | Caller ID phone number used for outbound calls.                            | string                  |
| `data.dialingStrategy.callingHours`                    | Defines the allowed calling hours and schedule.                            | object                  |
| `data.dialingStrategy.callingHours.frequency`          | Calling frequency. Example: `"WEEKLY"`                                     | string                  |
| `data.dialingStrategy.callingHours.days`               | Daily schedules with start/end time and day.                               | array of object         |
| `data.dialingStrategy.callingHours.days[].start`       | Start time of calling window. (hh:mm AM/PM)                                              | string    |
| `data.dialingStrategy.callingHours.days[].end`         | End time of calling window. (hh:mm AM/PM)                                               | string     |
| `data.dialingStrategy.callingHours.days[].day`         | Day of the week. (2-letter)  Example: `"MO"`, `"TU"`                                   | string       |
| `data.dialingStrategy.callingHours.timezone`           | Timezone used for the calling schedule. Example: `"Asia/Kolkata"`         | string                  |
| `data.dialingStrategy.dialingOrder`                    | Order in which records are dialed. Example: `"FIFO"`                       | string                  |
| `data.dialingStrategy.maxAttemptsPerRecord`            | Maximum retry attempts for each record.                                    | integer                 |
| `data.dialingStrategy.defaultRetryPeriod`              | Default wait time between retries. (minutes)                                        | integer        |
| `data.dialingStrategy.maxRingTime`                     | Maximum ring time before hanging up. (seconds)                                      | integer        |
| `data.status`                                          | Current state of the campaign. Example: `"Ready"`                          | string                  |
| `data.maxSkips`                                        | Maximum allowed skips for contacts in the dialing list.                    | integer                 |
| `data.createdAt`                                       | Campaign creation timestamp. (ISO 8601)                                                | string       |
| `data.updatedAt`                                       | Last updated timestamp. (ISO 8601)                                                   | string        |
| `data.schedule`                                        | Schedule configuration for the campaign.                                   | object                  |
| `data.schedule.isSchedulingEnabled`                    | Indicates whether campaign scheduling is enabled.                          | boolean                 |
| `data.schedule.isRecurrenceEnabled`                    | Indicates whether campaign recurrence is enabled.                          | boolean                 |
| `data.id`                                              | Unique identifier for the campaign.                                        | string                  |
| `data.contactLists`                                    | Names of associated contact lists.                                         | array of string         |
| `data.enableMachineDetect`                             | Indicates whether machine detection is enabled.                            | boolean                 |
