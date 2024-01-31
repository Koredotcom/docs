# Export data by accountId and orgId

To get exported data which is one of (skillsGroups, Queues, StandardResponses, Waiting Experience) by giving details with account Id and orgId.

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
   <td><code>http://{host}/agentassist/api/public/analytics/{instanceBotId}/</code>
<code>importSmartAssistFunctionalities?accountId=&orgId=&type=</code>
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
See <a href="https://docs.kore.ai/smartassist/api/api-setup/">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td>API Scope
   </td>
   <td> SmartAssist Import and Export Feature
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
   <td>host
   </td>
   <td>Environment URL, for example, https://smartassist.kore.ai
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>AccountId
   </td>
   <td>The Account Id.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>OrgId
   </td>
   <td>The Organization Id.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>The BotId or StreamId. You can access it from the General Settings page of the bot.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Request

```
curl --location --request GET 'https://uat-smartassist.kore.ai/agentassist/api/v1/public/analytics/st-ef2ab28a-0d16-5
cbf-bf31-a395bdb19d69/importSmartAssistFunctionalities?accountId=6297011e24f30b5ab18e6e4c&orgId=o-18f401c2-f1a6-5a97-
8b5c-4511863cec93&type=skillGroups' 
--header 'Accept: application/json, text/plain, */*' 
--header 'Accept-Language: en-GB,en-US;q=0.9,en;q=0.8' 
--header 'AccountId: 63e0f303560867d783133a8f' 
--header 'Authorization: bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiYXBwSWQiOiJjcy05N2IwNDZlMy
1jYzA3LTVhMDEtYmYwNS1jYmZhNzAzMmFlY2IifQ.xv4hGyyqH9JAN8iPIMaxNgOqgr_2gfQGohu3aTCGGjI' 
--header 'Cache-Control: no-cache' 
--header 'Connection: keep-alive' 
--header 'Content-Type: application/json;charset=UTF-8' 
--header 'Pragma: no-cache' 
--header 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' 
--header 'X-Timezone: Asia/Calcutta' 
--header 'X-Timezone-Offset: -330' 
--header 'app-language: en' 
--header 'bot-language: en' 
--header 'sec-ch-ua-platform: "Linux"' 
--header 'smartassist: true' 
--header 'state: configured'
--header 'auth: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBJZCI6ImNzLTc4OGQ0OWEwLTQ3ZjUtNTdhYS1iZmVlLWFjMWI1MWVhMWFkOCJ9.
KcWr4dd_hZwCYl0D6jciR1IETqzZsThTNBEmams3MWY'
--header 'accountId: 63f48134cf47814d774bc316'
```

## Sample Response

The response will be an array of objects.
[{},{}]
