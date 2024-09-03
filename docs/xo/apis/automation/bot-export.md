# Bot Export API

To export the bot definition and all the associated components.

!!!note
    This API only initiates the export process. Please use the [Export Status API](../bot-export-status) to view the export progress status and obtain a link to download the file once the export completes.

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
   <td><code>https://{{host}}/api/public/bot/{{BotID}}/export</code>
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

<li>Bot Builder: Bot Export

<li>Admin Console: Bot Definition > Bot Export
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
  <tr>
   <td>BotID
   </td>
   <td><em>Bot ID</em> or <em>Stream ID</em> can be accessed under <strong>General Settings</strong> on the Bot Builder.
   </td>
   <td>Required
   </td>
  </tr>
</table>



## Sample Request

```json
curl --location 'https://{host}/api/public/bot/{BotID}/export' \
--header 'auth: {YOUR_JWT_ACCESS_TOKEN}' \
--header 'content-type: application/json' \
--data '{
    "exportType": "published",
    "exportOptions": {
        "settings": [
            "botSettings",
            "botVariables",
            "ivrSettings",
            "genAIandLLMSettings"
        ],
        "tasks": [
            "botTask",
            "knowledgeGraph",
            "smallTalk"
        ],
        "nlpData": [
            "utterances",
            "patterns",
            "traits",
            "rules",
            "concepts",
            "synonyms",
            "standardResponses",
            "nlpSettings"
        ]
    },
    "subTasks": {
        "alerts": [],
        "actions": [],
        "dialogs": []
    },
    "allTasks": true,
    "customDashboards": true,
    "IncludeDependentTasks": true
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
   <td>exportType
   </td>
   <td>Bot type –
<ul>

<li>‘<em>latest</em>‘ or

<li>‘<em>published</em>‘
</li>
</ul>
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td>exportOptions
   </td>
   <td>All the bot components are exported by default. If required, you may specify the components to be included for the export.
<p>
Usage:
<p>
<code>"exportOptions": {</code>
<p>
<code>      "tasks": [</code>
<p>
<code>             "botTask",</code>
<p>
<code>             "knowledgeGraph"</code>
<p>
<code>           ],</code>
<p>
<code>      "nlpData": [</code>
<p>
<code>             "nlpSettings",</code>
<p>
<code>             "utterances",</code>
<p>
<code>             "standardResponses"</code>
<p>
<code>           ],</code>
<p>
<code>      "settings": [</code>
<p>
<code>             "botSettings",</code>
<p>
<code>             "botVariables",</code>
<p>
<code>             "ivrSettings"</code>
<p>
<code>             "genAIandLLMSettings"</code>
<p>
<code>           ]</code>
<p>
<code>   },</code>
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td>subTasks
   </td>
   <td>For partial export mention the tasks to be exported.
<p>
Usage:
<pre>"subTasks": {
"dialogs": ["&lt;dialog Name 1>","&lt;dialog Name 2>"],
"alerts": ["&lt;alert name 1>","&lt;alert name 2>"],
"actions": ["&lt;action name 1>","&lt;action name 2>"]
 }</pre></td>
<td>Optional
   </td>
  </tr>
  <tr>
   <td>IncludeDependentTasks
   </td>
   <td>To include dependent tasks for export.
<p>
Usage:
<p>
<pre>"IncludeDependentTasks": true</pre>
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td>customDashboards
   </td>
   <td>To include custom dashboards for export.
<p>
Usage:
<p>
<pre>"customDashboards": true</pre>
   </td>
   <td>Optional
   </td>
  </tr>
  <tr>
   <td>allTasks
   </td>
   <td>To include all tasks for export, will be ignored if <em>subTasks</em> is present.
<p>
Usage:
<p>
<pre>"allTasks": true</pre>
   </td>
   <td>Optional
   </td>
  </tr>
</table>


To learn more about the optional parameters for partial import and dependent tasks, please click [here](../../../manage-assistant/bot-management/#exporting-an-assistant).


## Sample Response


```json
{
    "status": "pending",
    "streamId": "st-57af1576-bbdc-5ded-a608-5cfbc00c6415",
    "createdBy": "u-f8708c55-de2c-5690-8821-ac90624779b5",
    "exportType": "published",
    "requestType": "Botexport",
    "_id": "ber-dd746d3c-1631-53af-81ca-03a1d01f0487",
    "createdOn": "2023-03-31T13:06:16.309Z",
    "__v": 0
}
```