--8<-- "includes/qualityai-api-back-link.md"

# Raw Data API

The Raw Data API now provides detailed Quality AI and Conversation Intelligence data at the interaction level, including quality metrics and analytics attributes. It also supports generated intents, offering L1–L3 topics with confidence scores, and sentiment and resolution for L3, replacing the previous intents and topics fields.

| **METHOD**     | **POST**                                                                                                                                       |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Endpoint       |`https://{{host}}/qualityai/api/v1/public/qualitymanagement/app/{{streamId}}/rawdata`|
| Content Type     | `application/json` |
| Authorization    | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). 
| API Scope        | Quality AI<br>See [Associate API Scopes](../automation/api-introduction.md/#associating-api-scopes){:target="_blank"} |                                                                    || API Scope        | Quality AI<br>See [Associate API Scopes](../automation/api-introduction.md/#associating-api-scopes){:target="_blank"} |                                                                    |

## Header Parameters


| **PARAMETER** | **DESCRIPTION**                                                                 | **OPTIONAL/REQUIRED**          |
|---------------|----------------------------------------------------------------------------------|-------------------|
| `Content-Type`        | `application/json`| required |
| `accountId`   | The Account Id. For example, `67a9ca06cf0e510a8632xxxx`                         | required |
| `orgId`   | The unique identifier of the organization.                         | required |
| `auth`   | JWT token used for authentication.                         |required |


## Path Parameters


| **PARAMETER** | **DESCRIPTION**                                                                 | **TYPE**          |
|---------------|----------------------------------------------------------------------------------|-------------------|
| `host`        | Environment URL. For example, [https://platform.kore.ai/](https://platform.kore.ai/) | `string`, required |
| `streamId`   | `botId` or `streamId`. You can get it from the App Settings page.                         | `string`, required |


## Sample Request

```
curl --location 'https://{{host}}//api/v1/public/QualityManagement/account/{{accountId}}/v1/RawData` \
  --header 'accountId: {{accountId}}' \
  --header 'auth: {{authToken}}' \
  --header 'Content-Type: application/json' \
  --header 'orgId: o-da5be4e0-8fbb-5229-ac20-9b1384ebxxxx' \
  --body '{
    "offset": 0,
    "startDate": "2025-11-10 10:17:54",
    "endDate": "2025-11-10 23:00:35",
    "limit": 1,
    "page": 1
    }'

```

## Body Parameters

| **PARAMETER** | **DESCRIPTION** | **TYPE** |
|---------------|-----------------|----------|
| `offset` | The number of responses the documents need to skip before starting to return results. The default value is 0. For example, 10. | `integer`, required |
| `startDate` | Specify the start date to include records. Use the UTC-based date format: <br>`YYYY-MM-DDTHH24:MM:SS.NNNZ`<br>For example: `2025-12-18T11:31:14.722Z` | `string`, required |
| `endDate` | Specify the end date to include records. Use the UTC-based date format: <br>`YYYY-MM-DDTHH24:MM:SS.NNNZ`<br>For example: `2025-12-18T11:33:12.904Z` | `string`, required |
| `limit` | This sets the number of conversation records returned in the response. The default is 100. For example, 70. | `integer`, optional |
| `page` | Indicates the number of pages in the response; it is used for pagination. The default value is 1. | `integer`, optional |


## Sample Response	

```
{
    "results": [
        {
            "src": "audiocodes",
            "speechSpeed": null,
            "customConversationId": "S3nov10Stereo9xx",
            "Conversation ID": "c-8797b6f6-960e-5efb-8352-6a6b27d7xxxx",
            "Conversation Start Time": "2025-11-10T10:32:34.887Z",
            "Conversation End Time": "2025-11-10T10:35:08.887Z",
            "Language": "English",
            "Duration": "154000 milliseconds",
            "Queues": [
                {
                    "Queue ID": "qu-d1fb0122-440c-58e8-b59d-11cd2481xxxx",
                    "Queue Name": "sep25connectors"
                }
            ],
            "Agents": [
                {
                    "agentId": "a-3114fe85-b7e2-5c44-9a6c-780d8ebdxxxx",
                    "Agent Name": "Peter Parker",
                    "Agent Start Time": "2025-11-10T10:32:36.127Z",
                    "Agent Email": "peter.parker@yopmail.com"
                }
            ],
            "Kore Evaluation Score": -12,
            "IsChurnRiskObserved": false,
            "IsEscalationObserved": false,
            "Fatal Errors": 0,
            "Taxonomy Resolution": false,
            "Sentiment Pattern": {
                "start": "neutral",
                "end": "neutral"
            },
            "Customer emotions": [],
            "Agent emotions": [
                {
                    "emotion": "Patience",
                    "duration": 0,
                    "proportion": 100
                }
            ],
            "Sentiment Ratio": {
                "positive": 0,
                "neutral": 100,
                "negative": 0
            },
            "Metrics": [
                {
                    "Metric ID": "em-134e3916-1d7b-580c-afa9-279886d5xxxx",
                    "Metric Name": "COMMON AU - Agent response back with information GEN & DET v2",
                    "Metric Weight": 13,
                    "Metric Negative Weight": 13,
                    "Qualification": "NA",
                    "isFatalError": false,
                    "triggerJustification": [],
                    "justification": []
                },
                {
                    "Metric ID": "em-fb380cf0-2bf4-5ddd-bfe6-99d1a82axxxx",
                    "Metric Name": "Test By value 1st - Base Rate",
                    "Metric Weight": 0,
                    "Metric Negative Weight": 0,
                    "Qualification": "NA",
                    "isFatalError": false,
                    "triggerJustification": [],
                    "justification": []
                }
            ],
            "Pass Score": 40,
            "IsPassed": false
        }
    ],
    "totalResults": 25,
    "hasMore": true,
    "totalPages": 25
}

```

## Response Body Parameters

| **PARAMETER**           | **DESCRIPTION**                                           | **TYPE** |
| ----------------------- | --------------------------------------------------------- | -------- |
| src                     | Source platform of the conversation.                      | string   |
| speechSpeed             | Speech speed detected (if available).                     | integer  |
| customConversationId    | User-defined or external conversation ID.                 | string   |
| conversationId          | System-generated unique conversation ID of the record.    | string   |
| Conversation Start Time | UTC timestamp of when the conversation started.           | string   |
| Conversation End Time   | UTC timestamp of when the conversation ended.             | string   |
| Language                | Detected language.                                        | string   |
| Duration                | Duration of the conversation in milliseconds.             | string   |
| queues                  | Queue details for the conversation.                       | string   |
| Queue ID                | Queue ID of the conversation.                             | string   |
| Queue Name              | Queue name assigned to the conversation.                  | string   |
| agents                  | Array of agents who participated in the conversation.     | string   |
| Agent ID                | Agent ID of the conversation.                             | string   |
| Agent Name              | Names of agents who participated in the conversation.     | string   |
| Agent Start Time        | Timestamp when the agent joined the interaction.          | string   |
| Agent Email             | Email address of the agent.                               | string   |
| Kore Evaluation Score   | AI-calculated evaluation score for the conversation.      | integer  |
| IsChurnRiskObserved     | Indicates if churn risk was detected.                     | boolean  |
| IsEscalationObserved    | Indicates if escalation was observed.                     | boolean  |
| Fatal Errors            | Number of fatal errors detected.                          | integer  |
| Taxonomy Resolution     | Indicates if taxonomy-based resolution was achieved.      | boolean  |
| Sentiment Pattern       | Shows sentiment at the start and end of the conversation. | object   |
| start                   | Sentiment at the beginning of the conversation.           | string   |
| end                     | Sentiment at the end of the conversation.                 | string   |
| Customer emotions       | Captures customer emotions with duration and proportion.  | array    |
| emotion                 | Detected emotion (e.g., *Patience*).                      | string   |
| duration                | Duration of detected emotion.                             | boolean  |
| proportion              | Emotion’s percentage share of the conversation.           | boolean  |
| Sentiment Ratio         | Sentiment distribution across the conversation.           | object   |
| positive                | Percentage of positive sentiment.                         | boolean  |
| neutral                 | Percentage of neutral sentiment.                          | boolean  |
| negative                | Percentage of negative sentiment.                         | boolean  |
| Metrics                 | Array of evaluation metrics used for scoring.             | array    |
| Metric ID               | Identifier for the metric.                                | string   |
| Metric Name             | Name of the metric.                                       | string   |
| Metric Weight           | Weightage for meeting the metric.                         | integer  |
| Metric Negative Weight  | Penalty weight for failing the metric.                    | integer  |
| Qualification           | Evaluation result (YES/NO/NA).                            | string   |
| isFatalError            | Indicates if this metric is a fatal error.                | boolean  |
| triggerJustification    | Trigger-based justifications.                             | array    |
| justification           | Evaluator-provided justifications.                        | array    |
| Pass Score              | Minimum score required to pass.                           | integer  |
| IsPassed                | Indicates whether the conversation passed.                | boolean  |
| totalResults            | Total number of records available for the query.          | integer  |
| hasMore                 | Indicates if more pages of results exist.                 | boolean  |
| totalPages              | Total number of pages based on the limit.                 | integer  |
