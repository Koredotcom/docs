# Get Tasks API

The API enables you to retrieve task data from the case management system with required filters for status, priority, assignment, channels, and date ranges.

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
   <td><code><a href="https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/getTasks">https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/getTasks</a></code>
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
   <td>Case Management Configuration.
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
   <td>`streamId`
   </td>
   <td>Bot identifier or Stream identifier. You can access it from the General Settings page of the bot. For example, 
st-084d3c5e-376a-559f-9987-a012bb2bxxxx
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Header Parameters

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
   <td>`accountId`
   </td>
   <td>The account identifier associated with the API request. For example, 
6639f7bd58c97ffac03bxxxx
 </a>
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/getTasks' \
--header 'sec-ch-ua: "Google Chrome";v="123", "Not:A-Brand";v="8", "Chromium";v="123"' \
--header 'AccountId: {{accountId}}' \
--header 'client-app: unified' \
--header 'X-Timezone-Offset: -330' \
--header 'sec-ch-ua-mobile: ?0' \
--header 'auth: {{jwt-code}}' \
--header 'state: configured' \
--header 'Iid: st-084d3c5e-376a-559f-9987-a012bb2bxxxx' \
--header 'Content-Type: application/json;charset=UTF-8' \
--header 'Accept: application/json, text/plain, */*' \
--header 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36' \
--header 'bot-language: en' \
--header 'app-language: en' \
--header 'Referer: http://localhost/builder/app/welcomeflows' \
--header 'sec-ch-ua-platform: "Linux"' \
--data '{
    "skip": 0,
    "limit": 50,
    "searchText": "",
    "unresolved": false,
    "unassigned": true,
    "mytask": false,
    "selectedColumns": [],
    "priority": [
        "Critical"
    ],
    "agents": [],
    "status": [
        "In-Progress"
    ],
    "customFields": [],
    "ETAlist": [],
    "channel": [
        "rtm"
    ],
    "queues": [],
    "startDate": "2025-05-26T18:30:00.000Z",
    "endDate": "2025-05-27T18:29:59.999Z",
    "sortBy": {
        "dueDate": "desc"
    }
}'

```

## Request Body Parameters

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
   <td>`searchText`
   </td>
   <td>Searching for the name of the tasks
 </a>
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>`unresolved`
   </td>
   <td>Retrieves the tasks that are still unresolved 
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>`unassigned`
   </td>
   <td>Retrieves the tasks that are still unassigned
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>`mycase`
   </td>
   <td>Retrieves the tasks that are still assigned to me
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>`priority`
   </td>
   <td> List of priorities to filter the tasks; for example, high, medium
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>`status`
   </td>
   <td>List of task statuses to filter by; for example, new, open
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>`channel`
   </td>
   <td>List of communication channels to filter by; for example, email, chat
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>`queues`
   </td>
   <td>List of queues to filter cases by; for instance, SupportQueue1
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>`startDate`
   </td>
   <td>Start date of the task (ISO 8601 format)
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>`endDate`
   </td>
   <td>End date of the task (ISO 8601 format)
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>`sortBy`
   </td>
   <td>Field to sort by; for example, createdDate
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>`dueDate`
   </td>
   <td>Filter by exact dueDate (ISO 8601 format)
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
           "_id": "ti-c7c61c9-1392-45d3-b163-3622d737xxxx",
           "caseId": "ci-884ca36-6b0c-40bc-ba5c-bc8a8c6cxxxx",
           "caseRefId": "CS000108",
           "taskTmp": "Test task temp",
           "name": "This is demo task",
           "lname": "this is demo task",
           "tags": [],
           "userInfo": {
               "_id": "u-fd371c0a-3168-5a02-83dd-f4ba5597xxxx",
               "name": "dummy"
           },
           "sessIds": [],
           "accountId": "6810a48a8b40a4e0175cxxxx",
           "iId": "st-d140086f-4d0a-59fa-9d28-b5fc23e9xxxx",
           "orgId": "o-734f0871-3217-515b-bd5f-36abef3cxxxx",
           "convIds": [],
           "status": {
               "_id": "sts-599163e-b869-4532-bbb3-c76a3d08xxxx",
               "name": "Open",
               "lname": "open",
               "statusCategory": "open",
               "type": "system",
               "desc": "When a new case/task is created",
               "isEnabled": true,
               "isActive": true
           },
           "source": "rtm",
           "conversationType": "TASK",
           "fields": [
               {
                   "_id": "fd-3380ddb-a87d-4b25-8db6-5002e5c8xxxx",
                   "show": true,
                   "displayName": "Description",
                   "lname": "description",
                   "desc": "Transcription based on the conversation summary",
                   "isEnabled": true,
                   "isActive": true,
                   "metaData": {
                       "type": "textarea",
                       "displayName": "Description",
                       "name": "description",
                       "description": "Transcription based on the conversation summary",
                       "placeholder": "Enter description",
                       "readOnly": false,
                       "tooltipText": "Transcription based on the conversation summary"
                   },
                   "type": "system",
                   "required": true,
                   "dataType": "textarea"
               },
               {
                   "_id": "fd-7ab71aa-5da2-4cd1-a7ec-0e2468b8xxxx",
                   "show": true,
                   "displayName": "Due Date",
                   "lname": "due date",
                   "desc": "Date/time to complete a case",
                   "isEnabled": true,
                   "isActive": true,
                   "metaData": {
                       "type": "datetime",
                       "displayName": "Due Date",
                       "name": "dueDate",
                       "description": "Date/time to complete a case",
                       "placeholder": "Enter date",
                       "readOnly": false,
                       "tooltipText": "Date/time to complete a case"
                   },
                   "type": "system",
                   "required": true,
                   "dataType": "datetime"
               },
               {
                   "_id": "fd-a165979-63b6-498b-85b8-c48098edxxxx",
                   "show": true,
                   "displayName": "Title",
                   "lname": "title",
                   "desc": "Title of the field",
                   "isEnabled": true,
                   "isActive": true,
                   "metaData": {
                       "type": "input",
                       "displayName": "Title",
                       "name": "title",
                       "description": "Title of the field",
                       "placeholder": "Enter title",
                       "readOnly": false,
                       "tooltipText": "Title of the field"
                   },
                   "type": "system",
                   "required": true,
                   "dataType": "input"
               }
           ],
           "participants": [],
           "priority": {
               "_id": "pr-6189896-de68-4e02-8d56-813a68bdxxxx",
               "name": "Medium",
               "lname": "medium",
               "type": "system",
               "desc": "Moderate urgency",
               "color": "#16A34A",
               "isEnabled": true,
               "isActive": true,
               "score": 10
           },
           "refId": "TS000105",
           "assigneeType": "unassigned",
           "isCustTsk": false,
           "isActive": true,
           "attachments": [],
           "feedback": [],
           "createdBy": {
               "name": "Rayirth P",
               "_id": "u-320fa237-51be-5c46-a046-14e97c770xxxx",
               "profImage": "no-avatar"
           },
           "updatedBy": {
               "name": "Rayirth P",
               "_id": "u-320fa237-51be-5c46-a046-14e97c77xxxx",
               "profImage": "no-avatar"
           },
           "timestampValue": 1748433938795,
           "activityIds": [],
           "commentIds": [],
           "resolutionCmts": [],
           "isBreached": false,
           "queues": [],
           "channel": [],
           "createdAt": "2025-05-28T12:05:38.807Z",
           "updatedAt": "2025-05-28T12:05:38.807Z",
           "currAssignee": {},
           "ETA": ""
       },
   ],
   "page": 1,
   "limit": 10,
   "hasMore": false,
   "totalPages": 1,
   "totalResults": 1
}
```