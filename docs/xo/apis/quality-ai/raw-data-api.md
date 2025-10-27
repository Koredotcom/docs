--8<-- "includes/qualityai-api-back-link.md"

# Raw Data API

This API provides detailed Quality AI and Conversation Intelligence related data at an interaction level, including interaction quality metrics and interaction analytics attributes.

| **METHOD**     | **POST**                                                                                                                                       |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Endpoint       | [`https://{{host}}//api/public/QualityManagement/account/{{accountId}}/v1/RawData`](https://{{host}}//api/public/QualityManagement/account/{{accountId}}/v1/RawData) |
| Content Type     | `application/json` |
| Authorization    | `auth: {{JWT}}`<br>See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token). |
| API Scope        | Quality AI<br>See [Associate API Scopes](../automation/api-introduction.md/#associating-api-scopes){:target="_blank"} |                                                                    |

## Path Parameters


| **PARAMETER** | **DESCRIPTION**                                                                 | **TYPE**          |
|---------------|----------------------------------------------------------------------------------|-------------------|
| `host`        | Environment URL. For example, [https://platform.kore.ai/](https://platform.kore.ai/) | `string`, required |
| `accountId`   | The Account Id. For example, `6639f8cc882f9068043fxxxx`                         | `string`, required |


## Sample Request

```
curl --location 'https://<host_url>/agentassist/api/v1/public/qualitymanagement/app/st-5ceb332e-d21a-5675-8b45-7707f37bxxxx/rawdata' \
--header 'Accept: application/json, text/plain, /' \
--header 'Accept-Language: en-US,en;q=0.9' \
--header 'AccountId: {{accountid}}' \
--header 'Connection: keep-alive' \
--header 'Content-Type: application/json;charset=UTF-8' \
--header 'Iid: {{Iid}}' \
--header 'Referer: https://sit-xo.kore.ai/builder/app/setupguide' \
--header 'Sec-Fetch-Dest: empty' \
--header 'Sec-Fetch-Mode: cors' \
--header 'Sec-Fetch-Site: same-origin' \
--header 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36' \
--header 'X-Timezone-Offset: -330' \
--header 'app-language: en' \
--header 'bot-language: en' \
--header 'client-app: unified' \
--header 'sec-ch-ua: "Not/A)Brand";v="8", "Chromium";v="126", "Google Chrome";v="126"' \
--header 'sec-ch-ua-mobile: ?0' \
--header 'sec-ch-ua-platform: "Windows"' \
--header 'state: configured' \
--header 'accountId: {{accountid}}' \
--header 'auth: {{authToken}}' \
--data '{
    "startDate": "2024-07-18 00:17:54",
    "endDate": "2024-07-19 13:36:35",
    "limit": 100,
    "page": 2
    }
'
```

## Body Parameters

| **PARAMETER** | **DESCRIPTION** | **TYPE** |
|---------------|-----------------|----------|
| `startDate` | The start date from which the records need to be considered. <br><br>The date format with UTC based time: <br>`YYYY-MM-DDTHH24:MM:SS.NNNZ`<br>For example: `2024-07-18T11:31:14.722Z` | `string`, required |
| `endtDate` | The end date until which the records need to be considered. <br><br>The date format with UTC based time: <br>`YYYY-MM-DDTHH24:MM:SS.NNNZ`<br>For example: `2024-07-18T11:33:12.904Z` | `string`, required |
| `limit` | The number of records to be shown on each page. The default is 100. | `integer`, optional |
| `page` | Indicates the number of pages in the response; it is used for pagination. The default value is 1. | `integer`, optional |
| `channel` | Option to filter interactions by channel. | `array`, optional |
| `queues` | Options to filter interactions by queue. | `array`, optional |


## Sample Response	

```
{
    "results": [
        {
            "src": "korevg",
            "Conversation Start Time": "2024-07-18T11:31:14.722Z",
            "Conversation End Time": "2024-07-18T11:33:12.904Z",
            "Duration": "118182 milliseconds",
            "Conversation ID": "c-<conversation_id>",
            "Sentiment Score": 5,
            "Intents": [
                {
                    "intent": "authorization assistance",
                    "keywords": [
                        "account authorization assistance",
                        "code intent request"
                    ]
                },
                {
                    "intent": "intent",
                    "keywords": [
                        "intent",
                        "code intent request"
                    ]
                }
            ],
            "Topics": [
                {
                    "topic": "intent",
                    "keywords": [
                        "intent name inquiry",
                        "account authorization assistance",
                        "code intent request"
                    ]
                }
            ],
            "Kore Evaluation Score": 40,
            "IsChurnRiskObserved": false,
            "IsEscalationObserved": false,
            "Pass Score": 70,
            "IsPassed": false,
            "Queues": [
                {
                    "Queue ID": "{{queueId}} ",
                    "Queue Name": "Technical Support "
                }
            ],
            "Agents": [
                {
                    "agentId": "{{agentId}}",
                    "Agent Name": "Demo",
                    "Agent Start Time": "2024-07-18T11:31:18.703Z",
                    "Agent Email": "demo@mailinator.com"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "Customer Verification",
                    "Metric Weight": 25,
                    "Qualification": "NA"
                },
                {
                    "Metric Name": "Recommend/explain other options",
                    "Metric Weight": 30,
                    "Qualification": "NO"
                },
                {
                    "Metric Name": "Policy",
                    "Metric Weight": 15,
                    "Qualification": "NO"
                },
		  {
                    "Metric Name": "playbook",
                    "Metric Weight": 10,
                    "Qualification": "NA"
            	},
                {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "QQQQQq",
                    "Metric Weight": 30,
                    "Qualification": "YES"
                }
            ]
        },
        {
            "src": "korevg",
            "Conversation Start Time": "2024-07-19T13:30:20.347Z",
            "Conversation End Time": "2024-07-19T13:31:08.370Z",
            "Duration": "48023 milliseconds",
            "Conversation ID": "c-<conversation_id>",
            "Sentiment Score": 7,
            "Intents": [
                {
                    "emotions": [],
                    "intent": "intent",
                    "keywords": [
                        "intent"
                    ],
                    "Sentiment": "positive",
                    "Sentiment Score": 7
                }
            ],
            "Kore Evaluation Score": 40,
            "IsChurnRiskObserved": false,
            "IsEscalationObserved": false,
            "Pass Score": 70,
            "IsPassed": false,
            "Queues": [
                {
                    "Queue ID": "{{queueId}}",
                    "Queue Name": "Technical Support "
                }
            ],
            "Agents": [
                {
                    "agentId": "{{agentId}}",
                    "Agent Name": "Demo",
                    "Agent Start Time": "2024-07-19T13:30:39.279Z",
                    "Agent Email": "demo@mailinator.com"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "Customer Verification",
                    "Metric Weight": 25,
                    "Qualification": "NA"
                },
		  {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "Customer Price",
                    "Metric Weight": 30,
                    "Qualification": "NA"
                },
                {
                    "Metric Name": "Recommend/explain other options",
                    "Metric Weight": 30,
                    "Qualification": "NO"
                },
                {
                    "Metric Name": "Policy",
                    "Metric Weight": 15,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "{{metricId}}",
                    "Metric Name": "Cross talk check",
                    "Metric Weight": 30,
                    "Qualification": "YES"
                }
            ]
        }
    ],
    "totalResults": 9,
    "totalPages": 1,
    "hasMore": false
}

```


## Response Body Parameters

| **PARAMETER**              | **DESCRIPTION**                                                        | **TYPE**                  |
|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|
| `src`                      | The channel in which the conversation is initiated.                                                                                                                                                                                                           | `array`                   |
| `conversation start time`  | The start time of the conversation to be considered.                                                                                                                                                                                                          | `string`                  |
| `conversation end time`    | The end time of the conversation to be considered.                                                                                                                                   | `string`                  |
| `duration`                 | The duration of the conversation.                                                                                                                                 | `string`                  |
| `conversation id`          | The conversation id of the record.                                                                                                                                       | `string`                  |
| `sentiment score`          | A numerical representation of the sentiment expressed in a piece of text. It is used to gauge the overall emotional tone, such as positive, negative, or neutral.                                                                                                                                      | `integer`                 |
| `intents`                  | The goals or purposes behind user interactions. For example, “Book a flight to New York”.                                                                                                                                        | `array`                   |
| `topics`                   | *(No description provided)*                                                                                                                                             | `array`                   |
| `kore evaluation score`    | The score returned by NLP for that conversation.                                                                                                                              | `integer`                 |
| `isChurnRiskObserved`      | The likelihood that a customer will stop using a product or service.                                                                | `boolean`                 |
| `isEscalationObserved`     | Instances where an issue or situation has been elevated to a higher level of authority or expertise due to its complexity, severity, or the initial resolution attempts being unsuccessful.                                                                                                                                | `boolean`                 |
| `isPassed`                 | Boolean field which checks if the core evaluation score is greater than the form pass score defined.                                                                                                                                      | `boolean`                 |
| `Pass score`               | Configure pass score for the relevant form.                                                                                                                                   | `integer`                 |
| `queues`                   | Queue details for the conversation.                                                                                                                                 | `Optional (array[string])` |
| `Queue ID`                 | Queue id of the conversation.                                                                                                                                 | `string`                  |
| `Queue Name`               | Queue name of the conversation.                                                                                                                                 | `string`                  |
| `agents`                   | Array of agents who have participated in the conversation.                                                                                                                                 | `array`                   |
| `metrics`                  | Array of evaluation metrics with which scores are calculated.                                                                                                                 | `array`                   |
| `Metric ID`                | Unique identifier for the metric.                                                                                                                                             | `string`                  |
| `Metric Weight`            | A numerical value indicating how much influence or impact that metric has in an overall evaluation or scoring system.                                                                                                                               | `integer`                 |
| `empathy score`            | Measures the level of empathy conveyed in communication. <br>**High Empathy Score:** Indicates effective empathetic communication, with the communicator successfully understanding and addressing the emotions of others. <br><br>**Low Empathy Score:** Suggests a need for improvement in empathetic engagement and understanding.                                                                                                                                                                                                               | `integer`                 |
| `crutch word score`        | Measures the frequency and impact of using crutch words in speech or writing. Crutch words are filler words or phrases that people often use unconsciously, for example, "um," "uh," "like," "you know," and "basically." A lower crutch word score indicates clearer, more concise communication, while a higher score suggests a need for improvement.                                                                                                              | `integer`                 |
| `hasMore`                  | To identify if there are more interactions for the specified date range apart from the ones already sent.                                                                                                                                                                                                                 | `boolean`                 |
