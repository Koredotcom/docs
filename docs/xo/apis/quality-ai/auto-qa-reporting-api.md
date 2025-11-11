--8<-- "includes/qualityai-api-back-link.md"

# Auto QA Reporting API

This API provides reporting interaction level Auto QA scoring and qualification of metrics relevant to the interaction based on the form associated with the QA. 

| **METHOD**       | **POST** |
|------------------|----------|
| Endpoint         | `<https://{{host}}//api/public/QualityManagement/account/{{accountId}}/v1/ScoreReporting>` |
| Content Type     | `application/json` |
| Authorization    | `auth: <JWT_TOKEN>`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| API Scope        | Quality AI<br>See [Associate API Scopes](../automation/api-introduction.md/#associating-api-scopes){:target="_blank"} |


## Path Parameters

| PARAMETER  | DESCRIPTION                                                                                  | TYPE            |
|------------|----------------------------------------------------------------------------------------------|-----------------|
| host       | Environment URL. For example, [https://platform.kore.ai/](https://platform.kore.ai/)          | string, required|
| accountId  | The Account Id. For example, `665ae2f3cc61d7d2cf75xxxx`                                       | string, required|

## Sample Request

```
curl --location 'https://<host_url>/agentassist/api/v1/public/qualitymanagement/app/st-c35c438e-b95a-51d6-9b44-b8691a9exxxx/scorereporting' \
--header 'auth: {{authToken}}' \
--header 'accountId: {{accountId}}' \
--header 'Content-Type: application/json' \
--data '{
"offset": 0,
"startDate": "2024-06-26 00:18:30",
"endDate": "2024-06-26 13:36:35",
"limit": 70
}'
```

## Body Parameters

| PARAMETER | DESCRIPTION                                                                                                             | TYPE            |
|-----------|-------------------------------------------------------------------------------------------------------------------------|-----------------|
| offset    | The number of responses the documents need to Skip. The default value is 0. For example, 10.                            | Integer, optional|
| limit     | The number of conversation records to be displayed in the response. The default value is 100. For example, 70.          | Integer, optional|
| startDate | The start date from which the records need to be considered. The date format with UTC based time:      `YYYY-MM-DDTHH24:MM:SS.NNNZ`.  For Example, `2024-07-18T11:33:12.724Z`.      | string, required |
| endtDate  | The end date from which the records need to be considered. The date format with UTC based time:  `YYYY-MM-DDTHH24:MM:SS.NNNZ`. For Example, `2024-07-18T11:33:12.904Z`.      | string, required |
| channel   | Option to filter interactions by channel.                                                                                | array, optional  |
| queues    | Options to filter interactions by queue.                                                                                 | array, optional  |

## Sample Response

```
{
    "results": [
        {
            "conversationId": "{{conversationId}}",
            "koreEvalutionScore": 75,
            "Queues": [
                {
                    "Queue ID": "{{queueId}}",
                    "Queue Name": "Default Queue"
                }
            ],
            "Agents": [
                {
                    "Agent ID": "{{agentId}}",
                    "Agent Name": "Prod1"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "Pre-Authorization query - Cigna",
                    "Metric Weight": 10,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "Pre-Authorization Procedure - Cigna",
                    "Metric Weight": 15,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                }
            ]
        },
        {
            "conversationId": "{{conversationId}}",
            "koreEvalutionScore": 80,
            "Queues": [
                {
                    "Queue ID": "{{queueId}} ",
                    "Queue Name": "Default Queue"
                }
            ],
            "Agents": [
                {
                    "Agent ID": "{{agentId}}",
                    "Agent Name": "Prod1"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "Additional Assistance - Cigna",
                    "Metric Weight": 5,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                }
            ]
        },
        {
            "conversationId": "{{conversationId}}",
            "koreEvalutionScore": 30,
            "Queues": [
                {
                    "Queue ID": "{{queueId}}",
                    "Queue Name": "Default Queue"
                }
            ],
            "Agents": [
                {
                    "Agent ID": "{{agentId}}",
                    "Agent Name": "Prod1"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "greeting",
                    "Metric Weight": 50,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "proper sign off",
                    "Metric Weight": 20,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Qualification": "YES"
                }
            ]
        }
    ],
    "totalResults": 3,
    "totalPages": 1,
    "hasMore": false
}
```

## Response Body Parameters

| PARAMETER           | DESCRIPTION                                                                                           | TYPE    |
|---------------------|-----------------------------------------------------------------------------------------------------|---------|
| conversationId      | The conversation id of the record.                                                                   | string  |
| koreEvalutionScore  | The score returned by NLP for that conversation.                                                     | string  |
| queues              | Queue details for the conversation.                                                                  | string  |
| Queue ID            | Queue id of the conversation.                                                                         | string  |
| Queue Name          | Queue name of the conversation.                                                                       | string  |
| agents              | Array of agents who have participated in the conversation.                                           | string  |
| Agent ID            | Agent ID of the conversation.                                                                         | string  |
| Agent Name          | List of agents names who have participated in the conversation.                                      | string  |
| metric              | An array of evaluation metrics with which scores are calculated.                                     | array   |
| Metric ID           | Unique identifier for the metric.                                                                     | string  |
| Metric Weight       | A numerical value indicating how much influence or impact that metric has in an overall evaluation or scoring system. | integer |
| Qualification       | Qualification status (YES or NO)                                                                      | boolean |
