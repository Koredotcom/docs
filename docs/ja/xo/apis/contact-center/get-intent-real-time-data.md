# Get Intent Real Time Data

To retrieve the most recent conversational data for the given Bot Id. Gets the latest 25 sessions data for the given Bot Id that completed the execution of the flow.

| **Method**       | GET                                                        |
|--------------|------------------------------------------------------------|
| **Endpoint**     | `https://{{host}}/api/public/bot/{{BotID}}//intentrealtimedata` |
| **Content Type** | `application/json`                                         |
| **Authorization**| `auth: {{JWT}}` See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**    | SmartAssist Analytics                                      |

## Path Parameters

| **PARAMETER** | **DESCRIPTION**                                                        | **TYPE**            |
|-----------|--------------------------------------------------------------------|-----------------|
| host      | Environment URL, for example, https://platform.kore.ai          | string, required |
| BotID     | Bot ID or Stream ID. You can access it from the General Settings page of the bot. | string, required |

## Sample Request

```
curl --location --request POST 'https://{{host}}/api/public/bot/st-e808d22c-fcbc-54b6-b450-6983ec2axxxx/intentrealtimedata' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiYXBwSWQiOiJjcy0yOGU0MWFjMi0zODJjLTVkNmUtOGQ0MC0zZDE0OGYy
ZmI0YWMifQ.gW6cuRsv86ajX48gW0XYOmiUSAEp4K4r5JbM3wUISCM' \
--header 'cache-control: no-cache' \
--header 'postman-token: 363f7f10-e516-c464-dcf8-2fefcd86xxxx' \
--header 'Format: application/json' \
--header 'accountId: 63c0e7de93e4c7694808xxxx'
```

## Sample Response

```
[
 {
  intent : [Book a Ticket, Book a Flight],
  ANI:    st-bb0e8899-a753-568f-984f-3338de26xxxx,
  DNI:   username@domain.com,
  channel: rtm,
  startTime: 2022-01-06T14: 07: 08.185+00: 00,
  endTime: 2022-01-06T14: 44: 17.527+00: 00,
  status: completed,
  timeHandled: 50s,
  deflectedTo: rtm,
  userId: "u-6b184e56-ebe3-5acb-af3c-1e6bcb25xxxx",
  sessionId: "6364a8616d8e6a6a0effxxxx",
 },
 {
  intent : [],
  ANI:    +126529865,
  DNI:    +126529865,
  channel: audiocodes,
  startTime: 2022-01-06T14: 07: 08.185+00: 00,
  endTime: 2022-01-06T14: 44: 17.527+00: 00,
  status: Dropoff,
  timeHandled: 13m: 8s,
  deflectedTo: null,
  userId: "u-6b184e56-ebe3-5acb-af3c-1e6bcb25xxxx",
  sessionId: "6364a8616d8e6a6a0effxxxx",
 }
]
```