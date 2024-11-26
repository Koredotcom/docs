# **Ingest Data API**

This API allows you to ingest and index data into the SearchAI application. You can directly ingest structured data as chunk fields using the API or ingest an uploaded document. 

## Ingesting Documents

* To ingest content from a file, use the **Upload File API** to upload your file to the application.
* After uploading, include the `fileId` from the **Upload File API** response in the **Ingest API** to process the file content.
* Currently, only uploading of PDF, docx, ppt or txt is supported. If any other type of file is sent for ingestion, the API throws error. 

## Ingesting Strucutured Data

* To ingest structured data, add the content to the body of the request object in the API. Ensure that the data corresponds to the **Chunk Fields** listed in the table below.
* **File Structure**: The JSON file must adhere to a specific structure for SearchAI to interpret the data correctly:
    * The **file name** is used as the `recordTitle`.
    * The JSON file should consist of an **array of objects**, where each object represents a chunk of data.
    * The fields in each chunk must correspond to the chunk fields listed in the table below.


## Supported Chunk Fields

<table>
  <tr>
   <td>Field name
   </td>
   <td>Description
   </td>
   <td>Mandatory
   </td>
  </tr>
  <tr>
   <td>chunkText
   </td>
   <td>This is the content that will be used to render the final answer to the user for extractive answers and will be sent to the LLM for generative answers.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>recordUrl
   </td>
   <td>This is the URL used to generate user references. References explain where the content was originally sourced from.
   </td>
   <td>Yes
   </td>
  </tr>
  <tr>
   <td>sourceACL
   </td>
   <td>This field stores the list of user identities that have access to the information stored in this chunk
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>sourceUrl
   </td>
   <td>This is the URL of the primary source. For example, for content from the Kore website, if recordUrl: <a href="https://kore.ai/products">www.kore.ai/products</a>, set sourceUrl: www.kore.ai. If this is empty, it is set to the same value as the recordUrl.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>chunkMeta
   </td>
   <td>This field can be used to store any metadata associated with the chunk. This can be used to further process the content in the application, generate embeddings etc.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>chunkTitle
   </td>
   <td>This is the title that will be used to render the final answer to the user for extractive answers and it will be sent to the LLM for generative answers.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfa1
   </td>
   <td>This custom field of type array is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfa2
   </td>
   <td>This custom field of type array is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfa3
   </td>
   <td>This custom field of type array is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfa4
   </td>
   <td>This custom field of type array is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfa5
   </td>
   <td>This custom field of type array is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfs1
   </td>
   <td>This custom field of type string is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfs2
   </td>
   <td>This custom field of type string is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfs3
   </td>
   <td>This custom field of type string is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfs4
   </td>
   <td>This custom field of type string is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
  <tr>
   <td>cfs5
   </td>
   <td>This custom field of type string is available for users to use according to their requirements.
   </td>
   <td>No
   </td>
  </tr>
</table>

## API Specifications

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
   <td><code>https://{{host}}/api/public/bot/:botId/ingest-data</code>
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
See <a href="../api-introduction/#generating-the-jwt-token"">How to generate the JWT Token</a>.
   </td>
  </tr>
  <tr>
   <td><strong>API Scope</strong>
   </td>
   <td>
<ul>

<li>Ingest data</li>
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
   <td>Bot ID
   </td>
   <td>Required
   </td>
   <td>Unique Identifier of your application. Bot ID corresponds to the appID for your application. To view your App ID, go to the <strong>Dev Tools </strong>under <strong>App Settings. </strong>You can view the AppID under the API scopes.
   </td>
  </tr>
</table>



## Request Parameters


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
   <td>sourceName
   </td>
   <td>Yes
   </td>
   <td>SourceName is mandatory. If the given name does not exist then a new source is created automatically.
   </td>
  </tr>
  <tr>
   <td>sourceType
   </td>
   <td>Yes
   </td>
   <td>This can take the following values:
<ul>

<li>“json” - to upload structured data in the form of chunk fields , sent via the request object. When sourceType is json, even if file ID is present it will not be considered</li>

<li>“file” - to upload documents based on file ID. When sourceType is file only file ID is considered. If chunk payload is present it will be ignored. </li>
</ul>
   </td>
  </tr>
  <tr>
   <td>documents
   </td>
   <td>Yes
   </td>
   <td>Depending upon the  value of the sourceType, this field can either be used to pass the chunks fields in JSON format or it can be used to pass the reference of the file containing the chunk fields in JSON format. 
   
   <strong>For ingesting chunks directly, use the following format.</strong>
<p>
“sourceName”: “Abc”,  \
“sourceType” : “json”,
<p>
"documents": [
<p>
    {
<p>
      "title": "Cybersecurity",
<p>
      "chunks": [
<p>
        {
<p>
          "chunkText": "Cybersecurity is the practice of protecting systems,    networks, and programs from digital attacks. With the rise of cyber threats like ransomware and data breaches, cybersecurity has become a critical concern for businesses and governments worldwide.",
<p>
          "recordUrl": "https://www.cybersafe.com/",
<p>
          "chunkTitle": "The Importance of Cybersecurity",
<p>
          "chunkMeta": {
<p>
            "Role": "Dev"
<p>
          }
<p>
        }
<p>
      ]
<p>
Note that the fields inside the chunks object should correspond to the chunk fields. To view the chunk fields, refer to the<strong> Chunk Browser</strong>. 
<p>
<strong>For ingesting content from a file, pass the following information in this field.</strong>
<p>
“sourceName”: “Abc”,
“sourceType” : “file”,
“documents”: [
<p>
      {
<p>
         "fileId": "f12455"
<p>
      }
<p>
  ]
<p>
where, fileId is the unique identifier of the uploaded file. 
<p>
Use <a href="https://docsinternal-kore.github.io/docs/xo/apis/automation/upload-file/">Upload File API</a> to upload the file to the application. This API will return the fileId in response which should be used in the Ingest API to ingest and index content of the file. 
   </td>
  </tr>
</table>



## Sample Request


```json
curl --location 'https://{{your-instance}}/api/public/bot/st-44xxxxxxxxxxxxxxxd8f39e4/ingest-data' \
--header 'auth: eyJhbGciOxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxYzkwLTMxYTAtNWJlZS1iZWI5LTJmMGZhZTg4NWMzZCJ9.lLIkckd3mQuP-glk9YVj-wXYE-8wGRlTaTHmZshaGdE' \
--header 'Content-Type: application/json' \
--data '{
    "sourceName": "JsonSource",
    "sourceType": "json",
    "documents": [
        {
            "title": "Cybersecurity",
            "chunks": [
                {
                    "chunkText": "Cybersecurity is the practice of protecting systems, networks, and programs from digital attacks. With the rise of cyber threats like ransomware and data breaches, cybersecurity has become a critical concern for businesses and governments worldwide.",
    "recordUrl": "https://www.cybersafe.com/",
    "chunkTitle": "The Importance of Cybersecurity",
                    "chunkMeta": {
                        "Role": "dEV"
                    }
                }
            ]
        }
    ]
}'
```