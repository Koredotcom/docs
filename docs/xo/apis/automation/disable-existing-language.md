# Disable an Existing Language API

To disable an existing language for a virtual assistant.

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
   <td><code>https://{{host}}/api/{{version-Id}}/public/bot/{{botId}}/language/status</code>
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
    See <a href="../api-introduction/#generating-the-jwt-token">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>
<ul>

<li>Bot Builder: Language Configuration

<li>Admin Console: Language Settings > Language Management
</li>
</ul>
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
https://{{host}}/api/{{version-Id}}/public/bot/{{botId}}/language/status \
-H 'Content-Type: application/json' \
-H 'auth: YOUR_JWT_ACCESS_TOKEN' \
-d '[
{
"language" : ,
"enable": false
}]'
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
   <td>language
   </td>
   <td>The language code of the language to be disabled.
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>enable
   </td>
   <td>The enable configuration is set to <strong>False</strong>.
   </td>
   <td>Required
   </td>
  </tr>
</table>


## Sample Response

```json
Disabled Spanish language successfully
```
