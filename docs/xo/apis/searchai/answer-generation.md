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
   <td>Unique Identifier of your application. To view your App ID, go to the <strong>Dev Tools </strong>under <strong>App Settings</strong> and open your <strong>JWT App</strong>. 
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
   <td>metaFilter
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
</table>