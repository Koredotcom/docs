# Create a Queue

To create a queue with the given `streamId`.

<table>
  <tr>
   <td>Method
   </td>
   <td>POST
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
{
 "isActive": true,
 "isDefault": false,
 "name": "Queue2",
 "isAdvancedRoutingEnabled": true,
 "description": "queue2",
 "orgId": "o-cd624de7-b90d-5ebc-8dab-54605d65xxxx",
 "hoursOfOperation": {
   "id": "64dc9966fcb1cad3c010xxxx",
   "name": "Default Hours of Operation(Auto Created)"
 },
 "agents": [
   {
     "userId": "u-950c89ba-0526-5876-8394-af02bb34xxxx",
     "isPreferredAgent": true,
     "aId":"a-1c9955e-b65a-4217-b1ae-345c3104xxxx",
     "name":"kjhdkjhsddjk kjadksddjk",
     "id":"a-1c9955e-b65a-4217-b1ae-345c3104xxxx"
   }
 ],
 "skills": [
   {
     "id": "64dc9967fcb1cad3c016xxxx",
     "name": "Default Skill",
     "isExpireEnabled": true,
     "expireTime": {
       "min": 10,
       "sec": 20
     }
   }
 ],
 "agentGroups": [
   "ag-410b641-16ae-4c02-9355-8a47c2b9xxxx"
 ],
 "advancedSettings": {
   "preferredAgentTimeout": {
     "min": 10,
     "sec": 20
   },
   "isSkillMatchEnabled": true,
   "isAffinityMatchEnabled": true
 },
 "maxTimeout": {
     "min":10,
     "sec":0
 }
}
```

## Sample Response

```
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
```

## Body Parameters

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
   <td>name
   </td>
   <td>Name of the queue.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>description
   </td>
   <td>Brief description of the queue.
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>isAdvancedRoutingEnabled
   </td>
   <td>Boolean value to know if advanced routing is enabled or not. For example: True.
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>hoursOfOperation {Id}
   </td>
   <td>Hours of operation ID. For example: 6335486202826111eb3c3759
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>hoursOfOperation {name}
   </td>
   <td>Hours of operation Name. For example: Default hours of operation.
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>agents {userId}
   </td>
   <td>You can get this from GET /agents api.
For example: u-ca2cc57f-5c2b-5437-bb07-fe9020d88050
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>agents {aId}
   </td>
   <td>You can get this from GET /agents api.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>agents {name}
   </td>
   <td>Name of the agent.
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>agents {isPreferredAgent}
   </td>
   <td>Is the agent a preferred agent or not.
   </td>
   <td>boolean, required
   </td>
  </tr>
  <tr>
   <td>skills {Id}
   </td>
   <td>You can get this from GET /skills api.
   </td>
   <td>string, required
   </td>
  </tr>
  <tr>
   <td>skills {name}
   </td>
   <td>Name of the Skill.
   </td>
   <td>string, optional
   </td>
  </tr>
  <tr>
   <td>skills {isExpireEnabled}
   </td>
   <td>The skill should expire or not.
   </td>
   <td>boolean, required
   </td>
  </tr>
  <tr>
   <td>skills{expireTime}
   </td>
   <td>It is required if isExpireEnabled is true. For example: expireTime: {min:5, sec:0}
   </td>
   <td>object, optional
   </td>
  </tr>
  <tr>
   <td>agentGroups
   </td>
   <td>An array of objects containing agentGroupIds. For example: [“ag-410b641-16ae-4c02-9355-8a47c2b9a296″]
   </td>
   <td>array, optional
   </td>
  </tr>
  <tr>
   <td>advancedSettings {preferredAgentTimeout}
   </td>
   <td>If the preferred agent is selected, then this is required. For example: Example: preferredAgentTimeout: {min:10}
   </td>
   <td>object, optional
   </td>
  </tr>
  <tr>
   <td>advancedSettings {isSkillMatchEnabled}
   </td>
   <td>If skill match is enabled.
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>advancedSettings {isAffinityMatchEnabled}
   </td>
   <td>If agent affinity match is enabled.
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>enableTransferRules
   </td>
   <td>To enable the transfer rules.
   </td>
   <td>boolean, optional
   </td>
  </tr>
  <tr>
   <td>transferQueues
   </td>
   <td>An array containing queueIds. For Example: [“qu-70d0451-bb2a-4cc9-9bdb-ec5c1ccc464c”]
   </td>
   <td>array, optional
   </td>
  </tr>
</table>