# Get a List of Queues

To create a queue with the given `streamId`.

<table>
  <tr>
   <td>Method
   </td>
   <td>GET
   </td>
  </tr>
  <tr>
   <td>Endpoints
   </td>
   <td><code>https://{{host}}/agentassist/api/v1/public/{{streamId}}/queues</code>
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
   <td>Configuration
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
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>streamId
   </td>
   <td>You can access it from the General Settings page of the bot.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'http://www.smartassist.kore.ai/agentassist/api/v1/public/st-0aae83f7-49c7-58c8-921a-29d84d03xxxx/queues' \
--header 'accept: application/json' \
--header 'accountId: 64dc99337ac0b4d3d684xxxx' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTdlZjBkY2IwLTQ1ZTItNTY3YS1hYzMyLTkwNTA1NzdmMWIyYiJ9.7t145BjU0eZDdlnXYazmqkVT-8WpDIUgCquQM0xxxx' \
--header 'Content-Type: application/json' \
--data ''
```

## Sample Response

```
{
  "results": [
    {
      "isActive": true,
      "isDefault": true,
      "name": "Queue1",
      "isAdvancedRoutingEnabled": true,
      "description": "queue description",
      "orgId": "o-cff7fba7-ebf6-5b01-81a3-42bd24faxxxx",
      "createdBy": "u-f9e37b9c-66d5-5525-9df1-da0edbeaxxxx",
      "id": "qu-268eda9-ba47-4b03-ab29-d1909c38xxxx",
      "hoursOfOperation": {
        "id": "h-e8e22e03-fe32-5748-b830-02d161a3xxxx",
        "name": "US West Coast"
      },
      "agents": [
        {
          "userId": "u-e8e22e03-fe32-5748-b830-02d161a3xxxx",
          "name": "Charlie Abraham",
          "isPreferredAgent": false,
          "hoursOfOperation": {
            "hoursOfOperationId": "h-e8e22e03-fe32-5748-b830-02d161a3xxxx",
            "name": "US West Coast"
          },
          "skills": [
            {
              "id": "s-e1e22e03-fe32-5748-b830-02d161a3xxxx",
              "name": "SILVER"
            },
            {
              "id": "s-e1e22e03-fe32-5748-b830-02d161a3xxxx",
              "name": "GOLD"
            },
            {
              "id": "s-e1e22e03-fe32-5748-b830-02d161a3xxxx",
              "name": "CLOSE ACCOUNT"
            }
          ]
        },
        {
          "userId": "u-e8e22e03-fe32-5748-b830-02d161a3xxxx",
          "name": "Sandra Jones",
          "isPreferredAgent": true,
          "hoursOfOperation": {
            "hoursOfOperationId": "h-e8e22e03-fe32-5748-b830-02d161a3xxxx",
            "name": "US West Coast"
          },
          "skills": [
            {
              "id": "s-e1e22e03-fe32-5748-b830-02d161a3xxxx",
              "name": "SILVER"
            },
            {
              "id": "s-e1e22e03-fe32-5748-b830-02d161a3xxxx",
              "name": "GOLD"
            },
            {
              "id": "s-e1e22e03-fe32-5748-b830-02d161a3xxxx",
              "name": "UPDATE ACCOUNT"
            }
          ]
        }
      ],
      "skills": [
        {
          "id": "5ff233123124xxxx",
          "name": "SILVER",
          "isExpireEnabled": true,
          "expireTime": {
            "min": 10,
            "sec": 20
          },
          "skillGroupName": "Test",
          "skillGroupColor": "#070707"
        },
        {
          "id": "4df233123124xxxx",
          "name": "CLOSE ACCOUNT",
          "isExpireEnabled": false,
          "skillGroupName": "Test",
          "skillGroupColor": "#060606"
        }
      ],
      "agentGroups": [
        {
          "id": "ag-ec83505-5152-494d-8071-3b68513cxxxx",
          "name": "Default Queue"
        },
        {
          "id": "ag-ec83505-5152-494d-8071-3b68513cxxxx",
          "name": "Queue One"
        }
      ],
      "sourceAgentGroups": [
        "ag-953194c-10c9-4ec3-976e-c64071bbxxxx",
        "ag-ed2182b-b004-4aa2-a194-2d5534c6xxxx"
      ],
      "advancedSettings": {
        "preferredAgentTimeout": {
          "min": 10,
          "sec": 20
        },
        "isSkillMatchEnabled": true,
        "isAffinityMatchEnabled": true
      }
    }
  ],
  "page": 1,
  "limit": 10,
  "hasMore": true,
  "totalPages": 1,
  "totalResults": 1
}
```