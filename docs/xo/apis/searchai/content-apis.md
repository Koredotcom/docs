# Content APIs


## Get Content By ID

This API returns the content requested.


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
   <td>&lt;host_url>/api/public/bot/:botId/content/contentId
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
   <td>Document Management
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
   <td>Bot ID
   </td>
   <td>Provide your application ID here. 
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>ContentID
   </td>
   <td>Unique ID of the content to be retrieved. This is returned as doc_id in the response of the advancedSearch API. You can also find this identifier in the Chunk Browser labeled as "docId" or in the JSON view of the ingested content, where it appears as "_id."
   </td>
   <td>Yes
   </td>
  </tr>
</table>



## **Sample Response**

```
 {
    "_id": "fc-26d474d1-2aa7-50cf-984d-e719a4884792",
    "searchIndexId": "sidx-cdd15c7a-47d5-5839-80ee-e4f418489f70",
    "streamId": "st-7561b874-2114-5b8f-8086-ea69007b5f53",
    "createdBy": "u-4d04030a-93f3-5cba-a07b-1a5b20a7e9a9",
    "createdOn": "2024-03-06T12:08:39.719Z",
    "lMod": "2024-11-18T07:33:35.000Z",
    "extractionType": "jira",
    "extractionSourceId": "fs-5c651c22-eb9f-5bb7-ad51-84de1df15639",
    "jobId": "fj-fecfb47b-eea8-5419-aadb-ad8552c0a7e5",
    "_source": {
        "meta_data": {
            "assignee": "Manikumar",
            "projectId": "10000",
            "issueType": "Task",
            "projectName": "Searchassist_Test",
            "issueStatus": "To Do",
            "comments": " Continue Working on it.. Give the Latest Update ",
            "reporter": "Mounika Vemula",
            "ticketId": "ST-2"
        },
        "sys_racl": [
            "10000"
        ],
        "sys_content_type": "jira",
        "sys_source_name": "Jira COnnector",
        "sourceType": "jira",
        "raw_data": "...",
        "base_url": "",
        "title": "Debugging Request:  UXO Stagging -testing",
        "content": "Debugging Request: UXO Stagging -testing Request for debugging in the UXO Staging\nAssignee: Manikumar\nProject ID: 10000\nIssue Type: Task\nProject Name: Searchassist_Test\nIssue Status: To Do\nReporter: Mounika Vemula\nComments:  Continue Working on it.. Give the Latest Update ",
        "url": "https://searchassistjira.atlassian.net/browse/xx-2",
        "type": "Task",
        "comments": " Please Update the status."
    },
    "connectorId": "fcon-c13cc009-be5f-50d8-b903-941f88f7b3b7",
    "externalSourceId": "sidx-cdd15c7a-47d5-5839-80ee-e4f418489f70_ST-2",
    "updatedOn": "2024-09-09T10:32:27.394Z",
    "__v": 0
}
```

