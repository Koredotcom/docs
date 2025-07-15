# Create a task API

This API allows you to create a new task within the case management system.

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
   <td><code><a href="https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/createTask">https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/createTask</a></code>
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
   <td>streamId
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
   <td>accountId
   </td>
   <td>The account identifier associated with the API request. For example, 
6639f7bd58c97ffac03bxxxx
 </a>
   </td>
   <td>string, not required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/createTask' \
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
--data-raw '{
    "caseId": "ci-31d9184-d64d-42d9-8c75-5edba531xxxx",
    "caseRefId":"CS000131",
    "taskTmp":"ttm-16623a9-c63c-4bda-b1e4-14754939xxxx",
    "name": "This is demo task",
    "userInfo": {
        "_id": "u-fd371c0a-3168-5a02-83dd-f4ba5597xxxx",
        "name": "dummy",
        "emailId":"dummy@mailinator.com"
    },
    "source": "rtm"
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
   <td>caseId
   </td>
   <td>Unique case identifier
 </a>
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>caseRefId
   </td>
   <td>Case reference identifier
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>taskTmp
   </td>
   <td>Unique task template identifier
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>userInfo
   </td>
   <td>User information object
   </td>
   <td>object, required
   </td>
  </tr>
  <tr>
   <td>_id
   </td>
   <td> Unique user identifier. If you do not include user identifier `_id`, you must provide either `emailId` or `phoneNumber`
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>name
   </td>
   <td>User's name
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>emailId
   </td>
   <td>User's email address (Mandatory if `_id` is not entered)
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>phoneNumber
   </td>
   <td>User's phone number (Mandatory if `
   _id` is not entered)
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>source
   </td>
   <td>Source of the case (for example, `rtm`)
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>desc
   </td>
   <td>Task description
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>name
   </td>
   <td>Task name
   </td>
   <td>string, conditional
   </td>
  </tr>
</table>

## Sample Response 	


```
{
    "caseId": "ci-31d9184-d64d-42d9-8c75-5edba531xxxx",
    "caseRefId": "CS000131",
    "taskTmp": "jbhk",
    "name": "This is demo task",
    "lname": "this is demo task",
    "tags": [],
    "userInfo": {
        "_id": "u-fd371c0a-3168-5a02-83dd-f4ba5597xxxx",
        "name": "dummy"
    },
    "sessIds": [],
    "accountId": "{{accountId}}",
    "iId": "st-084d3c5e-376a-559f-9987-a012bb2bxxxx",
    "orgId": "o-85e72576-06a6-5c0b-8844-25fa0cd6xxxx",
    "convIds": [],
    "status": {
        "_id": "sts-a3ed479-e945-4b59-a0c0-4369472axxxx",
        "name": "Open",
        "statusCategory": "open"
    },
    "source": "rtm",
    "conversationType": "TASK",
    "fields": [
        {
            "_id": "fd-0c85264-e40d-48b9-ab6a-896e09adxxxx",
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
            "_id": "fd-9d30e02-0147-4077-9daa-c480c8d1xxxx",
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
            "_id": "fd-7a49002-b492-413d-9c9d-bde3da27xxxx",
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
        "_id": "pr-cad98ea-d89c-489b-acc7-e86341e5xxxx",
        "name": "Medium",
        "color": "#16A34A",
        "score": 10
    },
    "refId": "TS000102",
    "assigneeType": "unassigned",
    "isCustTsk": false,
    "isActive": true,
    "attachments": [],
    "feedback": [],
    "createdBy": {
        "name": "hi hi",
        "_id": "u-9471a3c6-d950-5720-a812-fbc1ac9fxxxx",
        "profImage": "no-avatar"
    },
    "updatedBy": {
        "name": "hi hi",
        "_id": "u-9471a3c6-d950-5720-a812-fbc1ac9fxxxx",
        "profImage": "no-avatar"
    },
    "timestampValue": 1749032280681,
    "activityIds": [],
    "commentIds": [],
    "resolutionCmts": [],
    "isBreached": false,
    "queues": [],
    "channel": [],
    "createdAt": "2025-06-04T10:18:00.725Z",
    "updatedAt": "2025-06-04T10:18:00.725Z",
    "_id": "ti-73acd32-0123-4114-9891-00a950aaxxxx",
    "currAssignee": {},
    "ETA": ""
}
```