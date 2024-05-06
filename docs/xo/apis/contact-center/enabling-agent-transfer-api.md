# Enabling Agent Transfer API

This API is used to configure the Botkit Url, App, and events.

!!! Note

    To use this API, app needs the XO Platform API scope of BotKit.


## Syntax

**PUT `https://{{host}}/api/public/bot/{{BotID}}/sdkSubscription`**


## Query Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Environment URL, for example, <code>https://platform.kore.ai</code>
   </td>
  </tr>
  <tr>
   <td>BotID
   </td>
   <td>Bot ID or Stream ID. You can access it from the assistant’s General Settings page.
   </td>
  </tr>
</table>


### Body Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>connectorEnabled
   </td>
   <td>To enable connector (optional)
   </td>
  </tr>
  <tr>
   <td>PIIMaskingDisabledForAgentTransfer
   </td>
   <td>To disable PII masking (optional).
   </td>
  </tr>
  <tr>
   <td>sdkClientId
   </td>
   <td>Client Id to be associated with the SDK bot kit
   </td>
  </tr>
  <tr>
   <td>sdkHostUri
   </td>
   <td>SDK host URL
   </td>
  </tr>
  <tr>
   <td>subscribedFor
   </td>
   <td>array of events that need to be subscribed for
<p>
“<em>onAgentTransfer</em>” is mandatory here.
   </td>
  </tr>
</table>



## Authorization

Invoke the API with JWT in the header with the following syntax:

```
auth: {{JWT}}
```



## Response Content Type

```
application/json
```


## Sample Request

```
curl -X PUT \
   https://{{host}}/api/bot/{{BotID}}/sdkSubscription' \  
  -H 'auth: {{YOUR_JWT_ACCESS_TOKEN}}' \
  -d '{
       "connectorEnabled": false, // optional
       "PIIMaskingDisabledForAgentTransfer": false, //optional
       "sdkClientId": "cs-xxxxx-xxxx-xxxx-xxxx-xxxxx",
       "sdkHostUri": "https://example.ngrok.io",
       "subscribedFor": [             
	   "onMessage",
	   "onHook",
	   "onEvent",
	   "onAlert",
	   "onVariableUpdate",
           "onAgentTransfer"
	]}'
```



## Sample Response

```
<Bot info object>
```