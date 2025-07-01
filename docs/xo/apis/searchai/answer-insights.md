# Answer Insights API

This API initiates the export of answer insights data to a file in **JSON format**. You can apply filters to export specific results. 

Currently, this API can **export Analytics data for up to one week at most**. If you need to download data for a longer period, you'll need to invoke the API multiple times. For example, to obtain data for an entire month, you would call the API four times, once for each week of that month.

To download the analytics data as a file, follow these steps:

1. Use the provided API to initiate an export job. This will create a job of **type DATA_EXPORT**.
2. After initiating the job, use the [**jobs API**](jobs.md) to retrieve the details of the exported file. Be sure to pass the job ID of the job you just created. 
3. Please note that the file URL will only be generated after the job has been successfully completed. 
4. Once you have the file URL, you can open or download it through your web browser.

<table>
  <tr>
   <td>
Method
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td>&lt;host_url>/api/public/bot/&lt;AppID>/search/analytics-export
   </td>
  </tr>
  <tr>
   <td>Content-Type
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td>auth: &lt;JWT Token>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>Answer Insights
   </td>
  </tr>
</table>



## **Query Parameters**


<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Mandatory
   </td>
  </tr>
  <tr>
   <td>AppID
   </td>
   <td>Provide your application ID here. 
   </td>
   <td>Yes
   </td>
  </tr>
</table>



## **Request Parameters**


<table>
  <tr>
   <td>Parameters
   </td>
   <td>Description
   </td>
   <td>Mandatory
   </td>
  </tr>
  <tr>
   <td>Filter
   </td>
   <td>Currently, it takes the following two parameters:
<p>
to: date and time in UTC
<p>
from: date and time in UTC \

<p>
Examples:
<p>
When only dates are used to filter the data. 
<p>
"filters": {
<p>
"from": "2025-01-25",
<p>
"to": "2025-01-31” 
<p>
}
<p>
When a specific time is also to be included, ensure it follows the ISO 8601 format, like
<p>
"filters": {
<p>
"from": "2025-01-25T07:32:58.611Z",
<p>
"to": "2025-01-31T07:32:58.611Z"
<p>
}
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
  <td>event</td>
  <td>This field can take the following values:
   <ul>
   <li>thumbsUp</li>
   <li>thumbsDown</li>
   </ul>
   If an event is provided, only the corresponding data is exported for the selected duration. For instance, if the event is set to thumbsUp, only the data with positive feedback is exported. 

   Note that the event values are case-sensitive.
</td>
  <td>No</td>
  </tr>
</table>


### Sample Request


```json
{
"filters": {
"from": "2025-01-25T07:32:58.611Z",
"to": "2025-01-31T07:32:58.611Z"
}
}
```

## Response 
The API returns a job ID(_id). The job type is set to DATA_EXPORT. The fileInfo object in the response gives information about the type of file being generated. Use the job id to get the file details. 

### Sample Response - Creating Export Job

```json
{
    "_id": "fj-2618a702-0211-50ca-8504-c1ac377a2402",
    "hidden": false,
    "read": false,
    "status": "INPROGRESS",
    "percentageDone": 0,
    "title": "Exporting Analytics Data - JSON",
    "message": "Exporting Analytics Data - JSON",
    "lMod": "2025-06-30T06:51:12.000Z",
    "startedAt": "2025-06-30T06:51:12.138Z",
    "timedOut": false,
    "jobType": "DATA_EXPORT",
    "streamId": "st-1715923c-9a58-54e7-aaa7-14920ded9b91",
    "searchIndexId": "sidx-05d139f8-abca-50ec-84f5-2f29855aba5b",
    "fileInfo": {
        "ext": "json"
    },
    "createdBy": "u-4d04030a-93f3-5cba-a07b-1a5b20a7e9a9",
    "directoryInfo": null,
    "opType": "Manual",
    "extractionSourceId": null,
    "contentId": null,
    "error": null,
    "parentJobId": null,
    "createdOn": "2025-06-30T06:51:12.140Z",
    "__v": 0
}
```
When invoking the **jobs API** for file export, the response contains a fileInfo field that includes the link to the exported file with answer insights.

### Response - Jobs API 

```json
{
    "_id": "fj-2618a702-0211-50ca-8504-c1ac377a2402",
    "hidden": false,
    "read": false,
    "status": "SUCCESS",
    "percentageDone": 100,
    "title": "Exporting Analytics Data - JSON",
    "message": "ANALYTICS DATA JSON Export Completed - 1 file(s) with 9 total records",
    "lMod": "2025-06-30T06:51:12.000Z",
    "startedAt": "2025-06-30T06:51:12.138Z",
    "timedOut": false,
    "jobType": "DATA_EXPORT",
    "streamId": "st-1715923c-9a58-54e7-aaa7-14920ded9b91",
    "searchIndexId": "sidx-05d139f8-abca-50ec-84f5-2f29855aba5b",
    "fileInfo": {
        "fileId": "686233e0a4bca53b7f61c074",
        "fileName": "analytics_data_1751266272195",
        "fileUrl": "https://staging-xo.korebots.com/api/getMediaStream/findly/f-54847fe6-4c20-5a64-9a6d-b4b82afba169.json?n=7691453184&s=Ik9nanpJclk0dUsyVjA2bXB6OFNDOXdOWjdRQ3NxTDJjWXFnT0NPOWRqLzQ9Ig$$"
    },
    "createdBy": "u-4d04030a-93f3-5cba-a07b-1a5b20a7e9a9",
    "directoryInfo": null,
    "opType": "Manual",
    "extractionSourceId": null,
    "contentId": null,
    "error": null,
    "parentJobId": null,
    "createdOn": "2025-06-30T06:51:12.140Z",
    "__v": 0,
    "analyticsFragments": [
        {
            "fileId": "686233e0a4bca53b7f61c074",
            "fileName": "analytics_data_1751266272195",
            "fileUrl": "https://staging-xo.korebots.com/api/getMediaStream/findly/f-54847fe6-4c20-5a64-9a6d-b4b82afba169.json?n=7691453184&s=Ik9nanpJclk0dUsyVjA2bXB6OFNDOXdOWjdRQ3NxTDJjWXFnT0NPOWRqLzQ9Ig$$",
            "recordCount": 9
        }
    ],
    "hasAnalyticsFragments": false,
    "store": {
        "urlParams": "&clientfilename=analytics_data_1751266272341.json&batchtesting=true",
        "totalFiles": 1,
        "totalRecords": 9
    }
}
```

Refer to the **fileInfo** field in the response to get details of the exported file. The file can be downloaded from the **fileURL** in this field. The exported file contains the analytics data for the selected time frame in JSON format. It includes the details of the search query, generated answer along with the debug information including the relevant chunks, llm request and response parameters. 


### Exported JSON file Sample

The following file is provided as a sample. Actual output may vary based on your specific Search AI app configuration.


```json
[
    {
        "_id": "fsh-8532e779-c6b0-52cb-8eb4-73ecb0c955c4",
        "sessionId": "",
        "channelUId": "",
        "clientInfo": "",
        "query": "How to invest in money",
        "isFullSearch": true,
        "searchRequestId": "fsh-8532e779-c6b0-52cb-8eb4-73ecb0c955c4",
        "answerType": "file",
        "event": "search",
        "selectedFacets": [],
        "botId": "st-1715923c-9a58-54e7-aaa7-14920ded9b91",
        "searchIndexId": "sidx-05d139f8-abca-50ec-84f5-2f29855aba5b",
        "language": "en",
        "hasResults": true,
        "timeStampValue": 1738245875201,
        "createdOn": "2025-01-30T14:04:35.201Z",
        "accountId": "61376551af10506356c7517b",
        "isDev": false,
        "queryPipelineId": "fqp-3d0df6b0-6bc9-5c19-8730-d33666c35cea",
        "indexPipelineId": "fip-b62c0c2d-df19-5428-b22d-0f12cb43b2a5",
        "requestSource": "publicApi",
        "connectionType": "xhr",
        "queryType": "fullSearch",
        "snippetEnabled": true,
        "model": "extractive_model",
        "graphAnswer": "Page\t4    Total Cost of Revenue    Microsoft's total cost of revenue  includes manufacturing  and distribution costs for the sale of products and licensing  programs,  operating  costs  for  product  support  service centers  and  distribution  centers,  advertising  lead  generation  costs,  support  and  maintenance  costs,  depreciation & amortization, etc.8    As a percentage of total sales, total cost of revenue did not  fluctuate much, so we used a historical average of 34.37%  in our projections. According to their 10K, the increase in  total cost of revenue  in 2021  is related to growth  in the  commercial cloud and gaming businesses. The chart below  shows our estimates for its annual growth rate, which we  expect to decrease and gradually stabilize at around 15%.  Combined with our revenue  forecasts  for each segment,  we believe such a growth rate is reasonable.1    Source: Henry Fund Model1    Research & Development    Microsoft's  R&D  expenses  consist  of  salaries,  employee  benefits, and costs associated with software development.  In 2021, the R&D expenses were $20.7 billion, an increase  of 7.5% over  last year. According  to Microsoft,  this was  brought about by investments in cloud eng sales volume, selling prices,    0.00%   5.00%   10.00%   15.00%   20.00%   25.00%    20.00    40.00    60.00    80.00    100.00    120.00   Total Cost of Revenue   Total cost of revenue Growth Rate   5.00%   10.00%   15.00%   20.00%    10.00    20.00    30.00    40.00    50.00   Research and development    Total cost of revenue Growth Rate   0.00%   5.00%   10.00%   15.00%   20.00%   25.00%    10.00    15.00    20.00    25.00   Sales and marketing    Total cost of revenue Growth Rate",
        "channel": "publicApi",
        "messageId": "",
        "__v": 0,
        "answerDebug": [
            {
                "_id": "fad-ac938440-5b7f-5a21-943c-f5d3b4c66063",
                "searchRequestId": "fsh-8532e779-c6b0-52cb-8eb4-73ecb0c955c4",
                "searchIndexId": "sidx-05d139f8-abca-50ec-84f5-2f29855aba5b",
                "createdOn": "2025-01-30T14:04:35.210Z",
                "queryPipelineId": "fqp-3d0df6b0-6bc9-5c19-8730-d33666c35cea",
                "indexPipelineId": "fip-b62c0c2d-df19-5428-b22d-0f12cb43b2a5",
                "extractiveChunksCount": 20,
                "extractiveChunks": [
                   
                        "score": 1,
                        "chunkText": "Page\t3    computing  more  personal  with  more  intuitive  and  engaging  interactions. The division  focuses on Windows­ related  services,  devices  such  as  Surface  and  PC  accessories, Xbox­related content and services, and search  advertising.8    Productivity & Business Processes    Revenue Growth Rate",
                        "sentToLLM": false,
                        "usedInAnswer": false,
                        "chunkQualified": true,
                        "sourceType": "file",
                        "sourceUrl": "https://staging-xo.korebots.com/api/getMediaStream/findly/f-25c6856d-b2e2-5aa4-900e-c0c78a06e0de.pdf?n=6090350278&s=ImxvcU02bDB2a080a2dEK1lIc2RJMTVrelYvUSs5cHR6emVPTDhBcC91bm89Ig$$",
                        "sourceName": "Default Directory",
                        "recordTitle": "Microsoft.pdf",
                        "recordUrl": "https://staging-xo.korebots.com/api/getMediaStream/findly/f-25c6856d-b2e2-5aa4-900e-c0c78a06e0de.pdf?n=6090350278&s=ImxvcU02bDB2a080a2dEK1lIc2RJMTVrelYvUSs5cHR6emVPTDhBcC91bm89Ig$$#page=3",
                        "chunkRerank": false,
                        "moreInfo": [
                            {
                                "key": "Chunk Title",
                                "value": ""
                            },
                            {
                                "key": "Page Number",
                                "value": 3
                            }
                        ],
                        "additionalInfo": {
                            "chunkId": "chk-ce3630ec-c244-4d44-8a9c-345f4775abae",
                            "docId": "fc-97d170a6-8596-59cf-a05b-f8202ae58c56",
                            "sourceId": "fs-a9ba2fe3-581c-59fd-9924-28caf7a1ae8a",
                            "chunkType": "Text",
                            "extractionMethod": "text"
                        }
                    }
                ],
                "generativeChunks": [],
                "chunksSentToLLM": 0,
                "chunksUsedInAnswer": 1,
                "prompt": {
                    "promptText": "",
                    "moreInfo": []
                },
                "llmResponse": {
                    "responseDetails": {
                        "completionText": "",
                        "moreInfo": []
                    },
                    "responseTime": {
                        "moreInfo": []
                    }
                },
                "answeredBy": "extractive_model",
                "answeringSource": [],
                "retrieverUsed": "hybrid_search",
                "vectorSearchType": "approx_knn",
                "__v": 0
            }
        ]
    },
    {
        "_id": "fsh-610e732e-8bb6-570e-bac7-ddf2c8e8d478",
        "sessionId": "",
        "channelUId": "",
        "clientInfo": "",
        "query": "Invest in direct mutual funds for FREE with Paytm Money",
        "isFullSearch": true,
        "searchRequestId": "fsh-610e732e-8bb6-570e-bac7-ddf2c8e8d478",
        "answerType": "file",
        "event": "search",
        "selectedFacets": [],
        "botId": "st-1715923c-9a58-54e7-aaa7-14920ded9b91",
        "searchIndexId": "sidx-05d139f8-abca-50ec-84f5-2f29855aba5b",
        "language": "en",
        "hasResults": true,
        "timeStampValue": 1738245852121,
        "createdOn": "2025-01-30T14:04:12.121Z",
        "accountId": "61376551af10506356c7517b",
        "isDev": false,
        "queryPipelineId": "fqp-3d0df6b0-6bc9-5c19-8730-d33666c35cea",
        "indexPipelineId": "fip-b62c0c2d-df19-5428-b22d-0f12cb43b2a5",
        "requestSource": "publicApi",
        "connectionType": "xhr",
        "queryType": "fullSearch",
        "snippetEnabled": true,
        "model": "extractive_model",
        "graphAnswer": "   Source: FactSet2    The software industry is a special case because its products  are  less  limited by distance and  transportation costs. So  compared to other industries, such as food, materials, etc.,  Clearly, Zoom has done the best  job  of  expanding  its  global  footprint because  its business  is  largely  free  of  physical  transportation,  while  Amazon's  revenue  comes  more  from  within  the  United  States.  Microsoft is relatively evenly split between domestic and  foreign  revenue, both accounting  for about 50% of total  revenue.    0%   20%   40%   60%   80%   100%   Geographic Revenue Comparison   Other Countries U.S.",
        "channel": "publicApi",
        "messageId": "",
        "__v": 0,
        "answerDebug": [
            {
                "_id": "fad-6e017d48-198a-557f-b51c-8d30932eadf7",
                "searchRequestId": "fsh-610e732e-8bb6-570e-bac7-ddf2c8e8d478",
                "searchIndexId": "sidx-05d139f8-abca-50ec-84f5-2f29855aba5b",
                "createdOn": "2025-01-30T14:04:12.130Z",
                "queryPipelineId": "fqp-3d0df6b0-6bc9-5c19-8730-d33666c35cea",
                "indexPipelineId": "fip-b62c0c2d-df19-5428-b22d-0f12cb43b2a5",
                "extractiveChunksCount": 20,
                "extractiveChunks": [
                    {
                                              "score": 1,
                        "chunkText": "Page\t3    computing  more  personal  with  more  intuitive  and  engaging  interactions. The division  focuses on Windows­ related  services,  devices  such  as  Surface  and  PC  accessories, Xbox­related content and services, and search  advertising.8    The More Personal Computing segment comes in second  with $54.1 billion  in revenue  in  fiscal 2021, representing 32.2% of total revenue, slightly ahead of the Productivity  and Business Processes segment.1 Compared to Q1 2021,  the  segment's  revenue  increased  12%  in  Q1  2022.  In  particular, Windows OEM  revenue  grew  10%, Windows  Commercial  Products  and  Cloud  Services  revenue  grew  12%,  Xbox­related  revenue  grew  2%,  and  advertising  revenue grew 40%, but Surface­related revenue declined  17%.10   .1    Source: Henry Fund Model1    Cost Structure Analysis    Microsoft's  major  operating  expenses  for  2021  were  54.41%  of  total  sales,  which  included  Total  Cost  of  Revenue (31.07%), Research and Development (12.32%),  and Sales & Marketing (11.97%).1 Compared to last year,  these expenses have increased by approximately 9.7%.1    ­5.00%   0.00%   5.00%   10.00%   15.00%   30.00   44.00   58.00   72.00   86.00   100.00   More Personal Computing    Revenue Growth Rate   10.00%   12.00%   14.00%   16.00%   18.00%   20.00%   20.00   40.00   60.00   80.00   100.00   120.00   Productivity & Business Processes    Revenue Growth Rate",
                        "sentToLLM": false,
                        "usedInAnswer": false,
                        "chunkQualified": true,
                        "sourceType": "file",
                        "sourceUrl": "https://staging-xo.korebots.com/api/getMediaStream/findly/f-25c6856d-b2e2-5aa4-900e-c0c78a06e0de.pdf?n=6090350278&s=ImxvcU02bDB2a080a2dEK1lIc2RJMTVrelYvUSs5cHR6emVPTDhBcC91bm89Ig$$",
                        "sourceName": "Default Directory",
                        "recordTitle": "Microsoft.pdf",
                        "recordUrl": "https://staging-xo.korebots.com/api/getMediaStream/findly/f-25c6856d-b2e2-5aa4-900e-c0c78a06e0de.pdf?n=6090350278&s=ImxvcU02bDB2a080a2dEK1lIc2RJMTVrelYvUSs5cHR6emVPTDhBcC91bm89Ig$$#page=3",
                        "chunkRerank": false,
                        "moreInfo": [
                            {
                                "key": "Chunk Title",
                                "value": ""
                            },
                            {
                                "key": "Page Number",
                                "value": 3
                            }
                        ],
                        "additionalInfo": {
                            "chunkId": "chk-ce3630ec-c244-4d44-8a9c-345f4775abae",
                            "docId": "fc-97d170a6-8596-59cf-a05b-f8202ae58c56",
                            "sourceId": "fs-a9ba2fe3-581c-59fd-9924-28caf7a1ae8a",
                            "chunkType": "Text",
                            "extractionMethod": "text"
                        }
                    }
                ],
                "generativeChunks": [],
                "chunksSentToLLM": 0,
                "chunksUsedInAnswer": 1,
                "prompt": {
                    "promptText": "",
                    "moreInfo": []
                },
                "llmResponse": {
                    "responseDetails": {
                        "completionText": "",
                        "moreInfo": []
                    },
                    "responseTime": {
                        "moreInfo": []
                    }
                },
                "answeredBy": "extractive_model",
                "answeringSource": [],
                "retrieverUsed": "hybrid_search",
                "vectorSearchType": "approx_knn",
                "__v": 0
            }
        ]
    }
]
```
Note that this is only used for small files (less than 150 records.) For larger datasets, the data is divided into smaller fragments of 150 records each, and each fragment is available as a separate file. Refer below for more details. The export API gives the job ID for the corresponding job and the job status api returns the list of files as fragments. 


## Exporting Analytics Data for Large Datasets 

When exporting analytics data for a large dataset within a specified date range, it is important to note that the dataset may be segmented into multiple fragments. Each fragment will be available as a separate downloadable file, with a default limit of 150 records per file. 

In addition to the usual export job details, the export job will include the following additional information in the response regarding these fragments, allowing you to efficiently manage and download the complete dataset. 


<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>hasAnalyticsFragments</code>
   </td>
   <td>Boolean
   </td>
   <td>Indicates if the export is split into multiple files.
<ul>

<li><code>true</code> for multi-file exports</li>

<li><code>false</code> for single-file exports</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><code>analyticsFragments</code>
   </td>
   <td>Array
   </td>
   <td><strong>Required</strong>: Contains metadata about all export fragments/files. Present for both single and multi-file exports
   </td>
  </tr>
  <tr>
   <td><code>store</code>
   </td>
   <td>Object
   </td>
   <td>Provide Meta info, <strong>totalRecords</strong> & <strong>totalFiles</strong>
   </td>
  </tr>
  <tr>
   <td><code>percentageDone</code>
   </td>
   <td>number
   </td>
   <td>Percentage-based status for analytics export progress
   </td>
  </tr>
</table>



### Sample response - Jobs API for a large dataset with multiple fragments


```json
{
    "_id": "fj-4ccf7101-baf1-5729-9347-60deba1113c9",
    "hidden": false,
    "read": false,
    "status": "SUCCESS",
    "percentageDone": 100,
    "title": "Exporting Analytics Data - JSON",
    "message": "ANALYTICS DATA JSON Export Completed - 3 file(s) with 400 total records",
    "lMod": "2025-06-10T13:55:09.000Z",
    "startedAt": "2025-06-10T13:54:38.953Z",
    "timedOut": false,
    "jobType": "DATA_EXPORT",
    "streamId": "st-8963e59e-f160-581d-a8f9-3b7d971b0a53",
    "searchIndexId": "sidx-a222bbd9-da7b-5689-88f9-3f9958511d1b",
    "hasAnalyticsFragments": true,
    "fileInfo": {},
    "createdBy": "u-e3c6ebfa-e56f-56d4-9870-6a5ce414aaf3",
    "directoryInfo": null,
    "opType": "Manual",
    "extractionSourceId": null,
    "contentId": null,
    "error": null,
    "parentJobId": null,
    "createdOn": "2025-06-10T13:54:38.954Z",
    "__v": 0,
    "analyticsFragments": [
        {
            "fileId": "6848391f171ddc36802e20db",
            "fileName": "analytics_data_1749563679586_part_1_of_3",
            "fileUrl": "https://qa1-uxo.kore.ai:443/api/getMediaStream/findly/f-77fd8d06-da12-5414-9a32-bfb1cd0251fd.json?n=526269727&s=IlpVUjN2aDJHY2RGVTdYaVZIRjVyeWdOWEJxbXZZd1ducmw1NHJ4V1JBeHc9Ig$$",
            "recordCount": 150
        },
        {
            "fileId": "68483929171ddc36802e216b",
            "fileName": "analytics_data_1749563689734_part_2_of_3",
            "fileUrl": "https://qa1-uxo.kore.ai:443/api/getMediaStream/findly/f-8139e91f-b30d-5dc8-af13-127668808d0b.json?n=3627398285&s=IndRVG14ejNyK2RNM0tBUXNScUV4Z2ZQZG9ZUnFxSGpwSGUyLzIrcE96Wk09Ig$$",
            "recordCount": 150
        },
        {
            "fileId": "68483933171ddc36802e2192",
            "fileName": "analytics_data_1749563699827_part_3_of_3",
            "fileUrl": "https://qa1-uxo.kore.ai:443/api/getMediaStream/findly/f-90b89e64-232b-5e6b-9a1e-6be8b462cedd.json?n=4384938178&s=IlZyOW9kWnh3OThNQ1NxL2RGdVFtNXJFU3E4K0h2U1RwRHQ3amltYmI0TkU9Ig$$",
            "recordCount": 100
        }
    ],
    "store": {
        "urlParams": "&clientfilename=analytics_data_1749563709906.json&batchtesting=true",
        "totalFiles": 3,
        "totalRecords": 400
    }
}
```



## Points to Note

* Always check the **hasAnalyticsFragments field** to determine if data is segmented.
* Ensure your **date ranges are within 7 days**.
* Use **ISO 8601 format for from and to timestamps**.
* Data is exported in **JSON format**. 