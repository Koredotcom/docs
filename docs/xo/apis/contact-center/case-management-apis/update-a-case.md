# Update a Case API

This API allows you to update an existing case in the case management system.

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
   <td><code><a href="https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/updateCase/{{caseId}}">https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/updateCase/{{caseId}}</a></code>
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
  <tr>
   <td>caseId
   </td>
   <td>Unique identifier of the case to update. For example, ci-b4eaa6e-b3d9-4bb3-ae54-bb043b4axxxx
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
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/updateCase/{{caseId}}\
--header 'sec-ch-ua: "Google Chrome";v="123", "Not:A-Brand";v="8", "Chromium";v="123"' \
--header 'AccountId: {{accountId}}’ \
--header 'client-app: unified' \
--header 'X-Timezone-Offset: -330' \
--header 'sec-ch-ua-mobile: ?0' \
--header 'auth: {{jwt-code}}’ \
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
      "_id": "ci-1a634e1-3d97-427e-8b23-9b7b0a40xxxx",
      "caseTmp": "one",
      "name": "case one",
      "lname": "case one",
      "desc": "this is case one",
      "tags": [],
      "userInfo": {
        "_id": "u-d0db86ae-8a26-51dd-a6d6-5d531c39xxxx",
        "name": "",
        "emailId": "goutham.898@gmail.com"
      },
      "sessIds": [],
      "accountId": "{{accountId}}",
      "iId": "st-5393141c-723b-579d-8265-27dd9b7fxxxx",
      "orgId": "o-a55026c9-2abd-5503-b212-5fba600axxxx",
      "convIds": [],
      "status": {
        "_id": "sts-47a7230-2a07-4b84-879b-e792542cxxxx",
        "name": "Open",
        "lname": "open",
        "statusCategory": "open",
        "type": "system",
        "desc": "When a new case/task is created",
        "isEnabled": true,
        "isActive": true
      },
      "source": "emailInst-873db2e1-0b9a-58b0-87d6-7b26c3c8xxxx",
      "language": "en",
      "conversationType": "CASE",
      "fields": [
        {
          "_id": "fd-a97ae13-ac3e-4496-b251-db594d8bxxxx",
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
          "selectedValue": "case one"
        },
        {
          "_id": "fd-253e4de-ec52-4ec5-bcce-bc8157e9xxxx",
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
          "selectedValue": "this is case one"
        },
        {
          "_id": "fd-42bc982-d974-4d4a-851c-be952280xxxx",
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
          "selectedValue": "2025-05-29T04:03:00.000Z"
        }
      ],
      "participants": [],
      "queues": [],
      "priority": {
        "_id": "pr-9d1a24a-1385-45e9-818b-295eab5bxxxx",
        "name": "Medium",
        "lname": "medium",
        "type": "system",
        "desc": "Moderate urgency",
        "color": "#16A34A",
        "isEnabled": true,
        "isActive": true,
        "score": 10
      },
      "refId": "CS000100",
      "assigneeType": "unassigned",
      "isActive": true,
      "taskIds": [
        "ti-909aa90-0416-4407-aa5b-d60dd99axxxx"
      ],
      "attachments": [],
      "feedback": [],
      "createdBy": {
        "name": "pachu 23",
        "_id": "u-429cc190-ccc9-57af-9421-a1ca84a2xxxx",
        "profImage": "no-avatar"
      },
      "updatedBy": {
        "name": "pachu 23",
        "_id": "u-429cc190-ccc9-57af-9421-a1ca84a2xxxx",
        "profImage": "no-avatar"
      },
      "timestampValue": 1748318622557,
      "activityIds": [],
      "commentIds": [],
      "resolutionCmts": [],
      "dueDate": 1748491380000,
      "isBreached": false,
      "supportCustomTasks": true,
      "channel": [],
      "createdAt": "2025-05-27T04:03:42.617Z",
      "updatedAt": "2025-05-27T04:03:42.666Z",
      "currAssignee": {},
      "ETA": "2025-05-29T04:03:00.000Z"
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
   <td>caseTmp
   </td>
   <td>Unique case template identifier
 </a>
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>name
   </td>
   <td>Case name 
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>lname
   </td>
   <td>Lowercase version or slug of the name
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>desc
   </td>
   <td>Case description
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>tags
   </td>
   <td> Array of tag strings
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>userInfo
   </td>
   <td>Info about the user who created or owns the case
   </td>
   <td>object, optional
   </td>
  </tr>
  <tr>
   <td>sessIds
   </td>
   <td>Related session IDs
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>Account identifier
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>lid
   </td>
   <td>Stream or instance, or session ID
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>orgId
   </td>
   <td>Organization identifier
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>convIds
   </td>
   <td>Related conversation IDs
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>status
   </td>
   <td>Current case status
   </td>
   <td>object, optional
   </td>
  </tr>
  <tr>
   <td>language
   </td>
   <td>Case language code (for example, english)
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>source
   </td>
   <td>Source of the case (for example, rtm)
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>conversationType
   </td>
   <td>Type of conversation (expected case)
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>fields
   </td>
   <td>Custom or system field definitions and values
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>participants
   </td>
   <td>List of participant objects
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>queues
   </td>
   <td>List of queues assigned to the case
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>priority
   </td>
   <td>Priority metadata (level, color, and so on)
   </td>
   <td>object, optional
   </td>
  </tr>
  <tr>
   <td>refId
   </td>
   <td>Case reference ID
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>assigneeType
   </td>
   <td>Assignment type (unassigned, queues, and so on)
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>isActive
   </td>
   <td>Whether the case is active
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>taskIds
   </td>
   <td>Array of associated task IDs
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>attachments
   </td>
   <td>Array of attachments
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>feedback
   </td>
   <td>Feedback data
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>createdBy
   </td>
   <td>Creator information
   </td>
   <td>object, optional
   </td>
  </tr>
  <tr>
   <td>updatedBy
   </td>
   <td>Last updated by info
   </td>
   <td>object, optional
   </td>
  </tr>
  <tr>
   <td>timestampValue
   </td>
   <td>Timestamp (in ms) for tracking updates
   </td>
   <td>number, optional
   </td>
  </tr>
  <tr>
   <td>activityIds
   </td>
   <td>Related activity IDs
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>commentIds
   </td>
   <td>Related comment IDs
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>resolutionCmts
   </td>
   <td>Resolution comments
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>dueDate
   </td>
   <td>Case due date timestamp (in ms)
   </td>
   <td>number, optional
   </td>
  </tr>
  <tr>
   <td>isBreached
   </td>
   <td>SLA breach flag
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>supportCustomTasks
   </td>
   <td>Indicates support for custom tasks
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>channel
   </td>
   <td>Channels used (for example, chat, email)
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>createdAt
   </td>
   <td>Case creation timestamp
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>updatedAt
   </td>
   <td>Last updated timestamp
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>currAssignee
   </td>
   <td>Current assigned agent information
   </td>
   <td>object, optional
   </td>
  </tr>
  <tr>
   <td>ETA
   </td>
   <td>Estimated time of resolution (ISO date string)
   </td>
   <td>string, optional
   </td>
  </tr>
</table>

## Sample Response 	


```
{
    "_id": "ci-b4eaa6e-b3d9-4bb3-ae54-bb043b4axxxx",
    "caseTmp": "CaseTemplate1",
    "name": "This is demo case",
    "lname": "this is demo case",
    "tags": [],
    "userInfo": {
        "_id": "u-fd371c0a-3168-5a02-83dd-f4ba5597xxxx",
        "name": "shravan",
        "emailId": "uxoloacl@mailinator.com"
    },
    "sessIds": [],
    "accountId": "{{accountId}}",
    "iId": "st-084d3c5e-376a-559f-9987-a012bb2bxxxx",
    "orgId": "o-85e72576-06a6-5c0b-8844-25fa0cd6xxxx",
    "convIds": [],
    "status": {
        "_id": "sts-a3ed479-e945-4b59-a0c0-4369472axxxx",
        "name": "Open",
        "lname": "open",
        "statusCategory": "open",
        "type": "system",
        "desc": "When a new case/task is created",
        "isEnabled": true,
        "isActive": true
    },
    "source": "rtm",
    "language": "en",
    "conversationType": "CASE",
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
            "dataType": "textarea",
            "selectedValue": ""
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
        },
        {
            "_id": "fd-3046a12-4738-42ea-9ba6-2d190da0xxxx",
            "show": false,
            "displayName": "new field",
            "lname": "new field",
            "isEnabled": true,
            "isActive": true,
            "metaData": {
                "type": "dropdown",
                "displayName": "new field",
                "name": "nm",
                "description": "",
                "placeholder": "",
                "readOnly": false,
                "tooltipText": "please enter dropdown",
                "values": [],
                "value": "",
                "isMulti": true,
                "isVisible": true,
                "defaultErrorMsg": "",
                "validateOn": "blur"
            },
            "type": "custom",
            "required": false,
            "dataType": "dropdown"
        },
        {
            "_id": "fd-bbe4e9c-2c39-467d-9ed1-15392ca8xxxx",
            "show": false,
            "displayName": "field1",
            "lname": "field1",
            "isEnabled": true,
            "isActive": true,
            "metaData": {
                "type": "input",
                "displayName": "field1",
                "name": "field1",
                "description": "anb aghjbd",
                "placeholder": "",
                "readOnly": false,
                "tooltipText": "",
                "values": [],
                "value": "",
                "isMulti": false,
                "isVisible": true,
                "defaultErrorMsg": "",
                "validateOn": "blur",
                "validationRules": []
            },
            "type": "custom",
            "required": false,
            "dataType": "input"
        }
    ],
    "participants": [
        {
            "agentId": "u-04a27d8d-9ada-50e8-b582-0ea4df5axxxx",
            "aId": "a-e64c3ed-0883-4151-b247-55ea2392xxxx",
            "name": "Mike Brown18757",
            "pStatus": "ACTIVE",
            "assignedAt": "2025-06-04T08:17:35.666Z"
        }
    ],
    "queues": [
        {
            "_id": "qu-0d1624a-8682-415c-8bbd-16d2299cxxxx",
            "name": "Default Queue",
            "type": "ASSIGNED",
            "status": "ACTIVE",
            "startTime": "2025-06-04T08:17:35.417Z"
        }
    ],
    "priority": {
        "_id": "pr-cad98ea-d89c-489b-acc7-e86341e5xxxx",
        "name": "Medium",
        "lname": "medium",
        "type": "system",
        "desc": "Moderate urgency",
        "color": "#16A34A",
        "isEnabled": true,
        "isActive": true,
        "score": 10
    },
    "refId": "CS00xxxx",
    "assigneeType": "queues",
    "currQueue": {
        "_id": "qu-0d1624a-8682-415c-8bbd-16d2299cxxxx",
        "name": "Default Queue"
    },
    "tasks": [],
    "isActive": true,
    "taskIds": [],
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
    "timestampValue": 1749025055365,
    "activityIds": [],
    "commentIds": [],
    "resolutionCmts": [],
    "isBreached": false,
    "supportCustomTasks": true,
    "channel": [],
    "createdAt": "2025-06-04T08:17:35.419Z",
    "updatedAt": "2025-06-04T09:40:09.323Z",
    "currAssignee": {
        "aId": "a-e64c3ed-0883-4151-b247-55ea2392xxxx",
        "name": "Mike Brown18757",
        "agentId": "u-04a27d8d-9ada-50e8-b582-0ea4df5axxxx"
    },
    "new field": {
        "id": "fd-3046a12-4738-42ea-9ba6-2d190da0xxxx",
        "displayName": "new field",
        "lname": "new field",
        "selectedValue": null
    },
    "field1": {
        "id": "fd-bbe4e9c-2c39-467d-9ed1-15392ca8xxxx",
        "displayName": "field1",
        "lname": "field1",
        "selectedValue": null
    },
    "ETA": ""
}
```