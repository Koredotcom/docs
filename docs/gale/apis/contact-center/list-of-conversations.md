# List of Conversations

Get the list of conversations with the given stream Id.

<table>
  <tr>
   <td>Method
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/conversations?skip={}&limit={}&fields={}&status={}&source={}&language={}'</code>
   </td>
  </tr>
  <tr>
   <td>Content-Type
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td><code>auth: {{JWT}}</code>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>SmartAssist Analytics
   </td>
  </tr>
</table>

## Path Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>The Environment URL. For example, https://smartassist.kore.ai
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>streamId
   </td>
   <td>Bot ID or Stream ID. You can access it from the General Settings page of the bot.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>Your Account ID.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/v1/public/{{streamId}}/conversations?skip={}&limit={}&fields={}&status={}&source={}&language={}' \
--header 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
--header 'accountId: {{YOUR_accountId}}'
```

## Query Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>skip
   </td>
   <td>The number of conversations to skip in the result (default = 0).
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>status
   </td>
   <td>Based on the status of the conversation you can filter the search.  ENUM[ACTIVE, CLOSED, IDLE, OPEN, OVERDUE, TERMINATED].
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>source
   </td>
   <td>The channel of the conversation.
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>language
   </td>
   <td>The language in which conversation details are needed.
   </td>
   <td>string, optional
   </td>
  </tr>
</table>

## Sample Response

```
{
    "results": [
        {
            "startSessionTime": "2023-05-25T06:56:11.959Z",
            "botSessionId": "646f068b2462fdb06685ba66",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-f812d6e9-58ce-5a74-9d20-7011deb454ea",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "audiocodes",
            "_id": "c-3d7265b-de0a-489d-a2eb-69ce6bde06ab",
            "participants": [
                {
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ACTIVE",
                    "assignedAt": "2023-05-25T06:58:57.984Z",
                    "startTimeStamp": "2023-05-25T06:59:00.977Z",
                    "endTimeStamp": "2023-05-25T06:59:09.798Z"
                }
            ],
            "transferDetails": [
                {
                    "fromAgent": null,
                    "transferredType": "OTHERS",
                    "transferredTo": [
                        {
                            "type": "AGENT",
                            "id": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                            "name": "John Doe",
                            "emailId": ""
                        }
                    ],
                    "transferredBy": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "priority": "LOW",
                    "transferredAt": "2023-05-25T06:58:57.840Z",
                    "isManager": true
                }
            ],
            "waitTime": 4142,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": true,
            "contactFlow": [],
            "surveyRequired": "NO",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "phoneNumber": "+18448735673",
            "conversationId": "9a1b6f71-c8af-46dd-8645-d88940473170",
            "language": "en",
            "botSIPURI": "sip:+12056064378@audiocodes-sbc-prod.kore.ai:5060",
            "CallIDData": "707fea2d0d9dbe5a885cb1c396ae5960",
            "sentimentTone": {
                "sentiment": "fear",
                "emoji": "😨",
                "strength": 2
            },
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to any agent.",
            "priority": 10,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-25T06:56:38.734Z"
                }
            ],
            "startTime": "2023-05-25T06:56:38.734Z",
            "endTime": "2023-05-25T06:59:28.234Z",
            "formData": [],
            "timestampValue": 1684997798734,
            "createdAt": "2023-05-25T06:56:38.735Z",
            "updatedAt": "2023-05-25T06:59:28.235Z",
            "__v": 0,
            "skills": [],
            "acceptedAt": "2023-05-25T06:59:00.978Z",
            "notes": [
                {
                    "_id": "646f0750d15e5a3db2ae60a0",
                    "conversationId": "c-3d7265b-de0a-489d-a2eb-69ce6bde06ab",
                    "author": {
                        "_id": "646f0750d15e5a3db2ae60a1",
                        "firstName": "John",
                        "lastName": "Doe",
                        "userId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f"
                    },
                    "note": "Consumer wants to talk to any agent on the line. Agent will get an agent on the line to help her with that.",
                    "timestamp": "2023-05-25T06:59:28.234Z"
                }
            ],
            "userInfo": {
                "caller": "+18448735673",
                "callee": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
                "callerHost": "Twilio-US",
                "userId": "u-f812d6e9-58ce-5a74-9d20-7011deb454ea",
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to any agent.",
                    "dialog_tone": [
                        {
                            "tone_name": "fear",
                            "level": 2,
                            "count": 1,
                            "totalLevel": 2
                        }
                    ],
                    "accountId": "637368b4a1d039e34ba63bbf"
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#40e0d0",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-f812d6e9-58ce-5a74-9d20-7011deb454ea",
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/9a1b6f71-c8af-46dd-8645-d88940473170",
                        "type": "mapped"
                    },
                    {
                        "val": "637368b4a1d039e34ba63bbf/audiocodes/707fea2d0d9dbe5a885cb1c396ae5960",
                        "type": "mapped"
                    }
                ],
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2"
            },
            "dispositions": {
                "status": "UnKnown",
                "remarks": "Consumer wants to talk to any agent on the line. Agent will get an agent on the line to help her with that.",
                "dispositionSets": [
                    {
                        "dispositionsSet": "resolution",
                        "dispositionCodes": "Unresolved"
                    }
                ],
                "metaStatus": "AGENT_CLOSED"
            }
        },
        {
            "startSessionTime": "2023-05-25T06:54:08.209Z",
            "botSessionId": "646f0610ff0e342a2e6654ab",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-3441cbb7-1a5b-52a5-ab8e-0e0565c0526b",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "audiocodes",
            "_id": "c-8302149-5d53-4912-95ec-1dc1109cd161",
            "participants": [
                {
                    "queueId": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "queueStartTime": "2023-05-25T06:54:31.499Z",
                    "queueName": "Default Queue",
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ACTIVE",
                    "assignedAt": "2023-05-25T06:54:31.587Z",
                    "startTimeStamp": "2023-05-25T06:54:41.477Z",
                    "endTimeStamp": "2023-05-25T06:55:04.399Z"
                }
            ],
            "transferDetails": [],
            "waitTime": 10983,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": false,
            "contactFlow": [],
            "surveyRequired": "NO",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "phoneNumber": "+18448735673",
            "conversationId": "8d04dba7-93c5-4b20-92c8-c62d3b7e4dc4",
            "language": "en",
            "botSIPURI": "sip:+12056064378@audiocodes-sbc-prod.kore.ai:5060",
            "CallIDData": "d34930c01bb47b720e28bbd17d992954",
            "sentimentTone": {
                "sentiment": "fear",
                "emoji": "😨",
                "strength": 2
            },
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to Vinny agent.",
            "priority": 5,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-25T06:54:31.499Z"
                }
            ],
            "startTime": "2023-05-25T06:54:31.499Z",
            "endTime": "2023-05-25T06:56:44.174Z",
            "formData": [],
            "timestampValue": 1684997671499,
            "createdAt": "2023-05-25T06:54:31.501Z",
            "updatedAt": "2023-05-25T06:56:44.174Z",
            "__v": 0,
            "skills": [],
            "acceptedAt": "2023-05-25T06:54:41.477Z",
            "notes": [
                {
                    "_id": "646f06acd15e5a3db2ae5fff",
                    "conversationId": "c-8302149-5d53-4912-95ec-1dc1109cd161",
                    "author": {
                        "_id": "646f06acd15e5a3db2ae6000",
                        "firstName": "John",
                        "lastName": "Doe",
                        "userId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f"
                    },
                    "note": "Consumer wants to talk to Vinny agent. He will need to get an agent on the line to help him with that.",
                    "timestamp": "2023-05-25T06:56:44.174Z"
                }
            ],
            "userInfo": {
                "caller": "+18448735673",
                "callee": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
                "callerHost": "Twilio-US",
                "userId": "u-3441cbb7-1a5b-52a5-ab8e-0e0565c0526b",
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to Vinny agent.",
                    "dialog_tone": [
                        {
                            "tone_name": "fear",
                            "level": 2,
                            "count": 1,
                            "totalLevel": 2
                        }
                    ],
                    "accountId": "637368b4a1d039e34ba63bbf"
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#ffa500",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-3441cbb7-1a5b-52a5-ab8e-0e0565c0526b",
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/8d04dba7-93c5-4b20-92c8-c62d3b7e4dc4",
                        "type": "mapped"
                    },
                    {
                        "val": "637368b4a1d039e34ba63bbf/audiocodes/d34930c01bb47b720e28bbd17d992954",
                        "type": "mapped"
                    }
                ],
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2"
            },
            "dispositions": {
                "status": "UnKnown",
                "remarks": "Consumer wants to talk to Vinny agent. He will need to get an agent on the line to help him with that.",
                "dispositionSets": [
                    {
                        "dispositionsSet": "resolution",
                        "dispositionCodes": "Resolved"
                    }
                ],
                "metaStatus": "AGENT_CLOSED"
            }
        },
        {
            "startSessionTime": "2023-05-25T06:52:16.278Z",
            "botSessionId": "646f05a0a323f0b004a148b2",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-6faacd87-fc23-57bc-b413-0de2fcbe8244",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "audiocodes",
            "_id": "c-1852ab9-94b0-48ad-99e4-0e8678b73618",
            "participants": [
                {
                    "queueId": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "queueStartTime": "2023-05-25T06:52:38.866Z",
                    "queueName": "Default Queue",
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ACTIVE",
                    "assignedAt": "2023-05-25T06:52:39.068Z",
                    "startTimeStamp": "2023-05-25T06:52:44.218Z",
                    "endTimeStamp": "2023-05-25T06:54:01.548Z"
                }
            ],
            "transferDetails": [],
            "waitTime": 6356,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": false,
            "contactFlow": [],
            "surveyRequired": "NO",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "phoneNumber": "+18448735673",
            "conversationId": "58af75ba-3c73-475d-bb42-ca1adbc638f3",
            "language": "en",
            "botSIPURI": "sip:+12056064378@audiocodes-sbc-prod.kore.ai:5060",
            "CallIDData": "284b750aa69e8552be5c2afaa78e9be7",
            "sentimentTone": {
                "sentiment": "fear",
                "emoji": "😨",
                "strength": 2
            },
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to an agent.",
            "priority": 5,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-25T06:52:38.866Z"
                }
            ],
            "startTime": "2023-05-25T06:52:38.866Z",
            "endTime": "2023-05-25T06:54:04.078Z",
            "formData": [],
            "timestampValue": 1684997558866,
            "createdAt": "2023-05-25T06:52:38.868Z",
            "updatedAt": "2023-05-25T06:54:04.079Z",
            "__v": 0,
            "skills": [],
            "acceptedAt": "2023-05-25T06:52:44.218Z",
            "notes": [
                {
                    "_id": "646f060cd15e5a3db2ae5f8d",
                    "conversationId": "c-1852ab9-94b0-48ad-99e4-0e8678b73618",
                    "author": {
                        "_id": "646f060cd15e5a3db2ae5f8e",
                        "firstName": "John",
                        "lastName": "Doe",
                        "userId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f"
                    },
                    "note": "Consumer wants to talk to an agent. Agent will get an agent on the line to help her with that.",
                    "timestamp": "2023-05-25T06:54:04.078Z"
                }
            ],
            "userInfo": {
                "caller": "+18448735673",
                "callee": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
                "callerHost": "Twilio-US",
                "userId": "u-6faacd87-fc23-57bc-b413-0de2fcbe8244",
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to an agent.",
                    "dialog_tone": [
                        {
                            "tone_name": "fear",
                            "level": 2,
                            "count": 1,
                            "totalLevel": 2
                        }
                    ],
                    "accountId": "637368b4a1d039e34ba63bbf"
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#00ff7f",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-6faacd87-fc23-57bc-b413-0de2fcbe8244",
                "customData": null,
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/58af75ba-3c73-475d-bb42-ca1adbc638f3",
                        "type": "mapped"
                    },
                    {
                        "val": "637368b4a1d039e34ba63bbf/audiocodes/284b750aa69e8552be5c2afaa78e9be7",
                        "type": "mapped"
                    }
                ],
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2"
            },
            "dispositions": {
                "status": "UnKnown",
                "remarks": "Consumer wants to talk to an agent. Agent will get an agent on the line to help her with that.",
                "dispositionSets": [
                    {
                        "dispositionsSet": "resolution",
                        "dispositionCodes": "Resolved"
                    }
                ],
                "metaStatus": "AGENT_CLOSED"
            }
        },
        {
            "startSessionTime": "2023-05-25T06:23:48.932Z",
            "botSessionId": "646efef54fd9612a21fffbc8",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-cbec4d7d-08f8-5e39-9af8-4631731bd84f",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "rtm",
            "_id": "c-7e66963-2291-44c0-96a8-c0b40e2e976b",
            "participants": [
                {
                    "queueId": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "queueStartTime": "2023-05-25T06:24:07.099Z",
                    "queueName": "Default Queue",
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ACTIVE",
                    "assignedAt": "2023-05-25T06:24:56.437Z",
                    "startTimeStamp": "2023-05-25T06:25:11.157Z",
                    "endTimeStamp": "2023-05-25T06:25:20.691Z"
                }
            ],
            "transferDetails": [],
            "waitTime": 65063,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": false,
            "contactFlow": [],
            "surveyRequired": "YES",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "language": "en",
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to an agent",
            "agentDesktopMeta": {
                "pagesVisited": []
            },
            "conversationType": "messaging",
            "priority": 7,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-25T06:24:07.099Z"
                }
            ],
            "startTime": "2023-05-25T06:24:07.099Z",
            "endTime": "2023-05-25T06:30:43.356Z",
            "formData": [],
            "timestampValue": 1684995847099,
            "createdAt": "2023-05-25T06:24:07.100Z",
            "updatedAt": "2023-05-25T06:30:43.356Z",
            "__v": 0,
            "skills": [],
            "acceptedAt": "2023-05-25T06:25:11.157Z",
            "notes": [
                {
                    "_id": "646f0093d15e5a3db2ae5eac",
                    "conversationId": "c-7e66963-2291-44c0-96a8-c0b40e2e976b",
                    "author": {
                        "_id": "646f0093d15e5a3db2ae5ead",
                        "firstName": "John",
                        "lastName": "Doe",
                        "userId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f"
                    },
                    "note": "2023-05-25T06:23:49.156Z",
                    "timestamp": "2023-05-25T06:30:43.355Z"
                }
            ],
            "userInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#2e8b57",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-cbec4d7d-08f8-5e39-9af8-4631731bd84f",
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/6f0fdd50-a75f-48ec-848f-78efac0507b6d65aa2ac-3969-4486-b9f9-eacc2728c4a4",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": true,
                            "botId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                            "dialogId": "dg-dea45cdd-c731-522e-a1dd-f5d5aacc5f39",
                            "dialogRefId": "6f3688aa-f41b-5d6e-8444-e27c6c225634"
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to an agent",
                    "dialog_tone": []
                },
                "city": "Bengaluru",
                "country": "India",
                "isp": "Bharti Airtel Ltd., Telemedia Services",
                "ipAddress": "122.171.19.66",
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                "hostDomain": "https://bots.kore.ai",
                "os": "Linux",
                "device": "NA"
            },
            "dispositions": {
                "status": "UnKnown",
                "remarks": "2023-05-25T06:23:49.156Z",
                "dispositionSets": [
                    {
                        "dispositionsSet": "All Queues Selected Set (System Generated)",
                        "dispositionCodes": "New Disposition"
                    },
                    {
                        "dispositionsSet": "resolution",
                        "dispositionCodes": "Resolved"
                    }
                ],
                "metaStatus": "AGENT_CLOSED"
            }
        },
        {
            "startSessionTime": "2023-05-25T06:21:32.449Z",
            "botSessionId": "646efe6ca323f0b004a11929",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-6a0f537a-dce5-53ef-bca1-447453916104",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "rtm",
            "_id": "c-165ad47-2171-427d-a343-4000bb255e05",
            "participants": [
                {
                    "queueId": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "queueStartTime": "2023-05-25T06:21:46.859Z",
                    "queueName": "Default Queue",
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ABANDONED",
                    "assignedAt": "2023-05-25T06:21:47.010Z",
                    "endTimeStamp": "2023-05-25T06:22:02.025Z"
                },
                {
                    "queueId": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "queueStartTime": "2023-05-25T06:21:46.859Z",
                    "queueName": "Default Queue",
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ACTIVE",
                    "assignedAt": "2023-05-25T06:24:56.389Z",
                    "startTimeStamp": "2023-05-25T06:25:07.382Z",
                    "endTimeStamp": "2023-05-25T06:25:23.943Z"
                }
            ],
            "transferDetails": [],
            "waitTime": 201526,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": false,
            "contactFlow": [],
            "surveyRequired": "YES",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "language": "en",
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to an agent",
            "agentDesktopMeta": {
                "pagesVisited": [
                    {
                        "page": "Kore.ai Web Client",
                        "timestamp": "2023-05-25T05:03:29.682Z",
                        "timespent": 4685.904
                    }
                ]
            },
            "conversationType": "messaging",
            "priority": null,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-25T06:21:46.859Z"
                }
            ],
            "startTime": "2023-05-25T06:21:46.860Z",
            "endTime": "2023-05-25T06:30:33.543Z",
            "formData": [],
            "timestampValue": 1684995706860,
            "createdAt": "2023-05-25T06:21:46.861Z",
            "updatedAt": "2023-05-25T06:30:33.544Z",
            "__v": 0,
            "skills": [],
            "acceptedAt": "2023-05-25T06:25:07.382Z",
            "notes": [
                {
                    "_id": "646f0089d15e5a3db2ae5e6c",
                    "conversationId": "c-165ad47-2171-427d-a343-4000bb255e05",
                    "author": {
                        "_id": "646f0089d15e5a3db2ae5e6d",
                        "firstName": "John",
                        "lastName": "Doe",
                        "userId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f"
                    },
                    "note": "2023-05-25 T06:21:32.526Z",
                    "timestamp": "2023-05-25T06:30:33.542Z"
                }
            ],
            "userInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#00008b",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-6a0f537a-dce5-53ef-bca1-447453916104",
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/ae3977cb-ee1d-4620-a521-3932df4e3ec0ae058e1f-d1de-4c7d-9198-6ca423652290",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": true,
                            "botId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                            "dialogId": "dg-dea45cdd-c731-522e-a1dd-f5d5aacc5f39",
                            "dialogRefId": "6f3688aa-f41b-5d6e-8444-e27c6c225634"
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to an agent",
                    "dialog_tone": []
                },
                "city": "Bengaluru",
                "country": "India",
                "isp": "Bharti Airtel Ltd., Telemedia Services",
                "ipAddress": "122.171.19.66",
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                "hostDomain": "https://bots.kore.ai",
                "os": "Windows",
                "device": "NA"
            },
            "dispositions": {
                "status": "UnKnown",
                "remarks": "2023-05-25 T06:21:32.526Z",
                "dispositionSets": [
                    {
                        "dispositionsSet": "resolution",
                        "dispositionCodes": "Resolved"
                    }
                ],
                "metaStatus": "AGENT_CLOSED"
            }
        },
        {
            "startSessionTime": "2023-05-25T05:31:01.181Z",
            "botSessionId": "646ef2956cac8f291f510094",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-c4704f24-3863-5638-9866-4e723acfecc0",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "audiocodes",
            "_id": "c-dd41e63-60c6-4b4d-826a-8a5cea7dc688",
            "participants": [
                {
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ACTIVE",
                    "assignedAt": "2023-05-25T05:33:52.286Z",
                    "startTimeStamp": "2023-05-25T05:33:56.024Z",
                    "endTimeStamp": "2023-05-25T05:43:07.817Z"
                }
            ],
            "transferDetails": [
                {
                    "fromAgent": null,
                    "transferredType": "OTHERS",
                    "transferredTo": [
                        {
                            "type": "AGENT",
                            "id": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                            "name": "John Doe",
                            "emailId": ""
                        }
                    ],
                    "transferredBy": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "priority": "LOW",
                    "transferredAt": "2023-05-25T05:33:52.245Z",
                    "isManager": true
                }
            ],
            "waitTime": 4784,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": true,
            "contactFlow": [],
            "surveyRequired": "NO",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "phoneNumber": "+18448735673",
            "conversationId": "44010e4e-b0e1-4de8-94c4-b109171c5571",
            "language": "en",
            "botSIPURI": "sip:+12056064378@audiocodes-sbc-prod.kore.ai:5060",
            "CallIDData": "b6036d93924f78f16c3791cfbaa2bb44",
            "sentimentTone": {
                "sentiment": "fear",
                "emoji": "😨",
                "strength": 2
            },
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to an agent.",
            "priority": 10,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-25T05:31:25.785Z"
                }
            ],
            "startTime": "2023-05-25T05:31:25.785Z",
            "endTime": "2023-05-25T05:43:11.740Z",
            "formData": [],
            "timestampValue": 1684992685785,
            "createdAt": "2023-05-25T05:31:25.786Z",
            "updatedAt": "2023-05-25T05:43:11.740Z",
            "__v": 0,
            "skills": [],
            "acceptedAt": "2023-05-25T05:33:56.024Z",
            "notes": [
                {
                    "_id": "646ef56f395ad73d95c1e196",
                    "conversationId": "c-dd41e63-60c6-4b4d-826a-8a5cea7dc688",
                    "author": {
                        "_id": "646ef56f395ad73d95c1e197",
                        "firstName": "John",
                        "lastName": "Doe",
                        "userId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f"
                    },
                    "note": "Consumer wants to talk to an agent. Agent will get an agent on the line to help her with that.",
                    "timestamp": "2023-05-25T05:43:11.739Z"
                }
            ],
            "userInfo": {
                "caller": "+18448735673",
                "callee": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
                "callerHost": "Twilio-US",
                "userId": "u-c4704f24-3863-5638-9866-4e723acfecc0",
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to an agent.",
                    "dialog_tone": [
                        {
                            "tone_name": "fear",
                            "level": 2,
                            "count": 1,
                            "totalLevel": 2
                        }
                    ],
                    "accountId": "637368b4a1d039e34ba63bbf"
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#ffa500",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-c4704f24-3863-5638-9866-4e723acfecc0",
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/44010e4e-b0e1-4de8-94c4-b109171c5571",
                        "type": "mapped"
                    },
                    {
                        "val": "637368b4a1d039e34ba63bbf/audiocodes/b6036d93924f78f16c3791cfbaa2bb44",
                        "type": "mapped"
                    }
                ],
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2"
            },
            "dispositions": {
                "status": "UnKnown",
                "remarks": "Consumer wants to talk to an agent. Agent will get an agent on the line to help her with that.",
                "dispositionSets": [
                    {
                        "dispositionsSet": "resolution",
                        "dispositionCodes": "Resolved"
                    }
                ],
                "metaStatus": "AGENT_CLOSED"
            }
        },
        {
            "startSessionTime": "2023-05-25T05:29:49.153Z",
            "botSessionId": "646ef24daaacc2c759efbd65",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-144b1515-eaf2-5ac3-b36c-b1cce2180cbd",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "audiocodes",
            "_id": "c-3b5c877-09ba-43d2-8115-ee169254bab3",
            "participants": [
                {
                    "queueId": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "queueStartTime": "2023-05-25T05:30:19.984Z",
                    "queueName": "Default Queue",
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ACTIVE",
                    "assignedAt": "2023-05-25T05:30:20.078Z",
                    "startTimeStamp": "2023-05-25T05:30:28.358Z",
                    "endTimeStamp": "2023-05-25T05:30:44.202Z"
                }
            ],
            "transferDetails": [],
            "waitTime": 9378,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": true,
            "contactFlow": [],
            "surveyRequired": "NO",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "phoneNumber": "+18448735673",
            "conversationId": "b93626e4-ba18-4fc7-88ff-eeb7f7088209",
            "language": "en",
            "botSIPURI": "sip:+12056064378@audiocodes-sbc-prod.kore.ai:5060",
            "CallIDData": "5eacf5ea21cb95ce7736b3547351ae2f",
            "sentimentTone": {
                "sentiment": "fear",
                "emoji": "😨",
                "strength": 2
            },
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to an agent.",
            "priority": 5,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-25T05:30:19.984Z"
                }
            ],
            "startTime": "2023-05-25T05:30:19.984Z",
            "endTime": "2023-05-25T05:30:53.256Z",
            "formData": [],
            "timestampValue": 1684992619984,
            "createdAt": "2023-05-25T05:30:19.985Z",
            "updatedAt": "2023-05-25T05:30:53.257Z",
            "__v": 0,
            "skills": [],
            "acceptedAt": "2023-05-25T05:30:28.358Z",
            "reconnectedAt": "2023-05-25T05:30:39.082Z",
            "notes": [
                {
                    "_id": "646ef28d395ad73d95c1e0ce",
                    "conversationId": "c-3b5c877-09ba-43d2-8115-ee169254bab3",
                    "author": {
                        "_id": "646ef28d395ad73d95c1e0cf",
                        "firstName": "John",
                        "lastName": "Doe",
                        "userId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f"
                    },
                    "note": "Consumer wants to talk to an agent. Agent will get an agent on the line to help her with that.",
                    "timestamp": "2023-05-25T05:30:53.256Z"
                }
            ],
            "userInfo": {
                "caller": "+18448735673",
                "callee": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
                "callerHost": "Twilio-US",
                "userId": "u-144b1515-eaf2-5ac3-b36c-b1cce2180cbd",
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to an agent.",
                    "dialog_tone": [
                        {
                            "tone_name": "fear",
                            "level": 2,
                            "count": 1,
                            "totalLevel": 2
                        }
                    ],
                    "accountId": "637368b4a1d039e34ba63bbf"
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#00008b",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-144b1515-eaf2-5ac3-b36c-b1cce2180cbd",
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/b93626e4-ba18-4fc7-88ff-eeb7f7088209",
                        "type": "mapped"
                    },
                    {
                        "val": "637368b4a1d039e34ba63bbf/audiocodes/5eacf5ea21cb95ce7736b3547351ae2f",
                        "type": "mapped"
                    }
                ],
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2"
            },
            "dispositions": {
                "status": "UnKnown",
                "remarks": "Consumer wants to talk to an agent. Agent will get an agent on the line to help her with that.",
                "dispositionSets": [
                    {
                        "dispositionsSet": "resolution",
                        "dispositionCodes": "Resolved"
                    }
                ],
                "metaStatus": "AGENT_CLOSED"
            }
        },
        {
            "startSessionTime": "2023-05-25T05:26:43.777Z",
            "botSessionId": "646ef1931c7a4f29c0b0b189",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-e60cc049-d514-5e0d-a856-963d812a3d00",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "audiocodes",
            "_id": "c-ab5b6d7-d504-4e29-b083-b31005538da7",
            "participants": [
                {
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ACTIVE",
                    "assignedAt": "2023-05-25T05:29:16.022Z",
                    "startTimeStamp": "2023-05-25T05:29:20.032Z",
                    "endTimeStamp": "2023-05-25T05:29:36.487Z"
                }
            ],
            "transferDetails": [
                {
                    "fromAgent": null,
                    "transferredType": "OTHERS",
                    "transferredTo": [
                        {
                            "type": "AGENT",
                            "id": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                            "name": "John Doe",
                            "emailId": ""
                        }
                    ],
                    "transferredBy": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "priority": "LOW",
                    "transferredAt": "2023-05-25T05:29:15.724Z",
                    "isManager": true
                }
            ],
            "waitTime": 5314,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": true,
            "contactFlow": [],
            "surveyRequired": "NO",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "phoneNumber": "+18448735673",
            "conversationId": "dcf958b2-0564-4d3a-97f6-d31008d257d2",
            "language": "en",
            "botSIPURI": "sip:+12056064378@audiocodes-sbc-prod.kore.ai:5060",
            "CallIDData": "b0c9fc233926c1c051d487311652190a",
            "sentimentTone": {
                "sentiment": "fear",
                "emoji": "😨",
                "strength": 2
            },
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to an agent.",
            "priority": 10,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-25T05:27:10.793Z"
                }
            ],
            "startTime": "2023-05-25T05:27:10.793Z",
            "endTime": "2023-05-25T05:29:40.453Z",
            "formData": [],
            "timestampValue": 1684992430793,
            "createdAt": "2023-05-25T05:27:10.795Z",
            "updatedAt": "2023-05-25T05:29:40.454Z",
            "__v": 0,
            "skills": [],
            "acceptedAt": "2023-05-25T05:29:20.032Z",
            "notes": [
                {
                    "_id": "646ef244395ad73d95c1e03c",
                    "conversationId": "c-ab5b6d7-d504-4e29-b083-b31005538da7",
                    "author": {
                        "_id": "646ef244395ad73d95c1e03d",
                        "firstName": "John",
                        "lastName": "Doe",
                        "userId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f"
                    },
                    "note": "Consumer wants to talk to an agent. Agent will get an agent on the line to help her with that.",
                    "timestamp": "2023-05-25T05:29:40.453Z"
                }
            ],
            "userInfo": {
                "caller": "+18448735673",
                "callee": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
                "callerHost": "Twilio-US",
                "userId": "u-e60cc049-d514-5e0d-a856-963d812a3d00",
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": false
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to an agent.",
                    "dialog_tone": [
                        {
                            "tone_name": "fear",
                            "level": 2,
                            "count": 1,
                            "totalLevel": 2
                        }
                    ],
                    "accountId": "637368b4a1d039e34ba63bbf"
                },
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#ff4500",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-e60cc049-d514-5e0d-a856-963d812a3d00",
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/dcf958b2-0564-4d3a-97f6-d31008d257d2",
                        "type": "mapped"
                    },
                    {
                        "val": "637368b4a1d039e34ba63bbf/audiocodes/b0c9fc233926c1c051d487311652190a",
                        "type": "mapped"
                    }
                ],
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2"
            },
            "dispositions": {
                "status": "UnKnown",
                "remarks": "Consumer wants to talk to an agent. Agent will get an agent on the line to help her with that.",
                "dispositionSets": [
                    {
                        "dispositionsSet": "resolution",
                        "dispositionCodes": "Resolved"
                    }
                ],
                "metaStatus": "AGENT_CLOSED"
            }
        },
        {
            "startSessionTime": "2023-05-25T05:03:14.001Z",
            "botSessionId": "646eec12404bcac76fafe58b",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-ab549ab2-43db-5b07-ada9-409494d834a0",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "rtm",
            "_id": "c-b705d37-44dd-4670-a9a1-bb87bb00e2c6",
            "participants": [
                {
                    "queueId": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "queueStartTime": "2023-05-25T05:03:30.106Z",
                    "queueName": "Default Queue",
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ACTIVE",
                    "assignedAt": "2023-05-25T05:03:30.229Z",
                    "startTimeStamp": "2023-05-25T05:03:32.423Z",
                    "endTimeStamp": "2023-05-25T05:16:27.177Z"
                }
            ],
            "transferDetails": [],
            "waitTime": 3318,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": false,
            "contactFlow": [],
            "surveyRequired": "YES",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "language": "en",
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to an agent",
            "agentDesktopMeta": {
                "pagesVisited": [
                    {
                        "page": "Kore.ai Web Client",
                        "timestamp": "2023-05-22T09:14:29.919Z",
                        "timespent": 244131.158
                    }
                ]
            },
            "conversationType": "messaging",
            "priority": 7,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-25T05:03:30.106Z"
                }
            ],
            "startTime": "2023-05-25T05:03:30.106Z",
            "endTime": "2023-05-25T05:16:31.505Z",
            "formData": [],
            "timestampValue": 1684991010107,
            "createdAt": "2023-05-25T05:03:30.110Z",
            "updatedAt": "2023-05-25T05:16:31.506Z",
            "__v": 0,
            "skills": [],
            "acceptedAt": "2023-05-25T05:03:32.423Z",
            "notes": [
                {
                    "_id": "646eef2f395ad73d95c1d9a0",
                    "conversationId": "c-b705d37-44dd-4670-a9a1-bb87bb00e2c6",
                    "author": {
                        "_id": "646eef2f395ad73d95c1d9a1",
                        "firstName": "John",
                        "lastName": "Doe",
                        "userId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f"
                    },
                    "note": "2023-05-25T05:03:14.115Z",
                    "timestamp": "2023-05-25T05:16:31.505Z"
                }
            ],
            "userInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#2e8b57",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-ab549ab2-43db-5b07-ada9-409494d834a0",
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/43027397-e2b7-463c-becb-e5d21091db89dbc01f55-fa69-4977-9b49-6a03eb46eff1",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": true,
                            "botId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                            "dialogId": "dg-dea45cdd-c731-522e-a1dd-f5d5aacc5f39",
                            "dialogRefId": "6f3688aa-f41b-5d6e-8444-e27c6c225634"
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to an agent",
                    "dialog_tone": []
                },
                "city": "Bengaluru",
                "country": "India",
                "isp": "Bharti Airtel Ltd., Telemedia Services",
                "ipAddress": "122.171.19.66",
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                "hostDomain": "https://bots.kore.ai",
                "os": "Windows",
                "device": "NA"
            },
            "dispositions": {
                "status": "UnKnown",
                "remarks": "2023-05-25T05:03:14.115Z",
                "dispositionSets": [
                    {
                        "dispositionsSet": "resolution",
                        "dispositionCodes": "Resolved"
                    }
                ],
                "metaStatus": "AGENT_CLOSED"
            }
        },
        {
            "startSessionTime": "2023-05-24T10:15:12.883Z",
            "botSessionId": "646de3b0b910e3bfa61f1fc7",
            "botId": "st-3bf09bef-f979-5489-b337-f465bd5db1f4",
            "userId": "u-472b02c5-ee96-5f5d-921a-0cc00c79c072",
            "orgId": "o-ca23f4c5-cc3e-586d-90e6-8375bf2d54ab",
            "source": "rtm",
            "_id": "c-cde8975-c644-49c5-a056-0905d28a1da7",
            "participants": [
                {
                    "queueId": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "queueStartTime": "2023-05-24T10:15:35.946Z",
                    "queueName": "Default Queue",
                    "agentId": "u-b19cd89e-6533-59af-b491-eec9bf8f8b9f",
                    "name": "John Doe",
                    "status": "ABANDONED",
                    "assignedAt": "2023-05-24T10:15:36.151Z",
                    "endTimeStamp": "2023-05-24T10:15:51.169Z"
                }
            ],
            "transferDetails": [],
            "waitTime": 1208,
            "isProactiveAgentAssistEnabled": true,
            "status": "CLOSED",
            "callbackOpted": false,
            "contactFlow": [],
            "surveyRequired": "YES",
            "isDeveloper": false,
            "accountId": "637368b4a1d039e34ba63bbf",
            "language": "en",
            "keyIntentName": "TalkToAgent",
            "keyIntentUserInput": "I want to talk to an agent",
            "agentDesktopMeta": {
                "pagesVisited": [
                    {
                        "page": "Kore.ai Web Client",
                        "timestamp": "2023-05-22T09:14:29.919Z",
                        "timespent": 176456.407
                    }
                ]
            },
            "conversationType": "messaging",
            "priority": null,
            "queues": [
                {
                    "type": "ASSIGNED",
                    "status": "ACTIVE",
                    "isPreferredAgentTimeoutExpired": true,
                    "id": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                    "name": "Default Queue",
                    "startTime": "2023-05-24T10:15:35.946Z"
                }
            ],
            "startTime": "2023-05-24T10:15:35.946Z",
            "endTime": "2023-05-24T10:25:36.150Z",
            "formData": [],
            "timestampValue": 1684923335946,
            "createdAt": "2023-05-24T10:15:35.949Z",
            "updatedAt": "2023-05-24T10:25:36.151Z",
            "__v": 0,
            "skills": [],
            "notes": [],
            "userInfo": {
                "workinghours": {
                    "workdays": "mon,tue,wed,thu,fri",
                    "workstart": "8:00 AM",
                    "workend": "5:00 PM"
                },
                "profImage": "no-avatar",
                "jTitle": "",
                "dept": "",
                "profColour": "#ffd700",
                "activationStatus": "active",
                "firstName": "",
                "lastName": "",
                "orgId": "o-e31a1a45-c24a-5074-b4b7-d44396e6e4ac",
                "_id": "u-472b02c5-ee96-5f5d-921a-0cc00c79c072",
                "identities": [
                    {
                        "val": "cs-b6296994-21c9-5108-9dee-1ab3dbbd0b8b/3063a7fb-414e-4fc9-b228-037fd76bbbb33983e1a7-6e49-47fa-88cf-6afd32bb7aa0",
                        "type": "mapped"
                    }
                ],
                "agentTransferConfig": {
                    "skillsIds": [],
                    "overrideAgents": false,
                    "overrideValues": [],
                    "assistEvents": {
                        "startEvent": {
                            "isEnabled": true,
                            "botId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                            "dialogId": "dg-dea45cdd-c731-522e-a1dd-f5d5aacc5f39",
                            "dialogRefId": "6f3688aa-f41b-5d6e-8444-e27c6c225634"
                        }
                    },
                    "automationBotId": "st-ba0fcf10-b687-53b0-ad16-16cbacf20dd1",
                    "lastIntentName": "TalkToAgent",
                    "lastIntentuserInput": "I want to talk to an agent",
                    "dialog_tone": []
                },
                "city": "Bengaluru",
                "country": "India",
                "isp": "Bharti Airtel Ltd., Telemedia Services",
                "ipAddress": "122.171.19.66",
                "queue": "qu-241a4d7-e5d0-45a9-8032-8238450501c2",
                "hostDomain": "https://bots.kore.ai",
                "os": "Windows",
                "device": "NA"
            },
            "dispositions": {
                "status": "DROP-OFF",
                "remarks": "I'm sorry. It seems like there are no agents that can help you at this time. Please reach out us a bit later.",
                "dispositionSets": null,
                "metaStatus": "SYSTEM_DROP_OFF"
            }
        }
    ],
    "skip": 0,
    "limit": 10,
    "hasMore": false,
    "totalPages": 1,
    "totalResults": 10
}
```

## Response Body Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
  </tr>
  <tr>
   <td>transferDetails
   </td>
   <td>Transfer details of the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>waitTime
   </td>
   <td>The wait time for the conversation in milliseconds.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>isProactiveAgentAssistEnabled
   </td>
   <td>Whether proactive AgentAssist is enabled for the conversation.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>callbackOpted
   </td>
   <td>Whether callback is opted for the conversation.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>contactFlow
   </td>
   <td>Contact flow information for the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>surveyRequired
   </td>
   <td>Whether a survey is required for the conversation.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>isDeveloper
   </td>
   <td>Whether the user is a developer.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>id
   </td>
   <td>The conversation Id.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>userId
   </td>
   <td>The ID of the user associated with the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>source
   </td>
   <td>The source of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>botSessionId
   </td>
   <td>The ID of the bot session associated with the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>keyIntentName
   </td>
   <td>The key intent for the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>keyIntentUserInput
   </td>
   <td>The user input associated with the key intent for the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>agentDesktopMeta
   </td>
   <td>Additional metadata related to the agent desktop.
   </td>
   <td>object
   </td>
  </tr>
  <tr>
   <td>conversationType
   </td>
   <td>The type of conversation (for example, messaging).
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>priority
   </td>
   <td>The priority level of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>queues
   </td>
   <td>Queue details for the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>startTime
   </td>
   <td>The start time of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>endTime
   </td>
   <td>The end time of the conversation
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>formData
   </td>
   <td>Form data associated with the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>timestampValue
   </td>
   <td>The timestamp value of the conversation.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>createdAt
   </td>
   <td>The creation time of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>updatedAt
   </td>
   <td>Last updated time of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>skills
   </td>
   <td>The skills associated with the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>acceptedAt
   </td>
   <td>The time when the conversation was accepted.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>notes
   </td>
   <td>Notes associated with the conversation.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>dispositions
   </td>
   <td>Disposition details for the conversation.
   </td>
   <td>object
   </td>
  </tr>
  <tr>
   <td>userInfo
   </td>
   <td>User information associated with the conversation.
   </td>
   <td>object
   </td>
  </tr>
</table>