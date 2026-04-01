--8<-- "includes/qualityai-api-back-link.md"

# Auto QA Reporting API

The AutoQA Score Reporting API provides interaction-level reporting, including AutoQA scores, metric qualification results, and evaluation eligibility based on the configured minimum duration threshold. It supports filtering and inclusion of below-threshold interactions for flexible reporting and analysis.


| **METHOD**       | **POST** |
|------------------|----------|
| Endpoint         | `https://{{host}}//qualityai/api/v1/public/qualitymanagement/app/{{streamId}}` |
| Content Type     | `application/json` |
| Authorization    | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| API Scope        | Quality AI<br>See [Associate API Scopes](../automation/api-introduction.md#associating-api-scopes){:target="_blank"} |

## Header Parameters

| PARAMETER  | DESCRIPTION                                                                                  | TYPE            |
|------------|----------------------------------------------------------------------------------------------|-----------------|
| `Content-Type`       | `application/json`                        | `string`, required|
|`accountId`  | Unique account identifier. For example, `67a9ca06cf0e510a8632xxxx`                                       | `string`, required|
| `orgId`  | The unique identifier of the organization.            | `string`, required |
| `auth` | JWT token used for authentication.                    |`string`, required |


## Path Parameters

| PARAMETER  | DESCRIPTION                                                                                  | TYPE            |
|------------|----------------------------------------------------------------------------------------------|-----------------|
| `host`       | Environment URL. For example, [https://platform.kore.ai/](https://platform.kore.ai/)                                               | `string`, required|
| `streamId`  | `botId` or `streamId`. You can get it from the App Settings page.                                                            | `string`, required|


## Sample Request

```
curl --location 
'https://{{host}}/qualityai/api/v1/public/qualitymanagement/app/{{streamId}}/rawdata' \
--header 'accountId: {{accountId}}' \
--header 'auth: {{authToken}}' \
--header 'Content-Type: application/json' \
--header 'orgId: o-da5be4e0-8fbb-5229-ac20-9b1384ebxxxx' \
--data '{
"offset": 0,
    "startDate": "2026-03-23 10:17:54",
    "endDate": "2026-03-23 23:36:35",
    "include_below_threshold": true,
    "limit": 100,
    }'

```

## Body Parameters

| PARAMETER               | DESCRIPTION                                                                 | TYPE               |
|-------------------------|-----------------------------------------------------------------------------|------------------|
| `offset`                  | Number of records to skip. Maximum: 100.                                    | `integer`, optional |
| `startDate`               | The start date from which records are retrieved.<br>Format: `yyyy-mm-dd HH24:mm:ss`.<br>Example: `2026-03-23 10:17:54`. | `DateTime`, required |
| `endDate`                 | The end date up to which records are retrieved.<br>Format: `yyyy-mm-dd HH24:mm:ss`.<br>Example: `2026-03-23 23:00:35`. | `DateTime`, required |
| `include_below_threshold` | When `true`, includes contacts marked Below Threshold in the response. Default: `false`. | `boolean`, optional |
| `limit`                   | Number of records to retrieve per page (maximum 100).                       | `integer`, optional |


!!! Note

    APIs exclude the `below-threshold` contacts by default. An `include_below_threshold=true` parameter allows explicit inclusion for ad hoc analysis.

## Sample Response

```
{
    "results": [
    {
      "conversationId": "c-0bba1c4-6d27-49d9-8557-9b0e8774xxxx",
      "Queues": [
        {
          "Queue ID": "qu-c304439-3d79-4389-b1cb-014eb75axxxx",
          "Queue Name": "Default Queue - Q1"
        }
      ],
      "Agents": [
        {
          "Agent ID": "a-424ea65-322b-47c1-8189-7200b64cxxxx",
          "Agent Name": "John Doe"
        },
        {
          "Agent ID": "a-a25ad66-638d-46c0-b4db-7e5a7360xxxx",
          "Agent Name": "John Doe"
        }
      ],
      "koreEvalutionScore": 77,
      "fatalErrorCount": 0,
      "Language": "English",
      "duration_status": "evaluated",
      "Metrics": [
        {
          "Metric ID": "em-44758b38-816c-557b-b6a9-2d2c6297xxxx",
          "Metric Name": "UK Greeting Compliance Rate GEN",
          "Metric Weight": 28,
          "Metric Negative Weight": 27,
          "Qualification": "YES",
          "isFatalError": false
        },
        {
          "Metric ID": "em-1fd43c3f-67f9-5c30-8140-c3e534a1xxxx",
          "Metric Name": "Manual Evaluation - UK - Manual Evaluation Metric",
          "Metric Weight": 0,
          "Metric Negative Weight": 0,
          "Qualification": "-",
          "isFatalError": false
        }
      ]
    },
    {
      "conversationId": "c-8d43539-ae1e-473a-ad97-6bd2add4xxxx",
      "Queues": [
        {
          "Queue ID": "qu-c304439-3d79-4389-b1cb-014eb75axxxx",
          "Queue Name": "Default Queue - Q1"
        }
      ],
      "Agents": [
        {
          "Agent ID": "a-a25ad66-638d-46c0-b4db-7e5a7360xxxx",
          "Agent Name": "John Doe"
        }
      ],
      "koreEvalutionScore": null,
      "fatalErrorCount": 0,
      "Language": "English",
      "duration_status": "below_threshold",
      "Metrics": [
        {
          "Metric ID": "em-44758b38-816c-557b-b6a9-2d2c6297xxxx",
          "Metric Name": "UK Greeting Compliance Rate GEN",
          "Metric Weight": 28,
          "Metric Negative Weight": 27,
          "isFatalError": false
        },
        {
          "Metric ID": "em-dc5679bd-e6c4-548c-b650-21c5e83dxxxx",
          "Metric Name": "UK Proper Sign-off GenAI",
          "Metric Weight": 27,
          "Metric Negative Weight": 26,
          "isFatalError": false
        }
      ]
    },
    {
      "conversationId": "c-a19b658-da43-465c-9606-1abb5786xxxx",
      "Queues": [
        {
          "Queue ID": "qu-c304439-3d79-4389-b1cb-014eb75axxxx",
          "Queue Name": "Default Queue - Q1"
        }
      ],
      "Agents": [
        {
          "Agent ID": "a-424ea65-322b-47c1-8189-7200b64cxxxx",
          "Agent Name": "Lily Agent"
        }
      ],
      "koreEvalutionScore": 0,
      "fatalErrorCount": 1,
      "Language": "English",
      "duration_status": "evaluated",
      "Metrics": [
        {
          "Metric ID": "em-44758b38-816c-557b-b6a9-2d2c6297xxxx",
          "Metric Name": "UK Greeting Compliance Rate GEN",
          "Metric Weight": 28,
          "Metric Negative Weight": 27,
          "Qualification": "YES",
          "isFatalError": false
        },
        {
          "Metric ID": "em-dc5679bd-e6c4-548c-b650-21c5e83dxxxx",
          "Metric Name": "UK Proper Sign-off GenAI",
          "Metric Weight": 27,
          "Metric Negative Weight": 26,
          "Qualification": "NO",
          "isFatalError": true
        }
      ]
    },
    {
      "conversationId": "c-94376d76-dbe2-59c6-8665-ea70217exxxx",
      "customConversationId": "UATTranscripts_Mar23b",
      "Queues": [
        {
          "Queue ID": "qu-16c07483-765f-5e2e-a150-e5b66033xxxx",
          "Queue Name": "PublicApiQueue"
        }
      ],
      "Agents": [
        {
          "Agent ID": "a-b35a99e-9c55-4d43-ac00-225169c9xxxx",
          "Agent Name": "UmaKalva UAT TitanAsh"
        }
      ],
      "koreEvalutionScore": 9,
      "fatalErrorCount": 0,
      "Language": "English",
      "duration_status": "evaluated",
      "Metrics": [
        {
          "Metric ID": "em-44758b38-816c-557b-b6a9-2d2c6297xxxx",
          "Metric Name": "UK Greeting Compliance Rate GEN",
          "Metric Weight": 11,
          "Metric Negative Weight": 14,
          "Qualification": "YES",
          "isFatalError": false
        },
        {
          "Metric ID": "em-dc5679bd-e6c4-548c-b650-21c5e83dxxxx",
          "Metric Name": "UK Proper Sign-off GenAI",
          "Metric Weight": 9,
          "Metric Negative Weight": 12,
          "Qualification": "NO",
          "isFatalError": false
        }
      ]
    }
  ],
  "totalResults": 21,
  "hasMore": false,
  "totalPages": 1
  "totalPages": 1
}

```

## Response Body Parameters

| PARAMETER                | DESCRIPTION                                                                                                                                                        | TYPE              |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------|
| `conversationId`           | Unique system-generated identifier for the conversation.                                                                                                          | `string`           |
| `customConversationId`     | Custom identifier provided at ingestion time. Present only when set during upload (for example, Express or API-ingested contacts). Absent if not supplied.         | `string`           |
| `Queues`                   | A list of queue objects associated with the conversation.                                                                                                         | `array`            |
| `Queue ID`                 | Unique identifier for the queue.                                                                                                                                  | `string`           |
| `Queue Name`               | Name of the queue.                                                                                                                                                 | `string`           |
| `Agents`                   | A list of agents who have participated in the conversation. A conversation can include more than one agent.                                                      | `array`            |
| `Agent ID`                 | Unique identifier for the agent.                                                                                                                                  | `string`           |
| `Agent Name`               | Name of the agent.                                                                                                                                                 | `string`           |
| `koreEvaluationScore`      | Auto QA evaluation score of the conversation. Range: −100 to 100. Returns `null` for contacts with `duration_status` of `below_threshold` or `duration_unavailable`.      | `Number` or `null`  |
| `fatalErrorCount`          | Number of fatal metric failures recorded for the conversation. Returns 0 when no fatal errors are present. When a fatal error occurs, `koreEvaluationScore` is 0.  | `integer`          |
| `Language`                 | Conversation language.                                                                                                                                             | `string`           |
| `Metrics`                  | List of evaluation metric objects applied to the conversation. For example, weights and qualification outcomes.                                                  | `array`            |
| `Metric ID`                | Unique identifier for the evaluation metric.                                                                                                                     | `string`           |
| `Metric Name`              | Display the metric name as configured in the evaluation form.                                                                                                     | `string`           |
| `Metric Weight`            | Positive weightage assigned to the metric.                                                                                                                        | `number`           |
| `Metric Negative Weight`    | Negative weightage assigned to the metric. Returns 0 when no negative weight is configured.                                                                       | number           |
| `Qualification`            | Agent's outcome for this metric (YES/NO/NA). Present only for contacts with `duration_status`: evaluated. Absent for `below_threshold` and `duration_unavailable`.     | `String (Enum)`    |
| `isFatalError`             | Indicates whether this metric is configured as fatal and isn't met. When `true`, `koreEvaluationScore` is set to 0 for the conversation.                             | `boolean`          |
| `customConversationId`     | Custom identifier for the conversation (optional).                                                                                                               | `string`           |
| `duration_status`          | Evaluation eligibility status based on the configured minimum duration threshold.                                                                                 | `string (enum)`    |
| `totalResults`             | Total number of conversation records matching the request.                                                                                                        | `integer`          |
| `totalPages`               | Total number of pages available based on the page size.                                                                                                          | `integer`          |
| `hasMore`                  | Indicates whether additional pages exist. `true` if more pages are available; `false` if this is the last page.                                                     | `boolean`          |
| `results`                  | A list of conversation objects.                                                                                                                                   | `array`            |



!!! Note

    Contacts ingested before the minimum duration threshold feature is enabled return `null` for `duration_status`.
