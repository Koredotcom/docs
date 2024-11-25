# Queues API

To get the Queues/Skills associated with an `accountId`.

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
   <td><code>https://{{host}}/agentassist/api/public/analytics/account/{{Accountid}}<a href="http://localhost/agentassist/api/public/analytics/account/63fb9a0f90425b644d3eb069/queues">/queues</a></code>
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
curl --location 'https://{{host}}/agentassist/api/public/analytics/account/636f5b36bcf8a8c7101exxxx/queues' \
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLWYyYjdmM2Y5LWE0Y2EtNWRhYS04ODRjLThlZDQxYjM2MWRjOSJ9.lYyONpEEmSYdQo7CIOpHWqz4pQE-PgAN2lLYz3-xxxx' \
--header 'Content-Type: application/json'
```

## Sample Response

```
 [
	{
		accountId: "63fb9a0f90425b644d3exxxx",
		"collectionPointId":"qu-59bb17e-0cae-46b0-8d80-a8a8ac34xxxx",
		"Description": "Default Queue"
	}
]
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
   <td>collectionPointId
   </td>
   <td>Unique identifier for the collection point (queue). For example, qu-59bb17e-0cae-46b0-8d80-a8a8ac34e55c.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td>Description
   </td>
   <td>Description of the collection point or queue (for example, "Default Queue"). For example, Default Queue.
   </td>
   <td>String
   </td>
  </tr>
</table>