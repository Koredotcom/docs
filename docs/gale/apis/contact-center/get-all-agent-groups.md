# Get All Agent Groups

To retrieve the list of agent groups with the given Stream Id.

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
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/agent-groups</code>
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
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>SmartAssist Analytics
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
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td> String, Required
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>BotId or StreamId. You can access it from the General Settings page of the bot.
   </td>
   <td> String, Required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request GET \
     'https://{{host}}/agentassist/api/v1/public/{{streamId}}/agent-groups'
      --header 'auth: {jwt-code}' \
      --header 'Content-Type: application/json' \
```

## Sample Response

```
{
    "results": [
        {
            "isDefault": true,
            "isUnassigned": false,
            "status": "ACTIVE",
            "name": "Default Group",
            "description": "Default Group (Auto Created).",
            "iId": "st-3bf09bef-f979-5489-b337-f465bd5dxxxx",
            "createdBy": "u-40d2bdc2-822a-51a2-bdcd-95bdf483xxxx",
            "orgId": "o-0f5df379-56f6-5d5f-beff-73d9dbeexxxx",
            "lname": "default group",
            "createdByAId": null,
            "createdAt": "2023-07-31T07:27:35.219Z",
            "updatedAt": "2023-07-31T07:27:35.219Z",
            "id": "ag-3921798-30ce-41b4-9ed4-3ad6725dxxxx",
            "totalAgents": 0,
            "managers": []
        }
    ],
    "skip": 0,
    "limit": 10,
    "hasMore": false,
    "totalPages": 0,
    "totalResults": 1
}
```