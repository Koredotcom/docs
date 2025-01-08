# Get All Conversations Data – Call Details

To retrieve the raw data for all conversations in a very detailed view. The days’ range cannot be more than seven days.

| **Method** | POST |
|--------|------|
| **Endpoint** | `https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/interactionDetails?offset=0&limit=100`<br>`https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}/v2/calldetails` |
| **Content Type** | `application/json` |
| **Authorization** | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope** | SmartAssist Analytics |

## Path Parameters

| **PARAMETER** | **DESCRIPTION** | **TYPE** |
|-----------|-------------|------|
| host | Environment URL, for example, https://platform.kore.ai | string, required |
| accountId | The Account Id | string, required |

## Query Parameters

| **PARAMETER** | **DESCRIPTION** | **TYPE** |
|-----------|-------------|------|
| limit | Specifies the number of bot records to retrieve, with a maximum limit of 100. For example, 50 | integer, optional |
| offset | Defines the number of pages to skip or retrieve. Defaults to 0 if unspecified, with a maximum value of 10. For example, 10 | integer, optional |

## Sample Request

```
curl --location 'https://uat-agentassist-az.korebots.com/agentassist/api/public/analytics/account/66bc4a29bdaafdb08461xxxx/
v2/interactiondetails?offset=0&limit=100' \
--header 'authority: staging-smartassist.kore.ai' \
--header 'accept: application/json, text/plain, /' \
--header 'accountid: 66bc4a29bdaafdb08461xxxx' \
--header 'content-type: application/json;charset=UTF-8' \
--header 'x-request-id: 5912cf37-667a-484e-b075-2c42114dxxxx' \
--header 'x-timezone-offset: -330' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTE3MzUwOGUxLTI5ZjItNWU5MC05NTM
yLTEyMmVjNmI5NDFlMSJ9.rHNRMrmljmodyFXGsJQgoayI34jBixaWI7ClRARxxxx' \
--data '{
"startDate":"2024-11-13",
"endDate":"2024-11-18",
"selectedFields": ["userleveltags", "sessionleveltags", "customerinfo", "skills"],
"isAutomation": false,
"timeZoneOffset":-330
}'
```

## Request Header Parameters

| **Header**        | **Description**                                             | **Optional/Required** |
|-------------------|-------------------------------------------------------------|-----------------------|
| accept            | Desired response format (for example, application/json)                   | Optional              |
| accept-language   | Preferred response language (for example, en-US)             | Optional              |
| accountId         | Unique account identifier                                    | Required              |
| app-language      | Application display language (for example, en)               | Optional              |
| content-type      | Request body format (application/json;charset=UTF-8)         | Required              |
| referer           | Source application name (for example, smartassist)           | Optional              |
| auth              | JWT authentication token                                     | Required              |
| iId               | Stream or application id                                     | Required              |

## Request Body Parameters

| **PARAMETER**      | **DESCRIPTION**                                                                                                    | **TYPE**                 |
|----------------|----------------------------------------------------------------------------------------------------------------|----------------------|
| startDate      | The start date from which the records need to be considered.                                                   | DateTime, required   |
|                | The date format is: `yyyy-mm-dd HH24:mm:ss`                                                                   |                      |
|                | For Example, `2022-08-25 07:20:15`                                                                             |                      |
| endDate        | The end date from which the records need to be considered.                                                     | DateTime, required   |
|                | The date format is: `yyyy-mm-dd HH24:mm:ss`                                                                   |                      |
|                | For Example, `2022-08-25 18:20:15`                                                                             |                      |
| timeZoneOffset | The time zone offset.                                                                                          | number, required     |
|                | For Example, `-330,630,-500`                                                                                  |                      |
|                | NOTE: If the user is in US/New York, then his timeZoneOffset would be 300. For the -ve numbers use the ‘-‘ sign, and for +ve numbers don’t use the sign. For timeZones east of GMT use the -ve sign, for the timeZones west of GMT don’t use any sign. |                      |
| channels       | The different channels.                                                                                       | array[string], optional |
|                | For Example, `['rtm', 'voice']`                                                                               |                      |
| queues         | The list of queue ids in the instance bots.                                                                   | array[string], optional |

## Sample Response

```
{
    "numResults": 10,
    "data": [
        {
            "conversationId": "c-43bc8a3-782e-436a-a646-755ad98exxxx",
            "sessionId": "673b3fd91959d414cb74xxxx",
            "channel": "telegram",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "TERMINATED",
            "Reason": "NO AGENTS AVAILABLE",
            "disconnectingEvent": "System Hangup",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [
                "DROP-OFF"
            ],
            "dispositionRemarks": [
                "-"
            ],
            "metaInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "profColour": "#add8e6",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-2b41857b-a1cb-5862-8faf-e3d99c3axxxx",
                "_id": "u-6a6e1f08-491f-5248-b2e9-c721c618xxxx",
                "customData": {
                    "isAgentAssistOnly": true,
                    "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                    "experience": "CHAT"
                },
                "identities": [
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/telegram/518737xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-add30cc-39ac-438e-99c3-05239bc5xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-c5b72da-3e86-443a-8d29-e45dc07bxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-53eb348-c3b5-49d9-b274-015b7eacxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-ded65d7-97e5-4017-a66a-aaab914cxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-6c19755-3193-483e-aaed-72ed6c36xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-6d020d6-633e-4c19-ad26-8840dc76xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-6614204-6216-4aeb-b8e5-858aec75xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-c26610c-053c-4366-8b38-e51c4cd5xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-cd28511-78e1-462a-ad18-e6e34a47xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-593ac3d-c76e-4dc8-a505-6244684axxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-4db5ea3-e4b9-4ec0-a671-de3c938exxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-51990b2-183b-4e96-b2c8-4b81a21exxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-576295e-e2b4-4628-9c83-647deea5xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-55cbe1e-a8d0-46ba-b680-5a58480exxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-9eb2992-d115-4d3a-9b91-3c70aca9xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-557c0bc-3962-4c76-b889-70210ee6xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-31dcaad-27e6-4ab6-b69a-8bcb0cd4xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb0846xxxx/agentassist/c-e53657e-2847-4421-b513-571a085axxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-1a0db71-1213-411e-bd95-747b7b8dxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-9698929-aa22-4180-9211-15119284xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-d955841-cd1d-465b-b672-b2dc6232xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-01622a4-1523-4ad4-a4a8-de854c6cxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb0846xxxxx/agentassist/c-1c51025-9e3c-4129-88e9-061b8e49xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-b0ab874-80a9-4e53-8756-85303cdcxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-a6cbdb1-3325-4321-974c-0edb7158xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-e9d9add-c5ab-4b3e-8249-83be26d9xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-42c5b94-be70-4273-a767-43e26a41xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-c6038b0-95bc-4db7-8300-8311a26dxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-925152c-e69c-44c8-8ca8-d6baa7a2xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-aa1a4b1-a15d-44b3-8e67-42977d27xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-22b93ce-9d05-447a-9414-59e96435xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-9a675b0-46ba-4614-bedd-2687e976xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-524a935-9a86-4685-a5c9-c8099730xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-605a23a-9a39-4cba-ab98-9edcc428xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-b58e876-b9b5-4b7a-a72d-09b9d5abxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-2a19554-652b-477b-a66b-5428c3caxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-15e52a8-86d9-46c9-a0ee-397cb5c6xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-31d04b5-5226-4c16-928d-c15329eaxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-21e29a0-ca11-45d4-8766-2ba650bexxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-d688385-6bc7-4208-95e4-88d68577xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-bdc6330-8322-421c-9081-0e4b9b24xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-2b02018-1231-4e90-8596-8074cd72xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-548744b-6e9d-4277-80d6-ad57e0c5xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-875e62b-9a4c-461d-8623-6abb210exxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-aa7601a-c70a-4204-a803-c3ed25bdxxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-c402c65-e8ba-414e-b939-6a1b3d27xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-a2602dc-52ca-4486-8e3d-2e1b1660xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461xxxx/agentassist/c-b6e0416-8c0b-4c19-bcd2-396bc320xxxx",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "lastIntentName": "ConnectToAgent",
                    "automationBotId": "st-bdc0f473-406d-59bd-bd15-0d1b80afxxxx"
                },
                "hostDomain": "uat-az.korebots.com"
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "",
                "CustomerLastName": "",
                "CustomerEmail": ""
            },
            "sessionStartTime": "2024-11-18T18:53:37",
            "sessionEndTime": "2024-11-18T18:56:39",
            "channelSpecificUserId": "66bc4a29bdaafdb08461xxxx/agentassist/c-b6e0416-8c0b-4c19-bcd2-396bc320xxxx",
            "userId": "u-6a6e1f08-491f-5248-b2e9-c721c618xxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-04e6978-6011-49d6-929d-cd715080xxxx",
                    "queueName": "Default Queue",
                    "EnterTime": "2024-11-18T18:53:38"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": []
        },
        {
            "conversationId": "c-d521a77-eec5-4b5c-ba58-ab868457xxxx",
            "sessionId": "673b2b6abfc7023ab2f0xxxx",
            "channel": "Jones ",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "Reason": "",
            "disconnectingEvent": "Agent Closed",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "userId": "u-390b0c73-6b06-5656-a3b1-58746515xxxx",
                "firstName": "john.doe@abc.com",
                "lastName": "",
                "emailId": "john.doe@abc.com",
                "agentTransferConfig": {
                    "overrideAgents": false
                }
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "john.doe@abc.com",
                "CustomerLastName": "",
                "CustomerEmail": "john.doe@abc.com"
            },
            "sessionStartTime": "2024-11-18T17:26:26",
            "sessionEndTime": "2024-11-18T17:26:54",
            "userId": "u-390b0c73-6b06-5656-a3b1-58746515xxxx",
            "destinations": [
                {
                    "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                    "agentNotes": [],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "interactionEndTime": "2024-11-18T17:27:28",
                    "interactionDuration": 33,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "uataug14th@mailinator.com",
                    "name": "UATAug14th 01",
                    "acceptedTime": "2024-11-18T17:26:54",
                    "assignedAt": "2024-11-18T17:26:54"
                },
                {
                    "agentId": "u-13034353-c9bc-53c8-845d-f8ce869fxxxx",
                    "agentNotes": [
                        "The customer requested to speak with an agent. The agent provided a response 
with incomplete or gibberish text."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "firstResponseTime": "2024-11-18T17:27:44",
                    "firstResponseDuration": 11,
                    "interactionEndTime": "2024-11-18T17:36:43",
                    "interactionDuration": 550,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "newrole01@mailinator.com",
                    "name": "New Role 01",
                    "acceptedTime": "2024-11-18T17:27:33",
                    "assignedAt": "2024-11-18T17:27:29"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": []
        },
        {
            "conversationId": "c-01c1e11-85a2-463d-aa74-37ba3cb3xxxx",
            "sessionId": "673b2b05bfc7023ab2f0xxxx",
            "channel": "Jones ",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "Reason": "",
            "disconnectingEvent": "Agent Closed",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "userId": "u-2d7bc531-3c0e-53bb-85dd-399ba65axxxx",
                "firstName": "jane.doe@abc.com",
                "lastName": "",
                "emailId": "jane.doe@abc.com",
                "agentTransferConfig": {
                    "overrideAgents": false
                }
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "jane.doe@abc.com",
                "CustomerLastName": "",
                "CustomerEmail": "jane.doe@abc.com"
            },
            "sessionStartTime": "2024-11-18T17:24:45",
            "sessionEndTime": "2024-11-18T17:25:16",
            "userId": "u-2d7bc531-3c0e-53bb-85dd-399ba65axxxx",
            "destinations": [
                {
                    "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                    "agentNotes": [],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "interactionEndTime": "2024-11-18T17:25:28",
                    "interactionDuration": 12,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "uataug14th@mailinator.com",
                    "name": "UATAug14th 01",
                    "acceptedTime": "2024-11-18T17:25:16",
                    "assignedAt": "2024-11-18T17:25:16"
                },
                {
                    "agentId": "u-13034353-c9bc-53c8-845d-f8ce869fxxxx",
                    "agentNotes": [
                        "The customer requested to speak with an agent. The agent acknowledged the request 
and asked the customer to hold while connecting them with the appropriate department."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "interactionEndTime": "2024-11-18T17:25:49",
                    "interactionDuration": 16,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "newrole01@mailinator.com",
                    "name": "New Role 01",
                    "acceptedTime": "2024-11-18T17:25:34",
                    "assignedAt": "2024-11-18T17:25:29"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": []
        },
        {
            "conversationId": "c-185d9c5-9ac3-4313-8073-8697b2a6xxxx",
            "sessionId": "673b29739514b2f61d0fxxxx",
            "channel": "Voice",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "Reason": "",
            "disconnectingEvent": "Agent Hangup",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "caller": "+1234567890",
                "callee": "+1987654321",
                "callerHost": "50.19.121.248",
                "userId": "u-4c44560b-2906-58f0-94bb-e88b2ffbxxxx",
                "dialedNumber": "+1987654321",
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "lastIntentName": "ConnectToAgent",
                    "automationBotId": "st-bdc0f473-406d-59bd-bd15-0d1b80afxxxx",
                    "accountId": "66bc4a29bdaafdb08461xxxx"
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "profColour": "#00008b",
                "jTitle": "",
                "dept": "",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-2b41857b-a1cb-5862-8faf-e3d99c3axxxx",
                "_id": "u-4c44560b-2906-58f0-94bb-e88b2ffbxxxx",
                "identities": [
                    {
                        "val": "cs-96d71a16-075b-5212-9988-9c70ebeee6e9/65cb65e5-70ca-4cfb-8a67-dc9ed519xxxx",
                        "type": "mapped"
                    },
                    {
                        "val": "66bc4a29bdaafdb08461b9f1/korevg/65cb65e5-70ca-4cfb-8a67-dc9ed519xxxx",
                        "type": "mapped"
                    }
                ]
            },
            "customerinfo": {
                "CustomerPhone": "+1234567890",
                "CenterPhone": "+1987654321",
                "CustomerFirstName": "",
                "CustomerLastName": "",
                "CustomerEmail": ""
            },
            "sessionStartTime": "2024-11-18T17:18:03",
            "sessionEndTime": "2024-11-18T17:20:01",
            "channelSpecificUserId": "66bc4a29bdaafdb08461b9f1/korevg/65cb65e5-70ca-4cfb-8a67-dc9ed519xxxx",
            "userId": "u-4c44560b-2906-58f0-94bb-e88b2ffbxxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-04e6978-6011-49d6-929d-cd715080xxxx",
                    "queueName": "Default Queue",
                    "EnterTime": "2024-11-18T17:18:04",
                    "respondingAgent": {
                        "agentId": "u-13034353-c9bc-53c8-845d-f8ce869fxxxx",
                        "agentNotes": [
                            "The customer requested to be transferred to an agent. The bot acknowledged the request 
and informed the customer that it would be transferred to an available agent. The agent greeted the customer, 
but no further conversation was mentioned by the customer."
                        ],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "firstResponseTime": "2024-11-18T17:18:20",
                        "firstResponseDuration": 0,
                        "interactionEndTime": "2024-11-18T17:20:04",
                        "interactionDuration": 104,
                        "holdDuration": 57,
                        "ConsultingAgents": [
                            {
                                "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                                "email": "uataug14th@mailinator.com",
                                "name": "UATAug14th 01",
                                "acceptedTime": "2024-11-18T17:18:55",
                                "assignedAt": "2024-11-18T17:18:41",
                                "consultingEndTime": "2024-11-18T17:19:57"
                            }
                        ],
                        "JoinedUsers": [],
                        "email": "newrole01@mailinator.com",
                        "name": "New Role 01",
                        "acceptedTime": "2024-11-18T17:18:20",
                        "assignedAt": "2024-11-18T17:18:05"
                    }
                }
            ],
            "userleveltags": [],
            "sessionleveltags": [
                {
                    "name": "audioCodesCallDisconnect",
                    "value": "1"
                },
                {
                    "name": "callerNumber",
                    "value": "+1234567890"
                },
                {
                    "name": "voiceAgentTransferStart",
                    "value": "1"
                },
                {
                    "name": "welcomeMessageTwilio",
                    "value": "1"
                }
            ]
        },
        {
            "conversationId": "c-66a640e-4b8c-4262-a5c8-22a93659xxxx",
            "sessionId": "673b2833bfc7023ab2f0xxxx",
            "channel": "Voice",
            "isVoicemail": "NO",
            "Direction": "Outbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "Reason": "",
            "disconnectingEvent": "Agent Hangup",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "userId": "u-6e2706a7-266a-5339-aa1f-8599b8eaxxxx",
                "firstName": "",
                "lastName": "",
                "caller": "+234567890",
                "callee": "+919876543210",
                "countryCode": "91",
                "dialedNumber": "+1234567890",
                "endUserNumber": "+919876543210",
                "agentTransferConfig": {
                    "overrideAgents": false
                }
            },
            "customerinfo": {
                "CustomerPhone": "+1234567890",
                "CenterPhone": "+919876543210",
                "CustomerFirstName": "",
                "CustomerLastName": "",
                "CustomerEmail": ""
            },
            "sessionStartTime": "2024-11-18T17:12:43",
            "sessionEndTime": "2024-11-18T17:13:29",
            "userId": "u-6e2706a7-266a-5339-aa1f-8599b8eaxxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-04e6978-6011-49d6-929d-cd715080xxxx",
                    "respondingAgent": {
                        "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                        "agentNotes": [],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "interactionEndTime": "2024-11-18T17:13:06",
                        "interactionDuration": 23,
                        "ConsultingAgents": [],
                        "JoinedUsers": [],
                        "email": "uataug14th@mailinator.com",
                        "name": "UATAug14th 01",
                        "acceptedTime": "2024-11-18T17:12:43",
                        "assignedAt": "2024-11-18T17:12:43"
                    }
                },
                {
                    "agentId": "u-13034353-c9bc-53c8-845d-f8ce869fxxxx",
                    "agentNotes": [
                        "The customer requested to speak with an agent. The agent responded with just."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "firstResponseTime": "2024-11-18T17:13:12",
                    "firstResponseDuration": 0,
                    "interactionEndTime": "2024-11-18T17:13:29",
                    "interactionDuration": 18,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "newrole01@mailinator.com",
                    "name": "New Role 01",
                    "acceptedTime": "2024-11-18T17:13:12",
                    "assignedAt": "2024-11-18T17:13:08"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": [
                {
                    "name": "audioCodesCallDisconnect",
                    "value": "1"
                }
            ]
        },
        {
            "conversationId": "c-c613d89-2c52-400d-9e0a-d85804e1xxxx",
            "sessionId": "673b2813bfc7023ab2f0xxxx",
            "channel": "Jones ",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "TRANSIENT_OPEN",
            "smartStatus": "",
            "Reason": "",
            "disconnectingEvent": "",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "userId": "u-8292e5ee-9187-5853-8b79-17b263f0xxxx",
                "firstName": "",
                "lastName": ""
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "",
                "CustomerLastName": "",
                "CustomerEmail": ""
            },
            "sessionStartTime": "2024-11-18T17:12:11",
            "sessionEndTime": "2024-11-18T17:12:11",
            "userId": "u-8292e5ee-9187-5853-8b79-17b263f0xxxx",
            "destinations": [
                {
                    "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                    "agentNotes": [],
                    "destinationType": "AgentSegment",
                    "email": "uataug14th@mailinator.com",
                    "name": "UATAug14th 01",
                    "assignedAt": "2024-11-18T17:12:11"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": []
        },
        {
            "conversationId": "c-e43cac4-a406-4583-8a6b-3d2e11eaxxxx",
            "sessionId": "673b27debfc7023ab2f0xxxx",
            "channel": "Jones ",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "Reason": "",
            "disconnectingEvent": "Agent Closed",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "userId": "u-2d7bc531-3c0e-53bb-85dd-399ba65axxxx",
                "firstName": "john.doe@abc.com",
                "lastName": "",
                "emailId": "john.doe@abc.com"
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "jane.doe@abc.com",
                "CustomerLastName": "",
                "CustomerEmail": "jane.doe@abc.com"
            },
            "sessionStartTime": "2024-11-18T17:11:18",
            "sessionEndTime": "2024-11-18T17:11:47",
            "userId": "u-2d7bc531-3c0e-53bb-85dd-399ba65axxxx",
            "destinations": [
                {
                    "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                    "agentNotes": [
                        "The customer requested to speak with an agent. The agent acknowledged the request 
and asked the customer to hold while connecting them with the appropriate department."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "interactionEndTime": "2024-11-18T17:12:00",
                    "interactionDuration": 13,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "uataug14th@mailinator.com",
                    "name": "UATAug14th 01",
                    "acceptedTime": "2024-11-18T17:11:47",
                    "assignedAt": "2024-11-18T17:11:47"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": []
        },
        {
            "conversationId": "c-e190a93-aa89-4933-95b9-d6dedc5axxxx",
            "sessionId": "673b264cbfc7023ab2f0xxxx",
            "channel": "Jones ",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "Reason": "",
            "disconnectingEvent": "Agent Closed",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "userId": "u-390b0c73-6b06-5656-a3b1-58746515xxxx",
                "firstName": "john.doe@abc.com",
                "lastName": "",
                "emailId": "john.doe@abc.com",
                "agentTransferConfig": {
                    "overrideAgents": false
                }
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "jane.doe@abc.com",
                "CustomerLastName": "",
                "CustomerEmail": "jane.doe@abc.com"
            },
            "sessionStartTime": "2024-11-18T17:04:36",
            "sessionEndTime": "2024-11-18T17:06:10",
            "userId": "u-390b0c73-6b06-5656-a3b1-58746515xxxx",
            "destinations": [
                {
                    "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                    "agentNotes": [],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "interactionEndTime": "2024-11-18T17:05:15",
                    "interactionDuration": 7,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "uataug14th@mailinator.com",
                    "name": "UATAug14th 01",
                    "acceptedTime": "2024-11-18T17:05:09",
                    "assignedAt": "2024-11-18T17:05:09"
                },
                {
                    "agentId": "u-13034353-c9bc-53c8-845d-f8ce869fxxxx",
                    "agentNotes": [
                        "The customer initiated a conversation with the agent, who responded with standard greetings. 
The customer did not mention any specific issues or requests during the conversation. 
The conversation ended without the customer or agent raising any problems or requesting any action."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "firstResponseTime": "2024-11-18T17:05:28",
                    "firstResponseDuration": 8,
                    "interactionEndTime": "2024-11-18T17:06:58",
                    "interactionDuration": 98,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "newrole01@mailinator.com",
                    "name": "New Role 01",
                    "acceptedTime": "2024-11-18T17:05:20",
                    "assignedAt": "2024-11-18T17:05:16"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": []
        },
        {
            "conversationId": "c-8741e16-0d99-4da2-9222-d863c400xxxx",
            "sessionId": "673b2420bfc7023ab2f0xxxx",
            "channel": "Jones ",
            "isVoicemail": "NO",
            "Direction": "Inbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "Reason": "",
            "disconnectingEvent": "Agent Closed",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "userId": "u-390b0c73-6b06-5656-a3b1-58746515xxxx",
                "firstName": "john.doe@abc.com",
                "lastName": "",
                "emailId": "john.doe@abc.com",
                "agentTransferConfig": {
                    "overrideAgents": false
                }
            },
            "customerinfo": {
                "CustomerPhone": "",
                "CenterPhone": "",
                "CustomerFirstName": "jane.doe@abc.com",
                "CustomerLastName": "",
                "CustomerEmail": "jane.doe@abc.com"
            },
            "sessionStartTime": "2024-11-18T16:55:20",
            "sessionEndTime": "2024-11-18T16:57:51",
            "userId": "u-390b0c73-6b06-5656-a3b1-58746515xxxx",
            "destinations": [
                {
                    "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                    "agentNotes": [],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "interactionEndTime": "2024-11-18T16:56:33",
                    "interactionDuration": 39,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "uataug14th@mailinator.com",
                    "name": "UATAug14th 01",
                    "acceptedTime": "2024-11-18T16:55:54",
                    "assignedAt": "2024-11-18T16:55:54"
                },
                {
                    "agentId": "u-13034353-c9bc-53c8-845d-f8ce869fxxxx",
                    "agentNotes": [
                        "The customer initiated a conversation with the agent, but the conversation was brief 
and did not contain any specific issues or requests. The customer did not provide any specific details about their 
problem or request. The agent's responses were brief and included generic greetings and phrases. 
There was no clear resolution or action taken in the conversation."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "firstResponseTime": "2024-11-18T16:57:08",
                    "firstResponseDuration": 28,
                    "interactionEndTime": "2024-11-18T17:00:54",
                    "interactionDuration": 254,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "newrole01@mailinator.com",
                    "name": "New Role 01",
                    "acceptedTime": "2024-11-18T16:56:40",
                    "assignedAt": "2024-11-18T16:56:34"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": []
        },
        {
            "conversationId": "c-504a3dc-4252-4b29-986c-4c4cbccaxxxx",
            "sessionId": "673b22bfbfc7023ab2f0xxxx",
            "channel": "Voice",
            "isVoicemail": "NO",
            "Direction": "Outbound",
            "skills": [],
            "finalStatus": "CLOSED",
            "smartStatus": "CLOSED",
            "Reason": "",
            "disconnectingEvent": "Agent Hangup",
            "botId": "st-4b6a22d1-b8e5-533d-8020-93f847a9xxxx",
            "dispositions": [],
            "dispositionRemarks": [],
            "metaInfo": {
                "userId": "u-a81d05ce-d4d9-5a20-bca7-89fa8b6exxxx",
                "firstName": "",
                "lastName": "",
                "caller": "+1234567890",
                "callee": "+919876543210",
                "countryCode": "91",
                "dialedNumber": "+1234567890",
                "endUserNumber": "+919876543210",
                "agentTransferConfig": {
                    "overrideAgents": false
                }
            },
            "customerinfo": {
                "CustomerPhone": "+1234567890",
                "CenterPhone": "+919876543210",
                "CustomerFirstName": "",
                "CustomerLastName": "",
                "CustomerEmail": ""
            },
            "sessionStartTime": "2024-11-18T16:49:27",
            "sessionEndTime": "2024-11-18T16:50:30",
            "userId": "u-a81d05ce-d4d9-5a20-bca7-89fa8b6exxxx",
            "destinations": [
                {
                    "destinationType": "QueueEntry",
                    "queueId": "qu-04e6978-6011-49d6-929d-cd715080xxxx",
                    "respondingAgent": {
                        "agentId": "u-0b7f0d22-4311-5555-9ed6-861c9231xxxx",
                        "agentNotes": [],
                        "destinationType": "AgentSegment",
                        "status": "Answered",
                        "firstResponseTime": "2024-11-18T16:49:41",
                        "firstResponseDuration": 14,
                        "interactionEndTime": "2024-11-18T16:50:02",
                        "interactionDuration": 35,
                        "ConsultingAgents": [],
                        "JoinedUsers": [],
                        "email": "uataug14th@mailinator.com",
                        "name": "UATAug14th 01",
                        "acceptedTime": "2024-11-18T16:49:27",
                        "assignedAt": "2024-11-18T16:49:27"
                    }
                },
                {
                    "agentId": "u-13034353-c9bc-53c8-845d-f8ce869fxxxx",
                    "agentNotes": [
                        "The customer initiated the conversation with a greeting. The agent responded with a similar 
greeting, but did not provide any specific assistance or information. The conversation ended abruptly without the customer 
or agent mentioning an issue or requesting a resolution."
                    ],
                    "destinationType": "AgentSegment",
                    "status": "Answered",
                    "firstResponseTime": "2024-11-18T16:50:14",
                    "firstResponseDuration": 0,
                    "interactionEndTime": "2024-11-18T16:50:30",
                    "interactionDuration": 16,
                    "ConsultingAgents": [],
                    "JoinedUsers": [],
                    "email": "newrole01@mailinator.com",
                    "name": "New Role 01",
                    "acceptedTime": "2024-11-18T16:50:14",
                    "assignedAt": "2024-11-18T16:50:05"
                }
            ],
            "userleveltags": [],
            "sessionleveltags": [
                {
                    "name": "audioCodesCallDisconnect",
                    "value": "1"
                }
            ]
        }
    ]
}
```

## Response Parameters

| Field Name                                 | Type and Format                          | Description                                                                                       | Example                                                                                     |
|--------------------------------------------|------------------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|
| conversationId                             | type-prefixed-guid                       | An ID generated by SmartAssist for this conversation.                                            | c-7b08889-539d-408d-a3e6-9e6ae059xxxx                                                      |
| sessionId                                  | internal value                           | A bot-generated ID for this conversation.                                                       | 63bd199c197b3646dadexxxx                                                                    |
| channel                                    | character string                         | Name of the channel                                                                              | Web / Mobile Client                                                                         |
| skills                                     | array of skill objects                   | ID and name of each skill associated with this conversation                                      | { “id”: “64c0d5353642d2755604xxxx”, “name”: “Platinum Customer” }                           |
| finalStatus                                | character string                         | Completion status of the conversation                                                           | CLOSED                                                                                      |
| smartStatus                                | character string                         | Conversation status                                                                              | TERMINATED                                                                                  |
| Reason                                     | character string                         | The reason for the status. | NO AGENTS AVAILABLE                                                                         |
| disconnectingEvent                         | character string                         | The final event leading to the conversation ending                                               | System Hangup                                                                               |
| botId                                      | type-prefixed-guid                       |                                                                                                   | st-ae8470ab-8ecb-51fb-8e13-c87dc66fxxxx                                                    |
| Direction                                  | Inbound or Outbound                      |                                                                                                   |                                                                                             |
| dispositions                               | array of strings                         | Disposition codes                                                                                | [ “ESCALATED” ]                                                                             |
| dispositionRemarks                         | array of strings                         | Final remarks from the agent                                                                     | [” CUSTOMER needs help with Products and Sales. AGENT will connect her with an agent.”]     |
| customerInfo                               | object                                   | Info on the caller obtained on a best-efforts basis                                              | { “CustomerPhone”: “1888456780”, “CenterPhone”: “1234567890”, “CustomerFirstName”: “John” } |
| metaInfo                                   | object                                   | Contains custom information, set by the automation                                               |                                                                                             |
| sessionStartTime                           | YYYY-MM-DDTHH:mm: SS                      | Start time of the session.                                                                       | 2023-01-10 2:25:54                                                                          |
| sessionEndTime                             | YYYY-MM-DDTHH:mm: SS                      | End time of the session.                                                                         | 2023-01-10 2:25:54                                                                          |
| channelSpecificUserId                      | no known format                          | User ID passed by the channel                                                                    |                                                                                             |
| userId                                     | type-prefixed-guid                       | SmartAssist’s own generated user ID                                                              | u-8413fd99-4ded-5f6d-8c1a-176dc66xxxx                                                      |
| destinations                               | array of objects                         | One object for each Queue or Agent that the call was transferred to.                             |                                                                                             |
| destination.destinationType                | QueueEntry | AgentSegment               | Destination for any transfer – to distinguish a direct-to-agent transfer from a transfer to queue. |                                                                                             |
| csatScore                                  | integer                                  | CSAT score assigned by consumer (1 – 5)                                                          | 3                                                                                           |
| csatFeedback                               | string                                   | Survey comment entered by consumer.                                                              |                                                                                             |
| QueueEntry.queueId                         | type-prefixed-guid                       | SmartAssist’s internal ID for the Queue                                                          | qu-123dbe9-c752-464d-a9be-1d0e43b6xxxx                                                     |
| QueueEntry.queueName                       | character string                         | Name of the queue                                                                                | Residential – Sales                                                                         |
| QueueEntry.EnterTime                       | YYYY-MM-DDTHH:mm:SS                      | Time at which this conversation entered this queue                                               | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent                 | an AgentSegment object                   | Details of the responding agent.                                                                 |                                                                                             |
| QueueEntry.respondingAgent.agentId         | type-prefixed-guid                       | SmartAssist’s internal ID for the agent                                                          | u-f3a11f62-57d7-5a9f-a071-787650b1xxxx                                                     |
| QueueEntry.respondingAgent.name            | character string                         | Agent’s name                                                                                     | Jared Smith                                                                                 |
| QueueEntry.respondingAgent.agentNotes      | array of strings                         | Notes from each agent.                                                                           | [“CUSTOMER has a problem with Products and Sales. She needs an agent to help her.”]         |
| QueueEntry.respondingAgent.destinationType | AgentSegment                             | A constant value.                                                                                |                                                                                             |
| QueueEntry.respondingAgent.email           | full-email-id@employer.com               | Agent’s email address                                                                            | jared.smith@example.com                                                                     |
| QueueEntry.respondingAgent.assignedAt      | YYYY-MM-DDTHH:mm: SS                      | The time at which the Queue assigned this contact to this Agent                                  | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent.acceptedTime    | YYYY-MM-DDTHH:mm: SS                      | The time at which this Agent accepted this contact                                               | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent.status          | Answered                                 | Status of the conversation with this respondingAgent.                                            |                                                                                             |
| QueueEntry.respondingAgent.firstResponseTime | YYYY-MM-DDTHH:mm: SS                    | The time at which this Agent first responded                                                     | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent.firstResponseDuration | integer                                | Duration in seconds, from the time of Agent’s acceptance to the time of his first response.      | 20                                                                                          |
| QueueEntry.respondingAgent.interactionEndTime | YYYY-MM-DDTHH:mm: SS                     | The time at which the interaction with this respondingAgent ended.                               | 2023-01-10 2:25:54                                                                          |
| QueueEntry.respondingAgent.interactionDuration | integer                                 | Duration in seconds, from the time of Agent’s acceptance to the time of the last utterance       | 51                                                                                          |
| QueueEntry.respondingAgent.afterCallWorkDuration | integer                                 | Duration in seconds, of the post-call-work of this agent.                                        | 8                                                                                           |
| QueueEntry.respondingAgent.afterCallWorkEndTime | YYYY-MM-DDTHH:mm: SS                     | The time when this agent completed post-call work.                                               | 2023-01-10 2:25:54                                                                          |
| QueueEntry.nonRespondingAgents             | array of nonRespondingAgent objects      | Details of agents who did not accept the contact.                                                |                                                                                             |
| QueueEntry.nonRespondingAgent.agentId      | type-prefixed-guid                       | SmartAssist’s internal ID for the Agent                                                          | u-93e53753-0ea0-5168-b8ae-ad731f7axxxx                                                     |
| QueueEntry.nonRespondingAgent.name         | character string                         | Agent’s name                                                                                     | Diarmuid O’Scannlain                                                                        |
| QueueEntry.nonRespondingAgent.email        | email                                    | Agent’s email address                                                                            | di.oscannlain@example.com                                                                   |
| QueueEntry.nonRespondingAgent.assignedAt   | YYYY-MM-DDTHH:mm: SS                      | The time when this agent was assigned this contact.                                              | 2023-01-10 2:25:54                                                                          |
| userleveltags                              | array of tag objects                     | All user-level tags associated with this session                                                 | {“name”: “accountnum”,”value”: “121413243141234132” }                                       |
| sessionleveltags                           |                                          | All session-level tags associated with this session                                              |                                                                                             |
