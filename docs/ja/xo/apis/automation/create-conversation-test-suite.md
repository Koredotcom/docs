# Create (Import) a Test Suite API

To create a conversation test suite by importing the test cases from a given file. This API returns **_dsId_**, the ID to check the import status.

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
   <td><code>https://{{host}}/api/public/stream/:streamId/conversation/testsuite/import</code>
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

<li>Bot Builder: Conversation Tests Management

<li>Admin Console: Conversation Tests Management
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
   <td><strong>host</strong>
   </td>
   <td>Environment URL. For example,<code>https://bots.kore.ai</code>
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>StreamID</strong>
   </td>
   <td>The  <em>Stream ID</em> can be accessed under <strong>General Settings</strong> on the Bot Builder.
   </td>
   <td>Required
   </td>
  </tr>
</table>



## Sample Request


```json
curl --location --request POST \     
'https://{{host}}/api/public/stream/:streamId/conversation/testsuite/import' \
      --header 'auth: {YOUR_JWT_ACCESS_TOKEN}' \
      --header 'bot-language: {language-code}' \
      --header 'Content-Type: application/json' \
      --data-raw '{
          "fileName": "64dxxxxxxxxxxxxxxxxxxxxc", field(fileId)
          "name": "newtestcase", 
          "tags" : [],
          "description" : ""
}'
```
## Body Parameters

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
   <td><strong>fileName</strong>
   </td>
   <td>File containing the conversation test suite details.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>name</strong>
   </td>
   <td>TestSuite Name
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>tags</strong>
   </td>
   <td>Conversation test cases tags list.
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td><strong>description</strong>
   </td>
   <td>Test suite description
   </td>
   <td>Optional
   </td>
  </tr>
</table>

## Sample Response


```json
{
    "status": "IN_PROGRESS",
    "dsId": "ds-f8xxxxx5-5xxa-5xx4-axx4-48xxxxxxxxx9" 
}
```