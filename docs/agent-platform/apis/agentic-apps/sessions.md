# Sessions API

Endpoints for managing conversational sessions with your Agentic App.


## Create a Session

Establishes a new conversation session for a specific user with the Agentic App. 

*Note: This is the starting point for any new interaction.*


<table>
  <tr>
   <td>Method
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td>/apps/&lt;AppID>/environments/&lt;EnvName>/sessions
   </td>
  </tr>
  <tr>
   <td>Content-type 
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td>Authorization Header
   </td>
   <td>x-api-key: &lt;API-KEY>
   </td>
  </tr>
</table>



### Path Parameters


<table>
  <tr>
   <td>Fields
   </td>
   <td>Description
   </td>
  </tr>
  <tr>
   <td>AppID
   </td>
   <td>Unique Identifier for the app. 
   </td>
  </tr>
  <tr>
   <td>EnvName
   </td>
   <td>Name of the environment to be used for the agent. 
   </td>
  </tr>
</table>



### Request Parameters


<table>
  <tr>
   <td>Fields
   </td>
   <td>Description
   </td>
  </tr>
  <tr>
   <td>sessionIdentity
   </td>
   <td>This is an array of objects with a <code>type</code> and <code>value</code> used to identify or create sessions and manage user session mappings. The three supported identifier types are: The objects can be of three types:
<ol>

<li>userReference (highest priority)</li>

<li>sessionReference</li>

<li>sessionIdentity(lowest priority)</li>

Refer to [this](overview.md) for a detailed description.
</ol>
   </td>
  </tr>
</table>



#### Sample Request


```
{
  "sessionIdentity": [
    {
      "type": "userReference",  
      "value": "usr_1a2b3c4d5e"  //Your UserReference Value
    }
  ]
}
```



### Response

Returns the details of the newly created session, which are essential for managing and continuing the conversation.


#### Sample Response 


```
{
  "session": {
    "sessionId": "s-a302e3c6-308b-4a0a-9a5f-a01a5846fae1",
    "sessionReference": "Se_skwos333",
    "userReference": "usr_1a2b3c4d5e",
    "status": "idle",
    "userId": "u-4c2221e1-46c2-53c5-9876-fd6699052c15",
    "createdAt": "2025-02-17T19:07:00.070Z"
  }
}
```



#### Response Parameters


<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><strong>sessionId</strong>
   </td>
   <td>A unique identifier for the session. 
   </td>
  </tr>
  <tr>
   <td><strong>status</strong>
   </td>
   <td>Indicates the current state of the session. Possible values: <code>idle</code>, <code>busy</code>, <code>error</code>.
   </td>
  </tr>
  <tr>
   <td><strong>sessionReference</strong>
   </td>
   <td>A unique reference string associated with the session for easier cross-request tracking.
   </td>
  </tr>
  <tr>
   <td><strong>userReference</strong>
   </td>
   <td>Unique reference string for the user associated with the session.
   </td>
  </tr>
  <tr>
   <td><strong>userId</strong>
   </td>
   <td>Internal system-generated identifier for the user.
   </td>
  </tr>
  <tr>
   <td><strong>createdAt</strong>
   </td>
   <td>Timestamp indicating when the session was created.
   </td>
  </tr>
</table>

**Note:** When a new session is initiated, and the application requires permissions for OAuth authorization from the user, the API response includes a special event of type `IDP_Redirect`.

This event provides a URL that the user must visit to complete the authorization process. If the required authorization is not completed, the associated tools will return an error upon invocation.


```json
{
  "messageId": "msg-260f4d3c-5b8c-4056-af97-11317fc28c8d",
  "events": [
    {
      "type": "IDP_Redirect",
      "content": {
        "auth_profiles": [
          {
            "url": "https://agent-platform.kore.ai/r/396c63515671634648357955",
            "idpName": "Google",
            "isAuthorized": false,
            "sso_type": "oauth2"
          }
        ]
      }
    }
  ],
  "sessionInfo": {
    "status": "idle",
    "userReference": "s-b8987503-696b-4111-a006-49c0cbcf0fb9",
    "sessionReference": "s-b8987503-696b-4111-a006-49c0cbcf0fb9",
    "userId": "u-f5e5e830-70d4-53d6-8034-86bfa765c04a",
    "sessionId": "s-54f40bda-1505-4f9e-b38e-88d39ea36d58",
    "runId": "r-41ad20e0-6295-4f0e-9b04-e51875356107",
    "appId": "aa-c31cccce-d0bf-4db5-a177-7ff45941c2d8",
    "attachments": []
  }
}
```



## List Sessions

Lists sessions for the selected app and environment. Supports optional filters such as session ID, user reference, and date range.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td>/apps/&lt;AppID>/environments/&lt;EnvName>/sessions/list
   </td>
  </tr>
  <tr>
   <td><strong>Content-type </strong>
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td><strong>Authorization Header</strong>
   </td>
   <td>x-api-key: &lt;API-KEY>
   </td>
  </tr>
</table>



### Path Parameters


<table>
  <tr>
   <td><strong>Fields</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>AppID
   </td>
   <td>Unique Identifier for the app. 
   </td>
  </tr>
  <tr>
   <td>EnvName
   </td>
   <td>The name of the environment in which the application will run.
   </td>
  </tr>
</table>



### Request Parameters


<table>
  <tr>
   <td><strong>Fields</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td>Mandatory
   </td>
  </tr>
  <tr>
   <td>sessionId
   </td>
   <td>To filter sessions by a specific session ID, provide the unique session ID. 
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>userReference
   </td>
   <td>To Filter sessions by user reference, provide the userReference string. 
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>date
   </td>
   <td>To filter the sessions by date, provide the start and end dates. 
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>filters
   </td>
   <td>This field is for future implementation
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>offset
   </td>
   <td>Number of records to skip (for pagination).
   </td>
   <td>No
   </td>
  </tr>
</table>



#### Sample Request


```
{
  "sessionId": "string",               
  "userReference": "string",           
  "date": {                           
    "start": "string",
    "end": "string"
  },
  "filters": [                        // For future use
    {
      "key": "string",
      "value": "string",
      "operator": "string"
    }
  ],
  "offset": "number"
}
```



### Response Parameters


<table>
  <tr>
   <td><strong>Fields</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>sessions
   </td>
   <td>Details of the sessions
   </td>
  </tr>
  <tr>
   <td>pagination
   </td>
   <td>Details related to pagination include the total number of matching sessions, the Index of the last item returned in this response, and whether more sessions are available beyond the current result.
   </td>
  </tr>
</table>



#### Sample Response


```
{
  "sessions": [
    {
      "sessionId": "string",
      "sessionReference": "string",
      "status": "string",
      "userId": "string",
      "createdAt": "string"  // ISO timestamp
    }
  ],
  "pagination": {
    "totalCount": "number",
    "endIndex": "number",
    "hasMore": "boolean"
  }
}
```
Get Session
Fetches the details of a given session. You must provide either a sessionId or a sessionReference to uniquely identify the session.

Method
GET
Endpoint
/apps/<AppID>/environments/<EnvName>/sessions?sessionId={sessionId}

/apps/<AppID>/environments/<EnvName>/sessions?sessionReference={sessionReference}
Content-type 
application/json
Authorization Header
x-api-key: <API-KEY>

Path Parameters
Fields
Description
AppID
Unique Identifier for the app. 
EnvName
The name of the environment in which the application will run.


Query Parameters
Fields
Description
Required
sessionId
Unique Identifier for the session. 
Optional(One of two is required )
sessionReference
The reference associated with the session 
Optional (one of the two is required)


Note: Either sessionId or sessionReference must be provided to identify the session. 
Sample Response
{ "session": 
  {
    "sessionId": "string",
    "sessionReference": "string",
    "status": "string",
    "userId": "string",
    "appId": "string",
    "createdAt": "string",
    "events": "string[]",
    "attachments": [
      {
        "fileId": "string",
        "filename": "string",
        "mimetype": "string",
        "isActive": "string",
      },
    ]
  }
}

## Get Session

Fetches the details of a given session. You must provide either a *sessionId* or a *sessionReference* to uniquely identify the session.


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
   <td>/apps/<AppID>/environments/<EnvName>/sessions?sessionId={sessionId}
<p>
/apps/<AppID>/environments/<EnvName>/sessions?sessionReference={sessionReference}
   </td>
  </tr>
  <tr>
   <td>Content-type 
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td>Authorization Header
   </td>
   <td>x-api-key: <API-KEY>
   </td>
  </tr>
</table>



### Path Parameters


<table>
  <tr>
   <td>Fields
   </td>
   <td>Description
   </td>
  </tr>
  <tr>
   <td>AppID
   </td>
   <td>Unique Identifier for the app. 
   </td>
  </tr>
  <tr>
   <td>EnvName
   </td>
   <td>The name of the environment in which the application will run.
   </td>
  </tr>
</table>



### Query Parameters


<table>
  <tr>
   <td>Fields
   </td>
   <td>Description
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>sessionId
   </td>
   <td>Unique Identifier for the session. 
   </td>
   <td>Optional(One of two is required )
   </td>
  </tr>
  <tr>
   <td>sessionReference
   </td>
   <td>The reference associated with the session 
   </td>
   <td>Optional (one of the two is required)
   </td>
  </tr>
</table>


Note: Either *sessionId* or *sessionReference* must be provided to identify the session. 


### Sample Response


```json
{ "session": 
  {
    "sessionId": "string",
    "sessionReference": "string",
    "status": "string",
    "userId": "string",
    "appId": "string",
    "createdAt": "string",
    "events": "string[]",
    "attachments": [
      {
        "fileId": "string",
        "filename": "string",
        "mimetype": "string",
        "isActive": "string",
      },
    ]
  }
}
```




## Terminate Session

Terminates a given session.


<table>
  <tr>
   <td>Method
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td>Endpoint
   </td>
   <td>/apps/&lt;AppID>/environments/&lt;EnvName>/sessions/terminate
   </td>
  </tr>
  <tr>
   <td>Content-type 
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td>Authorization Header
   </td>
   <td>x-api-key: &lt;API-KEY>
   </td>
  </tr>
</table>



### Path Parameters


<table>
  <tr>
   <td>Fields
   </td>
   <td>Description
   </td>
  </tr>
  <tr>
   <td>AppID
   </td>
   <td>Unique Identifier for the app. 
   </td>
  </tr>
  <tr>
   <td>EnvName
   </td>
   <td>The name of the environment in which the application will run.
   </td>
  </tr>
</table>



### Request Parameters


<table>
  <tr>
   <td>Fields
   </td>
   <td>Description
   </td>
   <td>Mandatory
   </td>
  </tr>
  <tr>
   <td>sessionIdentity
   </td>
   <td>Provide the sessionReference or sessionId to uniquely identify the session to be terminated.
   </td>
   <td>Yes
   </td>
  </tr>
</table>



#### Sample Request


```json
{
   "sessionIdentity": [
    {
      "type": "string",  // ["sessionReference", "sessionId"]
      "value": "s-1232123"
    }
  ]
}
```



#### Sample Response

```json
{
  "status": "terminated",
  "userReference": "string",
  "sessionReference": "string",
  "userId": "string",
  "sessionId": "string",
  "appId": "string",
  "attachments": [
    {
      "fileId": "string",
      "fileName": "string",
      "fileType": "string",
    },
  ]
}
```