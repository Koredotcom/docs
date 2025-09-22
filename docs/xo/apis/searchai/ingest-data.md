# **Ingest Data API**

This API allows you to ingest and index data into the SearchAI application. You can directly ingest structured data as chunk fields using the API,  ingest an uploaded document, or use this API to perform incremental web crawling to web sources that already exist in the application. 

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

## Crawling Web Pages

* This API can be used for incremental web crawling. The API will add the ingested content corresponding to an existing web source in Search AI. 
    * The sourceName in the API must match the Source Title for the web domain added in Search AI. 
    * Set the sourceType as “web”.
    * Provide the URLs of the pages to be crawled in the URLs array under the documents field. 
* The web crawl uses the crawl configuration for the source set in Search AI.
* If an existing URL is provided,  it is recrawled. If a new URL is provided, it is crawled if the crawl configuration permits. 


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
See <a href="../automation/api-introduction.md#generating-the-jwt-token">How to generate the JWT Token</a>.
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
   <td>The environment URL. For example, <code>https://platform.example.org</code>
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
<li>“web” - to crawl web pages using the URLs provided in the payload. </li>
</ul>
   </td>
  </tr>
  <tr>
   <td>documents
   </td>
   <td>Yes
   </td>
   <td>Depending upon the  value of the sourceType, this field can be used for:
1. Passing the chunks fields in JSON format. 
2. Passing the reference of the file containing the chunk fields in JSON format.  
3. Passing the web URLs to be crawled.
   </td>
  </tr>
</table>

### Sample Request - Ingesting Chunks directly

**For ingesting chunks directly, use the following format.**

```json
“sourceName”: “Abc”,  
“sourceType” : “json”,
"documents": [
    {
      "title": "Cybersecurity",
      "chunks": [
        {
          "chunkText": "Cybersecurity is the practice of protecting systems,    networks, and programs from digital attacks. With the rise of cyber threats like ransomware and data breaches, cybersecurity has become a critical concern for businesses and governments worldwide.",
          "recordUrl": "https://www.cybersafe.com/",
          "chunkTitle": "The Importance of Cybersecurity",
          "chunkMeta": {
            "Role": "Dev"
          }
        }
      ]
```

Note that the fields inside the chunks object should correspond to the chunk fields. To view the chunk fields, refer to the **Chunk Browser**. 


### Sample Request - Incremental Web Crawl

**For crawling web pages, use the following format.**

```json
{
  “sourceName”: “myWebDomain”,  
  “sourceType” : “web”,
  "documents": [

    {

      "urls": ["[https://www.shell.de/geschaeftskunden/energie/shell-energy-blog/energieloesungen-fuer-den-mittelstand.html](https://www.shell.de/geschaeftskunden/energie/shell-energy-blog/energieloesungen-fuer-den-mittelstand.html)",    "[https://www.shell.de/ueber-uns/standorte/rheinland/medieninfos-und-downloads/neue-silhouette-als-zeichen-des-wandels-ueber-50-meter-hohe-kolonne-fuer-die-neue-grundoel-anlage-bei-shell.html](https://www.shell.de/ueber-uns/standorte/rheinland/medieninfos-und-downloads/neue-silhouette-als-zeichen-des-wandels-ueber-50-meter-hohe-kolonne-fuer-die-neue-grundoel-anlage-bei-shell.html)"]

    }

  ]
}
```
where, urls contains the list of urls to be crawled.

Note that the URLs field should point to the list of URLs that need to be crawled. If a URL is already crawled, it is recrawled. If a URL is new, it is crawled if the crawl configuration of the source permits. 


### Sample Request - Ingesting Content from Files

**For ingesting content from a file, pass the following information in this field.**

```json
{
“sourceName”: “Abc”,  
“sourceType” : “file”, 
“documents”: [

      {

         "fileId": "f12455"

      }

  ]
}
```

where, fileId is the unique identifier of the uploaded file.

Use the [Upload File API](https://docsinternal-kore.github.io/docs/xo/apis/automation/upload-file/) to upload the file to the application. This API will return the fileId in response, which should be used in the Ingest API to ingest and index the content of the file. 
