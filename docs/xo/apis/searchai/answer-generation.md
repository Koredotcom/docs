--8<-- "includes/searchai-api-back-link.md"

# Answer Generation API

This API allows you to fetch answers to a query from SearchAI corresponding to the input query and the meta filters sent in the request body. Additionally, this API also returns debug information about the qualified chunks used to generate answers.

| **Method**       | POST |
|-------------------|------|
| **Endpoint**      | `https://{{host}}/api/public/stream/{{AppID}}/advancedSearch` |
| **Content Type**  | `application/json` |
| **Authorization** | `auth: {{JWT}}` <br> See [How to generate the JWT Token](../automation/api-introduction.md#generating-the-jwt-token) |
| **API Scope**     | Answer Generation |






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
   <td>Unique Identifier of your application. To view your App ID, go to the <strong>Dev Tools</strong> under <strong>App Settings</strong>. You can view the AppID under the API scopes.

   </td>
  </tr>
</table>

## Sample Request

```
curl --location 'https://platform.kore.ai/api/public/stream/st-3beea617-cfd5-5224-b70b-656c4eef768e/advancedSearch' \
--header 'auth: eyJhbGciOiJnR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwiYXBwSWQiOiJjcy05Yzg5MGMwOS1kMzQ5LTUzZjctYmIwZC1jYWEwZGIwOGNmMTkifQ.K2DWFPthcsTlltPTcR1irzjlxr4LYUzknxeTRfANolo' \
--header 'Content-Type: application/json' \
--data '{
 "query": "Info on Conversational AI",
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
      
   <pre>
   "IncludeMetaDataAnswers": ["chunkMeta.author", “subtitle”]. 
   </pre>
   Note that for metadata fields, use the field name along with the root name, such as <pre>chunkMeta.x</pre>, as shown in the above example. 

   </td>
  </tr>
  <tr>
   <td>raclEntityIds</td>
   <td>No </td>
   <td>Array of RACL values

This field specifies the <strong>RACL (Role-Based Access Control List)</strong> values to be used to determine accessible content. It can include both <strong>user identities</strong> (e.g., email addresses) and <strong>permission entity IDs </strong>(e.g., user groups).

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
   <td>Custom data to be sent in the request. This data can be used to further process or filter the search results in the application. This can also be used to pass previous conversations as context or to set user context like user identity, location, etc. Refer to [the following section](#example-of-using-custom-data-request-parameter) for examples on how to use custom data.
   </td>
  </tr>
  <tr>
  <td>dynamicPromptSelection </td><td> No </td>
  <td>Specifies the prompt and model to be used to generate the answer in this API call. If not provided, the API will use the default model and prompt configured at the application level. This field accepts the following three parameters:
  
  <ul>
  <li><strong>integrationName:</strong> Specifies the name of the GenAI provider. Supported values include:
    <ul>
      <li>"openai"</li>
      <li>"azure"</li>
      <li>"korexo"</li>
      <li>custom integration name (must exactly match the name defined in the configuration)</li>
    </ul>
  </li>
  <li><strong>model:</strong> Name of the specific LLM model to be used for answer generation. This must match the model name defined in the GenAI configuration exactly.</li>
  <li><strong>promptName:</strong> Name of the prompt to be used to generate the answer. Use "Default" to apply the default prompt configured in the application.</li>
  </ul>

  <p><strong>Example:</strong></p>
  <pre>
  "dynamicPromptSelection" : {
    "integrationName" : "openai",
    "model" : "GPT-3.5
  "promptName" : "testprompt"
  }
  </pre>

  <p><strong>Note:</strong></p>
  <ul>
    <li>This field is optional. If omitted, the system uses the default model and prompt configured at the application level.</li>
    <li>All values, integrationName, model, and promptName, are <strong>case sensitive</strong>.</li>
    <li>Ensure that the specified model and prompt are correctly <strong>configured and published under GenAI settings.</strong></li>
    <li>When using a <strong>custom LLM</strong>, the integrationName must match the exact name defined in the custom integration settings.</li>
    <li>To use the <strong>default prompt configured in the application</strong>, set promptName as “Default”.</li>
    <li>Since you cannot add a new prompt for Kore XO GPT, set prompt=”Default”.</li>
    <li>For Kore XO GPT (korexo):
      <ul>
        <li>The model must be set to "XO-GPT".</li>
        <li>The prompt must be "Default" (custom prompts are not supported).</li>
      </ul>
    </li>
  </ul>
  </td>
  
  </tr>
</table>


## Example of Using Custom Data Request parameter

**Example 1. To pass user information**

```json
  "customData": {
        "userContext": {
              "userName": "John",
              "userId": "john.smith@example.com",
              "emailId": "john.smith@example.com"
            }
    }
```

**Example 2. To pass user location**

```json
  "customData": {
    "userContext": {
    "location": "Germany"
      }
  }
```

**Example 3. To pass the previous conversation as context to the Query Rephrasing Agent.**

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
