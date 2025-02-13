# Answer Insights API

This API initiates the export of answer insights data to a file. You can apply filters to export specific results. 

Currently, this API can export Analytics data for up to one week at most. If you need to download data for a longer period, you'll need to invoke the API multiple times. For example, to obtain data for an entire month, you would call the API four times, once for each week of that month.

To download the analytics data as a file, follow these steps:

1. Use the provided API to initiate an export job. This will create a job of `type DATA_EXPORT.`
2. After initiating the job, use the [jobs API](jobs.md) to retrieve the details of the exported file. Be sure to pass the job ID of the job you just created. 
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
   <td>&lt;host_url>/api/public/bot/&lt;AppID/search/analytics-export
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
</table>


**Sample Request**


```json
{
"filters": {
"from": "2025-01-25T07:32:58.611Z",
"to": "2025-01-31T07:32:58.611Z"
}
}
```

## **Sample Response**

```json
{
    "_id": "fj-47c8da3d-2e31-5b6e-bec5-d3e0c72e5d43",
    "hidden": false,
    "read": false,
    "status": "INPROGRESS",
    "percentageDone": 0,
    "title": "Exporting Analytics Data - JSON",
    "message": "Exporting Analytics Data - JSON",
    "lMod": "2025-02-03T11:02:19.000Z",
    "startedAt": "2025-02-03T11:02:19.319Z",
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
    "contentId": [],
    "error": [],
    "parentJobId": null,
    "createdOn": "2025-02-03T11:02:19.319Z",
    "__v": 0
}
```

