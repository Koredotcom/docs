# Upload File API

To upload the _botdefinition_, _botconfig_, and _botfunction_ files (if any) and the **bot** icon to the local server. Additionally, the API fetches the _file ID_ to be used in [Import Bot API](../import-bot-as-new-bot).

!!! note
    You need to upload the files separately. You can upload a file by signing with any app created by the account administrator.

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
   <td><code>https://{{host}}/api/public/uploadfile</code>
   </td>
  </tr>
  <tr>
   <td><strong>Content Type</strong>
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><code>auth: {{JWT}}</code>
<p>
See <a href="../api-introduction/#generating-the-jwt-token">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>
<ul>

<li>Bot Builder: Not Applicable

<li>Admin Console: Not Applicable
</li>
</ul>
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
   <td><strong>MANDATE</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>The environment URL. For example, <code>https://bots.kore.ai</code>
   </td>
   <td>Required
   </td>
  </tr>
</table>


 


## Sample Request

```json
curl -X POST 'https://{{host}}/api/public/uploadfile' \
  -H 'auth: YOUR_JWT_ACCESS_TOKEN' \
  -H 'content-type: multipart/form-data' \
  -F file=@botDefinition.json \
  -F fileContext=bulkImport \
  -F fileExtension=json
```



## Body Parameters

The following parameters are **Required** and passed based on the _file id_.

For Bot Definition File ID


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td><strong>file</strong>
   </td>
   <td>Upload the Botdefinition.json file.
   </td>
  </tr>
  <tr>
   <td><strong>fileContext</strong>
   </td>
   <td>bulkImport
   </td>
  </tr>
  <tr>
   <td><strong>fileExtension</strong>
   </td>
   <td>.json
   </td>
  </tr>
</table>


For Bot Config File ID


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td><strong>file</strong>
   </td>
   <td>Upload the Botconfig.json file.
   </td>
  </tr>
  <tr>
   <td><strong>fileContext</strong>
   </td>
   <td>bulkImport
   </td>
  </tr>
  <tr>
   <td><strong>fileExtension</strong>
   </td>
   <td>.json
   </td>
  </tr>
</table>


For Bot Function File ID


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td><strong>file</strong>
   </td>
   <td>Upload the Bot function file.
   </td>
  </tr>
  <tr>
   <td><strong>fileContext</strong>
   </td>
   <td>bulkImport
   </td>
  </tr>
  <tr>
   <td><strong>fileExtension</strong>
   </td>
   <td>.js
   </td>
  </tr>
</table>


For Bot icon File ID


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td><strong>file</strong>
   </td>
   <td>Upload the Bot icon file.
   </td>
  </tr>
  <tr>
   <td><strong>fileContext</strong>
   </td>
   <td>bulkImport
   </td>
  </tr>
  <tr>
   <td><strong>fileExtension</strong>
   </td>
   <td>.json
   </td>
  </tr>
</table>


For ML Utterances File ID


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td><strong>file</strong>
   </td>
   <td>Upload the ML Utterance file (.json or .csv)
   </td>
  </tr>
  <tr>
   <td><strong>fileContext</strong>
   </td>
   <td>bulkImport
   </td>
  </tr>
  <tr>
   <td><strong>fileExtension</strong>
   </td>
   <td>.json or .csv
   </td>
  </tr>
</table>
