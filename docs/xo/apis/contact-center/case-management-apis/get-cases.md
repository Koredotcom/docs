# Get Cases API

The API enables you to retrieve case data from the case management system with filtering, sorting, and pagination options.

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
   <td><code><a href="https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/getCases">https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/getCases</a></code>
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
curl --location --request POST 'https://{{host}}/caseManagement/api/public/analytics/{{streamId}}/getCases' \
--header 'sec-ch-ua: "Google Chrome";v="123", "Not:A-Brand";v="8", "Chromium";v="123"' \
--header 'AccountId: {{accountId}}’ \
--header 'client-app: unified' \
--header 'X-Timezone-Offset: -330' \
--header 'sec-ch-ua-mobile: ?0' \
--header 'auth: {{jwt-code}}’ \
--header 'state: configured' \
--header 'Iid: st-d140086f-4d0a-59fa-9d28-b5fc23e9xxxx' \
--header 'Content-Type: application/json;charset=UTF-8' \
--header 'Accept: application/json, text/plain, */*' \
--header 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36' \
--header 'bot-language: en' \
--header 'app-language: en' \
--header 'Referer: http://localhost/builder/app/welcomeflows' \
--header 'sec-ch-ua-platform: "Linux"' \
--data '{
    "name": "Testing"
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
   <td>Search text to filter cases by their name or title
 </a>
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>`unresolved`
   </td>
   <td>Retrieves the cases that are still unresolved 
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>`unassigned`
   </td>
   <td>Retrieves the cases that are still unassigned
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>`mycase`
   </td>
   <td>Indicates whether the current case is assigned to the current user
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>`priority`
   </td>
   <td> List of priorities to filter the cases; for example, high, medium
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>`status`
   </td>
   <td>List of case statuses to filter by; for example, new, open
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
   <td>Start date of the case (ISO 8601 format)
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>`endDate`
   </td>
   <td>End date of the case (ISO 8601 format)
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
    }
  ],
  "page": 1,
  "limit": 50,
  "hasMore": false,
  "totalPages": 1,
  "totalResults": 1
}
```