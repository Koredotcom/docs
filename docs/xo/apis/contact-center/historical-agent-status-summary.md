# Historical Agent Status Summary

To retrieve the self reported status (available, busy, away, etc.) and ACD status (interacting, idle) of every agent for each bucket in the given time interval.

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
   <td><code>https://{{host}}/agentassist/api/public/analytics/1.1/account/</code>
<code>{{accountId}}//userstatus</code>
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

## Query Parameters

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
   <td>Host
   </td>
   <td>The Environment URL. For example, https://bots.kore.ai
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>The accountId
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>limit
   </td>
   <td>Number of agents to be displayed in the response.
Default: 50
Example: 50
   </td>
   <td>Integer, Optional
   </td>
  </tr>
  <tr>
   <td>offset
   </td>
   <td>Number of response documents needed to be skipped.
Default: 0
   </td>
   <td>Integer, Optional
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request POST \
'https://{{host}}/agentassist/api/public/analytics/account/{{accountId}}//userstatus'
--header 'auth: {jwt-code}' \
--header 'Content-Type: application/json' \
--data-raw '{
"filter":{
 "agents":["jsmith@domain.com","username@domain.com"],
 "dateFilter":{
  "startDate":"2022-08-25",
  "endDate":"2022-08-26",
  "timeZoneOffSet": -330
  }
 },
 "granularity":PT30M
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
   <td>filter
   </td>
   <td>Object with agents and date filter as the fields. It contains the following details to filter the result set.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>agents
   </td>
   <td>The Email Ids of the agents.
   </td>
   <td>String, Optional
   </td>
  </tr>
  <tr>
   <td>dateFilter
   </td>
   <td>Object with start date, end date, and time zone offset as the fields. It contains the following details to filter the result set.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>startDate
   </td>
   <td>The start date from which the records need to be considered.
The date format  is :
<code>yyyy-mm-dd</code>
For example, <code>2022-08-25</code>
   </td>
   <td>Date, Required
   </td>
  </tr>
  <tr>
   <td>endDate
   </td>
   <td>The end date from which the records need to be considered.
The date format  is :
<code>yyyy-mm-dd</code>
For example, <code>2022-08-25</code>
   </td>
   <td>Date, Required
   </td>
  </tr>
  <tr>
   <td>timeZoneOffSet
   </td>
   <td>The time zone offset.
For example, <code>-330,630,-500</code>
   </td>
   <td>Number, Required
   </td>
  </tr>
  <tr>
   <td>granularity
   </td>
   <td>The  IS0-8601 format is the input.
For example, <code>PT15M, PT30M, PT1H, PT2H , PT4H, PT8H, PT12H, PT24H</code>
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Response

```
{
    "hasMore": true,
    "limit": 50,
    "offset": 0,
    "data": [
        {
            "userId": "u-0572f8c7-970b-5c78-ab20-e9c1a10f2ad4",
            "firstName": "Nick",
            "lastName": "J",
            "email": "nick.j@domain.com",
            "customId": "101010",
            "timeInterval": []
        },
        {
            "userId": "u-05ca6ec1-05d3-5915-b874-29f24aa45bdf",
            "firstName": "Charan",
            "lastName": "0929",
            "email": "charan951517@domain.com",
            "customId": "",
            "timeInterval": []
        },
        {
            "userId": "u-0dbab89e-b373-5dd2-8a9b-cf2d8e54dddf",
            "firstName": "John",
            "lastName": "Smith",
            "email": "john.smith@domain.com",
            "customId": "",
            "timeInterval": []
        },
        {
            "userId": "u-22948759-ced0-5cca-bbd3-abd91946e328",
            "firstName": "test agent",
            "lastName": "01",
            "email": "testagent@domain.com",
            "customId": "12",
            "timeInterval": []
        },
        {
            "userId": "u-22ebdbd2-64b5-5ba9-9285-754276ecca27",
            "firstName": "John",
            "lastName": "Doe",
            "email": "john.doe@domain.com",
            "customId": "",
            "timeInterval": []
        },
        {
            "userId": "u-29f05090-1440-5c80-8096-7eb47c07a2b5",
            "firstName": "Jane",
            "lastName": "Doe",
            "email": "jane.doe@domain.com",
            "customId": "065582",
            "timeInterval": []
        },
        {
            "userId": "u-2b991240-7f3e-53a1-a09c-aba82a4cac1d",
            "firstName": "Joce",
            "lastName": "Tay",
            "email": "joce.tay@domain.com",
            "customId": "505951",
            "timeInterval": [
                {
                    "startTime": "2022-12-12T00:00:00Z",
                    "endTime": "2022-12-12T00:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T00:30:00Z",
                    "endTime": "2022-12-12T01:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T01:00:00Z",
                    "endTime": "2022-12-12T01:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T01:30:00Z",
                    "endTime": "2022-12-12T02:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T02:00:00Z",
                    "endTime": "2022-12-12T02:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T02:30:00Z",
                    "endTime": "2022-12-12T03:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T03:00:00Z",
                    "endTime": "2022-12-12T03:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T03:30:00Z",
                    "endTime": "2022-12-12T04:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T04:00:00Z",
                    "endTime": "2022-12-12T04:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T04:30:00Z",
                    "endTime": "2022-12-12T05:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T05:00:00Z",
                    "endTime": "2022-12-12T05:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T05:30:00Z",
                    "endTime": "2022-12-12T06:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T06:00:00Z",
                    "endTime": "2022-12-12T06:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T06:30:00Z",
                    "endTime": "2022-12-12T07:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T07:00:00Z",
                    "endTime": "2022-12-12T07:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T07:30:00Z",
                    "endTime": "2022-12-12T08:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T08:00:00Z",
                    "endTime": "2022-12-12T08:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T08:30:00Z",
                    "endTime": "2022-12-12T09:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T09:00:00Z",
                    "endTime": "2022-12-12T09:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T09:30:00Z",
                    "endTime": "2022-12-12T10:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T10:00:00Z",
                    "endTime": "2022-12-12T10:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T10:30:00Z",
                    "endTime": "2022-12-12T11:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T11:00:00Z",
                    "endTime": "2022-12-12T11:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T11:30:00Z",
                    "endTime": "2022-12-12T12:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T12:00:00Z",
                    "endTime": "2022-12-12T12:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T12:30:00Z",
                    "endTime": "2022-12-12T13:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T13:00:00Z",
                    "endTime": "2022-12-12T13:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T13:30:00Z",
                    "endTime": "2022-12-12T14:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T14:00:00Z",
                    "endTime": "2022-12-12T14:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T14:30:00Z",
                    "endTime": "2022-12-12T15:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T15:00:00Z",
                    "endTime": "2022-12-12T15:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-12T15:30:00Z",
                    "endTime": "2022-12-12T16:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "919 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "565 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "354 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T16:00:00Z",
                    "endTime": "2022-12-12T16:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T16:30:00Z",
                    "endTime": "2022-12-12T17:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "71 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "1729 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T17:00:00Z",
                    "endTime": "2022-12-12T17:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "821 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "979 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T17:30:00Z",
                    "endTime": "2022-12-12T18:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "0 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T18:00:00Z",
                    "endTime": "2022-12-12T18:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "1561 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "239 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T18:30:00Z",
                    "endTime": "2022-12-12T19:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "628 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "94 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "534 sec"
                            }
                        },
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1172 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1172 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T19:00:00Z",
                    "endTime": "2022-12-12T19:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "887 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "887 sec"
                            }
                        },
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "913 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "350 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "563 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T19:30:00Z",
                    "endTime": "2022-12-12T20:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "1401 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "399 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T20:00:00Z",
                    "endTime": "2022-12-12T20:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "0 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T20:30:00Z",
                    "endTime": "2022-12-12T21:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "0 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T21:00:00Z",
                    "endTime": "2022-12-12T21:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "0 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T21:30:00Z",
                    "endTime": "2022-12-12T22:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "0 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T22:00:00Z",
                    "endTime": "2022-12-12T22:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "0 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T22:30:00Z",
                    "endTime": "2022-12-12T23:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "87 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "87 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1713 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1713 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T23:00:00Z",
                    "endTime": "2022-12-12T23:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-12T23:30:00Z",
                    "endTime": "2022-12-13T00:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T00:00:00Z",
                    "endTime": "2022-12-13T00:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T00:30:00Z",
                    "endTime": "2022-12-13T01:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T01:00:00Z",
                    "endTime": "2022-12-13T01:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T01:30:00Z",
                    "endTime": "2022-12-13T02:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T02:00:00Z",
                    "endTime": "2022-12-13T02:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T02:30:00Z",
                    "endTime": "2022-12-13T03:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T03:00:00Z",
                    "endTime": "2022-12-13T03:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T03:30:00Z",
                    "endTime": "2022-12-13T04:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T04:00:00Z",
                    "endTime": "2022-12-13T04:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T04:30:00Z",
                    "endTime": "2022-12-13T05:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T05:00:00Z",
                    "endTime": "2022-12-13T05:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T05:30:00Z",
                    "endTime": "2022-12-13T06:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T06:00:00Z",
                    "endTime": "2022-12-13T06:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T06:30:00Z",
                    "endTime": "2022-12-13T07:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T07:00:00Z",
                    "endTime": "2022-12-13T07:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T07:30:00Z",
                    "endTime": "2022-12-13T08:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T08:00:00Z",
                    "endTime": "2022-12-13T08:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T08:30:00Z",
                    "endTime": "2022-12-13T09:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T09:00:00Z",
                    "endTime": "2022-12-13T09:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T09:30:00Z",
                    "endTime": "2022-12-13T10:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T10:00:00Z",
                    "endTime": "2022-12-13T10:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T10:30:00Z",
                    "endTime": "2022-12-13T11:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T11:00:00Z",
                    "endTime": "2022-12-13T11:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T11:30:00Z",
                    "endTime": "2022-12-13T12:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T12:00:00Z",
                    "endTime": "2022-12-13T12:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T12:30:00Z",
                    "endTime": "2022-12-13T13:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T13:00:00Z",
                    "endTime": "2022-12-13T13:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T13:30:00Z",
                    "endTime": "2022-12-13T14:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T14:00:00Z",
                    "endTime": "2022-12-13T14:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T14:30:00Z",
                    "endTime": "2022-12-13T15:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T15:00:00Z",
                    "endTime": "2022-12-13T15:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T15:30:00Z",
                    "endTime": "2022-12-13T16:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T16:00:00Z",
                    "endTime": "2022-12-13T16:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T16:30:00Z",
                    "endTime": "2022-12-13T17:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T17:00:00Z",
                    "endTime": "2022-12-13T17:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1800 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T17:30:00Z",
                    "endTime": "2022-12-13T18:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Away",
                            "stats": {
                                "sum": "1762 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Away:Idle",
                            "stats": {
                                "sum": "0 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AWAY:Interacting",
                            "stats": {
                                "sum": "1762 sec"
                            }
                        },
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "38 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "38 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "0 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T18:00:00Z",
                    "endTime": "2022-12-13T18:30:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                           "value": "Available",
                            "stats": {
                                "sum": "800 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "764 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "37 sec"
                            }
                        }
                    ]
                },
                {
                    "startTime": "2022-12-13T18:30:00Z",
                    "endTime": "2022-12-13T19:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-13T19:00:00Z",
                    "endTime": "2022-12-13T19:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-13T19:30:00Z",
                    "endTime": "2022-12-13T20:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-13T20:00:00Z",
                    "endTime": "2022-12-13T20:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-13T20:30:00Z",
                    "endTime": "2022-12-13T21:00:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-13T21:00:00Z",
                    "endTime": "2022-12-13T21:30:00Z",
                    "status": []
                },
                {
                    "startTime": "2022-12-13T21:30:00Z",
                    "endTime": "2022-12-13T22:00:00Z",
                    "status": [
                        {
                            "metric": "AgentStatus",
                            "value": "Available",
                            "stats": {
                                "sum": "864 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "Available:Idle",
                            "stats": {
                                "sum": "864 sec"
                            }
                        },
                        {
                            "metric": "AgentState",
                            "value": "AVAILABLE:Interacting",
                            "stats": {
                                "sum": "0 sec"
                            }
                        }
                    ]
                },              
```