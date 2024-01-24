# Import data by accountId and orgId

To save/import data which is one of (skillsGroups, Queues, StandardResponses, Waiting Experience) by giving details with account Id and org Id.

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
   <td><code>http://{host}/agentassist/api/public/analytics/{instanceBotId}/</code>
<code>exportSmartAssistFunctionalities</code>
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
   <td>APi Scope
   </td>
   <td>SmartAssist Import and Export Feature
   </td>
  </tr>
</table>

## Sample Request

```
{
metaData:{
"userId": "u-ff75c048-bd2d-595c-8870-e087bdf13282",
       	"type": "standardResponses",
       	"accountId": "63f0d24c13564ad7308886ec",
       	"orgId": "o-36548691-459c-555c-a1cc-34a2517ebcb3",
       	"appLanguage": ""
}
Data:[{},{}], // output of the importSmartAssistFunctionalities API is kept here. 
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
   <td>Data
   </td>
   <td>The data that is to be imported.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>MetaData.orgId
   </td>
   <td>This field should have an orgId.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>MetaData.accountId
   </td>
   <td>This field should have an accountId.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>MetaData.type
   </td>
   <td>This field should have a type.
   </td>
   <td>String, Required
   </td>
  </tr>
  <tr>
   <td>MetaData.userId
   </td>
   <td>This field should have a userId.
   </td>
   <td>String, Required
   </td>
  </tr>
</table>

## Sample Response

The response will be a success message.