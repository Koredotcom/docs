# Auto QA Reporting API

This API provides reporting interaction level Auto QA scoring and qualification of metrics relevant to the interaction based on the form associated with the QA. 

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
   <td><code><a href="https://{{host}}//api/public/QualityManagement/account/{{accountId}}/v1/ScoreReporting">https://{{host}}//api/public/QualityManagement/account/{{accountId}}/v1/ScoreReporting</a></code>
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



## **Path Parameters** 


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
   <td>The Account Id. For example, <code>665ae2f3cc61d7d2cf75xxxx</code>
   </td>
   <td>string, required
   </td>
  </tr>
</table>



## **Sample Request**


```
curl --location 'https://platform.kore.ai/agentassist/api/v1/public/qualitymanagement/app/st-c35c438e-b95a-51d6-9b44-b8691a9eaeb6/scorereporting' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTI5YjhlZmY3LWNhZmItNTkzYS1hNDU4LTAzYWQwZjA4ZGM5XXXX.bxF1rOd6TLmwetSHGHcHvWw6nK8e3hzULpkItYZmcqE' \
--header 'accountId: 665ae2f3cc61d7d2cf75xxxx' \
--header 'Content-Type: application/json' \
--data '{
"offset": 0,
"startDate": "2024-06-26 00:18:30",
"endDate": "2024-06-26 13:36:35",
"limit": 70
}'
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
   <td>offset
   </td>
   <td>The number of responses the documents need to Skip. The default value is 0. For example, 10.
   </td>
   <td>Integer, optional
   </td>
  </tr>
  <tr>
   <td>limit
   </td>
   <td>The number of conversation records to be displayed in the response. The default value is 100. For example, 70.
   </td>
   <td>Integer, optional
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
For Example, <code>2024-07-18T11:33:12.724Z</code>
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
            "conversationId": "c-15ae6dc-7644-4bba-9ac9-d2092e51xxxx",
            "koreEvalutionScore": 75,
            "Queues": [
                {
                    "Queue ID": "qu-eb08edd-b55e-47c2-9328-9b1d5210xxxx",
                    "Queue Name": "Default Queue"
                }
            ],
            "Agents": [
                {
                    "Agent ID": "a-94cb2bb-78a2-4855-ab4d-3ba28ae8xxxxx",
                    "Agent Name": "Prod1"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "em-aac5e0fe-22e3-590b-840a-ee190342xxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-3f56aa0a-fa87-5a79-91cb-855696c7xxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-b305192c-370f-5d61-a5d5-fa68f560xxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-12983a0d-4177-5ad4-9dda-36d828eexxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-11656752-cec8-5177-819c-5565e63cxxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-8d7b3953-c329-5bb8-a08d-d945a253xxxx",
                    "Metric Name": "Pre-Authorization query - Cigna",
                    "Metric Weight": 10,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "em-32254731-8cf5-5eca-89f1-95ef860axxxx",
                    "Metric Name": "Pre-Authorization Procedure - Cigna",
                    "Metric Weight": 15,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "em-1a289207-fb66-5ec8-b0a5-be63a440xxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-a35b103a-27ef-55e6-82d9-76ed3fe6xxxx",
                    "Qualification": "YES"
                }
            ]
        },
        {
            "conversationId": "c-6200bc7-74c5-4404-a806-a7b811b1xxxx",
            "koreEvalutionScore": 80,
            "Queues": [
                {
                    "Queue ID": "qu-eb08edd-b55e-47c2-9328-9b1d5210xxxx",
                    "Queue Name": "Default Queue"
                }
            ],
            "Agents": [
                {
                    "Agent ID": "a-94cb2bb-78a2-4855-ab4d-3ba28ae8xxxxx",
                    "Agent Name": "Prod1"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "em-aac5e0fe-22e3-590b-840a-ee190342xxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-3f56aa0a-fa87-5a79-91cb-855696c7xxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-b305192c-370f-5d61-a5d5-fa68f560xxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-12983a0d-4177-5ad4-9dda-36d828eexxxx",
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "em-11656752-cec8-5177-819c-5565e63cxxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-8d7b3953-c329-5bb8-a08d-d945a253xxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-32254731-8cf5-5eca-89f1-95ef860axxxx",
                    "Qualification": "YES"
                },
                {
                    "Metric ID": "em-1a289207-fb66-5ec8-b0a5-be63a440xxxx",
                    "Metric Name": "Additional Assistance - Cigna",
                    "Metric Weight": 5,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "em-a35b103a-27ef-55e6-82d9-76ed3fe6xxxx",
                    "Qualification": "YES"
                }
            ]
        },
        {
            "conversationId": "c-b1e19cd-3ce7-44da-8479-02877687xxxx",
            "koreEvalutionScore": 30,
            "Queues": [
                {
                    "Queue ID": "qu-eb08edd-b55e-47c2-9328-9b1d5210xxxx",
                    "Queue Name": "Default Queue"
                }
            ],
            "Agents": [
                {
                    "Agent ID": "a-94cb2bb-78a2-4855-ab4d-3ba28ae8xxxxx",
                    "Agent Name": "Prod1"
                }
            ],
            "Metrics": [
                {
                    "Metric ID": "em-d6cef34e-601a-5933-984f-3d59027dxxxx",
                    "Metric Name": "greeting",
                    "Metric Weight": 50,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "em-4b7ce74e-fa15-5e9e-96ff-ddbe9f96xxxx",
                    "Metric Name": "proper sign off",
                    "Metric Weight": 20,
                    "Qualification": "NO"
                },
                {
                    "Metric ID": "em-09959e02-601a-54c5-a14c-c788bc7exxxx",
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
   <td>conversationId
   </td>
   <td>The conversation id of the record.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>koreEvalutionScore
   </td>
   <td>The score returned by NLP for that conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>queues
   </td>
   <td>Queue details for the conversation.
   </td>
   <td>string
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
   <td>Array of agents who have participated in the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>Agent ID
   </td>
   <td>Agent ID of the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>Agent Name
   </td>
   <td>List of agents names who have participated in the conversation.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td>metric
   </td>
   <td>An array of evaluation metrics with which scores are calculated.
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
   <td>Qualification
   </td>
   <td>Qualification status (YES or NO)
   </td>
   <td>boolean
   </td>
  </tr>
</table>

