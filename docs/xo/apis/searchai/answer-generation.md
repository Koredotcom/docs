# **Answer Generation API**

This API allows you to fetch answers to a query from SearchAI corresponding to the input query and the meta filters sent in the request body. Additionally, this API also returns debug information about the qualified chunks used to generate answers.

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
   <td><code>https://{{host}}/api/public/stream/{{AppID}}/advancedSearch</code>
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
See <a href="../api-introduction#generating-the-jwt-token">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>
<ul>

<li>Answer Generation
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
   <td><strong>REQUIRED</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>host
   </td>
   <td>Required
   </td>
   <td>The environment URL. For example, <code>https://platform.kore.ai</code>
   </td>
  </tr>
  <tr>
   <td>App ID
   </td>
   <td>Required
   </td>
   <td>Unique Identifier of your application. Bot ID corresponds to the <strong>appID</strong> for your application. To view your App ID, go to the <strong>Dev Tools</strong> under <strong>App Settings</strong>. You can view the AppID under the API scopes.

   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://platform.kore.ai/api/public/stream/st-3beea617-cfd5-5224-b70b-656c4eef768e/advancedSearch' \
--header 'auth: eyJhbGciOiJnR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiYXBwSWQiOiJjcy05Yzg5MGMwOS1kMzQ5LTUzZjctYmIwZC1jYWEwZGIwOGNmMTkifQ.K2DWFPthcsTlltPTcR1irzjlxr4LYUzknxeTRfANolo' \
--header 'Content-Type: application/json' \
--data '{
 "query": "Conversational AI",
 "metaFilters":  [{
  "condition": "AND",
  "rules": [
    {
      "fieldName": "sourceType",
      "fieldValue": [
        "file"
      ],
      "operator": "contains"
    }
  ]
}]
}'
```



## Body Parameters


<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>REQUIRED</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
   <td>query
   </td>
   <td>Yes
   </td>
   <td>Query string for search
   </td>
  </tr>
  <tr>
   <td>metaFilters
   </td>
   <td>No
   </td>
   <td>This parameter can be used to define rules to filter out the results from the Answer Index before using them for generating the answer. This parameter takes an array of rules with conditions. For instance, to use only web pages to answer a query, set the filters as shown below.
   
  <pre>
   <code>
    "metaFilters": [
        {
        "condition": "AND",
        "rules": [
            {
            "fieldName": "sourceType",
            "fieldValue": [
                "web"
            ],
            "operator": "contains"
            }]
        }]
    </pre>
    </code>
   </td>
  </tr>
   <tr>
   <td>answerSearch
   </td>
   <td>No
   </td>
   <td>This can be set to true or false. When set to ‘true’, the response will include answers. Conversely, when set to ‘false’, the response will omit the answer to the query. However, you can still use the includeChunksInResponse field to see the qualified chunks in the response. By default, it is set to true.
   </td>
  </tr>
    <tr>
   <td>includeChunksInResponse</td>
   <td>No</td>
   <td>This can be set to true or false. When set to true, the response will also include a list of qualified chunks along with other parameters. The chunk information is stored in the response's chunk_result field.</td>
  </tr>
  <tr>
   <td>IncludeMetaDataAnswers</td>
   <td>No </td>
   <td>This field can fetch specific chunk metadata fields in the response along with the default fields.The requested fields are returned as part of the <b>graph_answer</b> field in the response. If a metadata field listed in this object does not exist, the field is returned in the response with a null value.
   
   For instance, to fetch the author name(a metadata field) and subtitle(a custom field) additionally from the chunks, include the following in the request payload. 
      
   "IncludeMetaDataAnswers": ["chunkMeta.author", “subtitle”]. 
   
   Note that for metadata fields, use the field name along with the root name, such as chunkMeta.&lt;x>, as shown in the above example. 

   </td>
  </tr>
  <tr>
   <td>raclEntityIds</td>
   <td>No </td>
   <td>Array of RACL values

This field specifies the <strong>RACL (Role-Based Access Control List)</strong> values to be used to determine accessible content. It can include both <strong>user identities<strong> (e.g., email addresses) and <strong>permission entity IDs </strong>(e.g., user groups).

When raclEntityIds is passed in the API request, Search AI exclusively uses the provided values in raclEntityIds to identify accessible content. No additional mapping between user identities and permission entities is performed to resolve content accessibility. For each value in raclEntityIds, only the content where the sys_racl field contains a matching value will be accessible in the response.

For instance,

<pre>
raclEntityIds: [

“123234”, // Permission Entity ID

“[user@example.com](mailto:user@example.com)” // User Identity

]</pre>

<ul>
<li>Content with a sys_racl field that includes either "123234" or "user@example.com" will be accessible.</li>
<li> The API will not perform additional lookups to identify content accessible to other related permission entities for "user@example.com".</li>
</ul>
This parameter enables granular control over content accessibility by explicitly specifying allowed entities. It ensures strict adherence to the provided values without relying on broader permission mappings.

“raclEntityIds” takes precendence over any key set to use via RACL resolver API. So even if that is configured whenever “raclEntityIds” is present we will only honor that. 


   </td>
  </tr>

  <tr>
   <td>customData</td>
   <td>No </td>
   <td>Custom data to be sent in the request. This data can be used to further process or filter the search results in the application. This can also be used to pass previous conversations as context or to set user context like user identity, location, etc.
   </td>
  </tr>
   <tr>

   <td>dynamicPromptSelection </td>
   <td> No </td>
   <td>Specifies the prompt and model to be used to generate the answer in this API call. If not provided, the API will use the default model and prompt configured at the application level.

This field accepts the following three parameters:



* **integrationName:** Specifies the name of the GenAI provider. Supported values include:
    * "openai"
    * "azure"
    * "korexo"
    * custom integration name (must exactly match the name defined in the configuration)
* **model**: Name of the specific LLM model to be used for answer generation. This must match the model name defined in the GenAI configuration exactly.
* **promptName**: Name of the prompt to be used to generate the answer. Use "Default" to apply the default prompt configured in the application.

**Example:**
<pre>
"dynamicPromptSelection" : {

     "integrationName" : "openai",
     "model" : "GPT-3.5 Turbo",
     "promptName" : "testprompt"

}</pre>

**Note:**

* This field is optional. If omitted, the system uses the default model and prompt configured at the application level.
* All values, integrationName, model, and promptName, are **case sensitive**.
* Ensure that the specified model and prompt are correctly **configured and published under GenAI settings.**
* When using a **custom LLM**, the integrationName must match the exact name defined in the custom integration settings.
* To use the **default prompt configured in the application**, set promptName as “Default”.
* Since you cannot add a new prompt for Kore XO GPT, set prompt=”Default”.
* For Kore XO GPT (korexo):
    * The model must be set to "XO-GPT".
    * The prompt must be "Default" (custom prompts are not supported).
   </td>
   
   </tr>
</table>


## Example of Using Custom Data Request parameter



1. To pass user information.

```json
 "customData": {
       "userContext": {
             "userName": "John",
             "userId": "john.smith@kore.com",
             "emailId": "john.smith@kore.com"
          }
   }
```


2. To pass user location

```json
"customData": {
   "userContext": {
   "location": "Germany"
    }
}
```


3. To pass the previous conversation as context to the **Query Rephrasing Agent.**

```json
"customData": {
  "previousConversation": [
  {
  "query": "What is the leave policy for America?",
  "answer": "The leave policy in the U.S. varies by employer, but the Family and Medical Leave Act (FMLA) allows eligible employees to take up to 12 weeks of unpaid leave for certain family and medical reasons. Paid leave policies depend on the employer."
  },
  {
  "query": "How do I reset my company email password?",
  "answer": "You can reset your company email password by visiting the IT support portal and selecting 'Forgot Password.' Follow the instructions to reset your password. If you need further assistance, contact the IT helpdesk."
  }]
}
```
