# Agent Activity API

To get the agent status in real-time or changes stacked every 30 seconds.

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
   <td><code>https://{{host}}/agentassist/api/public/analytics/account/{{AccountID}}/agentactivity</code>
   </td>
  </tr>
  <tr>
   <td>Content-Type
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td>Authorization
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
See <a href="https://docs.kore.ai/smartassist/api/api-setup/#Generating_a_JWT_token">How to generate the JWT Token.</a>
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td>WFM Integration
   </td>
  </tr>
</table>

## Path Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
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
   <td>AccountId
   </td>
   <td>The unique Id associated with the account.
   </td>
   <td>string, required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://{{host}}/agentassist/api/public/analytics/account/636f5b36bcf8a8c7101exxxx/agentactivity?fromTimeStamp=2023-04-02T09%3A45%3A00Z&toTimeStamp=2023-04-06T10%3A00%3A00Z' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLWYyYjdmM2Y5LWE0Y2EtNWRhYS04ODRjLThlZDQxYjM2MWRjOSJ9.lYyONpEEmSYdQo7CIOpHWqz4pQE-PgAN2lLYz3-xxxx' \
--header 'Content-Type: application/json'
```

## Sample Response

```
{ 
"accountId":"63fb9a0f90425b644d3exxxx",
 	"AgentUpdates": [ 
{
 	"AgentId":"a-59bb17e-0cae-46b0-8d80-a8a8ac34xxxx", 
"EventTime":"10/20/2020 2:13:12", 
"Activity":"notready", 
"ReasonCode":"1"
        }
    ] 
}
```

## Body Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type</strong>
   </td>
  </tr>
  <tr>
   <td>accountId
   </td>
   <td>The unique Id associated with the account. For example, 63fb9a0f90425b644d3ec070.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>AgentUpdates
   </td>
   <td>List of objects representing updates to agent statuses.
   </td>
   <td>Array
   </td>
  </tr>
  <tr>
   <td>AgentUpdates.AgentId
   </td>
   <td>The unique Id of the agent. For example,  a-59bb17e-0cae-46b0-8d80-a8a8ac34e55c.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>AgentUpdates.EventTime
   </td>
   <td>TTimestamp of the event in the <code>MM/DD/YYYY HH:MM:SS</code> format.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>AgentUpdates.Activity
   </td>
   <td>Agent's activity status at the time of the event. For example, "notready".
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>AgentUpdates.ReasonCode
   </td>
   <td>Code representing the reason for the agent's status change. For example, “1”.
   </td>
   <td>String
   </td>
  </tr>
</table>