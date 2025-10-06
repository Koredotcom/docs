# Raw Data API

This API provides detailed Quality AI and Conversation Intelligence related data at an interaction level, including interaction quality metrics and interaction analytics attributes.

<table>
  <tr>
   <td><strong>METHOD</strong>
   </td>
   <td><strong>POST</strong>
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td><code><a href="https://{{host}}//api/public/QualityManagement/account/{{accountId}}/v1/RawData">https://{{host}}//api/public/QualityManagement/account/{{accountId}}/v1/RawData</a></code>
   </td>
  </tr>
  <tr>
   <td>Content Type
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
See <a href="https://docs.kore.ai/xo/apis/automation/api-introduction/#generating-the-jwt-token">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>Quality AI
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
   <td>Environment URL. For example, <a href="https://platform.kore.ai/">https://platform.kore.ai/</a>
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>The Account Id. For example, 6639f8cc882f9068043fxxxx
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://sit-xo.kore.ai/agentassist/api/v1/public/qualitymanagement/app/st-5ceb332e-d21a-5675-8b45-7707f37b3f72/rawdata' \
--header 'Accept: application/json, text/plain, /' \
--header 'Accept-Language: en-US,en;q=0.9' \
--header 'AccountId: 6639f8cc882f9068043fxxxx' \
--header 'Connection: keep-alive' \
--header 'Content-Type: application/json;charset=UTF-8' \
--header 'Iid: st-5ceb332e-d21a-5675-8b45-7707f37bxxxx' \
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
--header 'accountId: 6639f8cc882f9068043fxxxx' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTMxZWY5NTg3LWVmNjItNWJkMC05YWYzLWY5NDg1YzNkODMwYiJ9.gq6RPw3ppZAr7yPuWJn5Tk39rF6-Z6C4vncWst0xxxx' \
--data '{
    "startDate": "2024-07-18 00:17:54",
    "endDate": "2024-07-19 13:36:35",
    "limit": 100,
    "page": 2
    }
'
```



## **Body Parameters**


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
   <td>startDate
   </td>
   <td>The start date from which the records need to be considered.
<p>
The date format with UTC based time:
<p>
<code>YYYY-MM-DDTHH24:MM:SS.NNNZ</code>
<p>
For Example, <code>2024-07-18T11:31:14.722Z</code>
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>endtDate
   </td>
   <td>The end date from which the records need to be considered.
<p>
The date format with UTC based time:
<p>
<code>YYYY-MM-DDTHH24:MM:SS.NNNZ</code>
<p>
For Example, <code>2024-07-18T11:33:12.904Z</code>
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>limit
   </td>
   <td>The number of records to be shown on each page. The default is 100.
   </td>
   <td>integer, optional
   </td>
  </tr>
  <tr>
   <td>page
   </td>
   <td>Indicates the number of pages in the response; it is used for pagination. The default value is 1.
   </td>
   <td>integer, optional
   </td>
  </tr>
  <tr>
   <td>channel
   </td>
   <td>Option to filter interactions by channel.
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>queues
   </td>
   <td>Options to filter interactions by queue.
   </td>
   <td>array, optional
   </td>
  </tr>
</table>



## **Sample Response** 	


```
{
    "results": [
        {
            "src": "korevg",
            "Conversation Start Time": "2024-07-18T11:31:14.722Z",
            "Conversation End Time": "2024-07-18T11:33:12.904Z",
            "Duration": "118182 milliseconds",
            "Conversation ID": "c-89da2cc-512d-4e26-9404-18481299xxxx",
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
                    "Queue ID": "qu-20e6d30-e133-4651-8b4a-7e82ea1dxxxx",
                    "Queue Name": "Technical Support "
                }
            ],
            "Agents": [
                {
                    "agentId": "a-5cd64b6-6634-4797-830d-e22c0474xxxxx",
                    "Agent Name": "Demo",
                    "Agent Start Time": "2024-07-18T11:31:18.703Z",
                    "Agent Email": "demo@mailinator.com"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "em-5c65faba-39a8-5f45-b571-33d0c1daxxxx",
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
                    "Metric ID": "em-264a0841-b272-5604-a7ea-3bdb1132xxxx",
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
            "Conversation ID": "c-508069e-a7c0-42ce-86ec-66585995xxxx",
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
                    "Queue ID": "qu-20e6d30-e133-4651-8b4a-7e82ea1dxxxx",
                    "Queue Name": "Technical Support "
                }
            ],
            "Agents": [
                {
                    "agentId": "a-5cd64b6-6634-4797-830d-e22c0474xxxxx",
                    "Agent Name": "Demo",
                    "Agent Start Time": "2024-07-19T13:30:39.279Z",
                    "Agent Email": "demo@mailinator.com"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "em-5c65faba-39a8-5f45-b571-33d0c1daxxxx",
                    "Metric Name": "Customer Verification",
                    "Metric Weight": 25,
                    "Qualification": "NA"
                },
		  {
                    "Metric ID": "em-5c65faba-39a8-5f45-b571-33d0c1daxxxx",
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
                    "Metric ID": "em-0127c0a1-3939-571a-9cde-33ab43f0xxxx",
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



## **Response Body Parameters** 


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
   <td>src
   </td>
   <td>The channel in which the conversation is initiated.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>conversation start time
   </td>
   <td>The start time of the conversation to be considered
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>conversation end time
   </td>
   <td>The end time of the conversation to be considered
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>duration
   </td>
   <td>The duration of the conversation
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>conversation id
   </td>
   <td>The conversation id of the record
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>sentiment score
   </td>
   <td>A numerical representation of the sentiment expressed in a piece of text. It is used to gauge the overall emotional tone, such as positive, negative, or neutral.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>intents
   </td>
   <td>The goals or purposes behind user interactions. For example, “Book a flight to New York”.
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>topics
   </td>
   <td>
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>kore evaluation score
   </td>
   <td>The score returned by NLP for that conversation
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>isChurnRiskObserved
   </td>
   <td>The likelihood that a customer will stop using a product or service.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>isEscalationObserved
   </td>
   <td>Instances where an issue or situation has been elevated to a higher level of authority or expertise due to its complexity, severity, or the initial resolution attempts being unsuccessful.
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>isPassed
   </td>
   <td>Boolean field which checks if the core evaluation score is greater than the form pass score defined
   </td>
   <td>boolean
   </td>
  </tr>
  <tr>
   <td>Pass score
   </td>
   <td>Configure pass score for the relevant form.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>queues
   </td>
   <td>Queue details for the conversation.
   </td>
   <td>Optional (Array [String])
   </td>
  </tr>
  <tr>
   <td>Queue ID
   </td>
   <td>Queue id of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>Queue Name
   </td>
   <td>Queue name of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>agents
   </td>
   <td>Array of agents who have participated in the conversation
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>metrics
   </td>
   <td>Array of evaluation metrics with which scores are calculated
   </td>
   <td>array
   </td>
  </tr>
  <tr>
   <td>Metric ID
   </td>
   <td>Unique identifier for the metric.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>Metric Weight
   </td>
   <td>A numerical value indicating how much influence or impact that metric has in an overall evaluation or scoring system.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>empathy score
   </td>
   <td>Measures the level of empathy conveyed in communication. <strong>High Empathy Score:</strong> Indicates effective empathetic communication, with the communicator successfully understanding and addressing the emotions of others.
<p>
<strong>Low Empathy Score:</strong> Suggests a need for improvement in empathetic engagement and understanding.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>crutch word score
   </td>
   <td>Measures the frequency and impact of using crutch words in speech or writing. Crutch words are filler words or phrases that people often use unconsciously, For example, "um," "uh," "like," "you know," and "basically." A lower crutch word score indicates clearer, more concise communication, while a higher score suggests a need for improvement.
   </td>
   <td>integer
   </td>
  </tr>
  <tr>
   <td>hasMore
   </td>
   <td>To identify if there are more interactions for the specified date range apart from the ones already sent. 
   </td>
   <td>boolean
   </td>
  </tr>
</table>

