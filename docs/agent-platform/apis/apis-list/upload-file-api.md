# File Upload API

The API can upload a file to the local server for seamless usage in multimodal nodes and across the Agent Platform. The API returns a unique <code><em>file URL</em></code> and <code><em>file ID</em></code> as the response, which can be used to take further action on the file. 

The following file upload modes are supported:

* [Mode 1 - Upload a single file as is](./upload-file-api.md/#mode-1-upload-a-single-file-as-is){:target="_blank"}: For files smaller than 25 MB.
* [Mode 2 - Upload a file in chunks](./upload-file-api.md/#mode-2-upload-a-file-in-chunks){:target="_blank"}: For files larger than 25 MB.

The following file extensions are currently supported:

* M4a
* Mp3
* Webm
* Mp4
* Mpga
* Wav
* Mpeg
* PNG (.png)
* JPEG (.jpeg and .jpg)
* WEBP (.webp)
* GIF (.gif)

**Where can I find the API key?** [Learn more](../../apis/overview.md/#how-to-find-the-api-key){:target="_blank"}.

## Mode 1: Upload a Single File As Is

This method directly hits the endpoint and returns the <code>fileId</code> and `fileURL` in the response.


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
   <td><strong><code>https://{host}/api/public/files</code></strong>
   </td>
  </tr>
  <tr>
   <td><strong>Content Type</strong>
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><strong><code>X-api-key</code></strong> - The API key used for authentication.
   </td>
  </tr>
</table>

### Path Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
  </tr>
  <tr>
   <td><strong>host</strong>
   </td>
   <td>The environment URL. For example, <code>https://agent-platform.kore.ai</code>.
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
</table>

### Sample Request

```js
curl --location 'https://agent-platform.kore.ai/api/public/files' \
--header 'x-api-key: xxxxx' \
--form 'file=@"postman-cloud:///1efxxxxe-bxx9-4xx0-bxx3-14xxxxxxxxx9"' \
--form 'fileContext="bulkImport"'
```

### Body Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
  </tr>
  <tr>
   <td><strong>file</strong>
   </td>
   <td>The file being uploaded.
   </td>
   <td>File
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>fileContext</strong>
   </td>
   <td>The context of the file (e.g., <code>bulkImport</code>).
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
</table>

### Sample Response

```js
{
"url": "http://localhost/api/getMediaStream/orgFiles/f-e1xxxxx3-4xxc-5xx6-bxx2-cxxxxxxxxxx7.wav?e=173xxxxx36&n=13xxxx7188&del=false&s=IkJyODZMM3V6K1I3UkYraERHSHVuOWY1M08xYjJoN3NLMmVTR0FMbWtiK2M9Ig%24%24&fileName=sample4.wav",
"fileId":"657xxxxxxxxxxxxxxxxxxxx6"
}
```

### Response Parameters

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
   <td><strong>url</strong>
   </td>
   <td>The URL to access the uploaded file.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td><strong>fileId</strong>
   </td>
   <td>Unique identifier for the uploaded file
   </td>
   <td>String
   </td>
  </tr>
</table>

## Mode 2: Upload a File in Chunks

This method requires three APIs to upload a large file. The key steps include:

1. [Start the file upload session](./upload-file-api.md/#start-session-api){:target="_blank"}.
2. [Upload in chunks](./upload-file-api.md/#chunk-upload-api){:target="_blank"}, and 
3. [Merge the chunks to complete the process](./upload-file-api.md/#complete-the-process){:target="_blank"}.

### Start Session API

The API initializes the file upload process and returns a <code>session ID</code>, which will be used in the next steps. The file to be uploaded is divided into chunks associated with the <code>session ID</code>. These chunks will be merged and uploaded as a single file in the subsequent APIs.

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
   <td><code>http://{{host}}/api/public/files/session/start</code>
   </td>
  </tr>
  <tr>
   <td><strong>Content Type</strong>
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><strong><code>X-api-key</code></strong> - The API key used for authentication.
   </td>
  </tr>
</table>

#### Path Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
  </tr>
  <tr>
   <td><strong>host</strong>
   </td>
   <td>The environment URL. For example, <code>https://agent-platform.kore.ai</code>
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
</table>

#### Sample Request

```js
curl --location 'https://agent-platform.kore.ai/api/public/files/session/start' \
--header 'x-api-key: kg-b9xxxxxc-cxxf-5xxf-8xxe-6xxxxxxxxxx8-3xxxxx2a-exxa-4xx8-8xx5-exxxx1axxxxxd' \
--header 'Content-Type: application/json' \
--data '{
    "fileContext": "bulkImport",
    "totalChunks": 1,
    "fileExtension": "jpg",
    "fileName": "Rent.jpg",
    "fileSize": 291
}'
```

#### Body Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
  </tr>
  <tr>
   <td><strong>fileContext</strong>
   </td>
   <td>The context of the file (e.g., <code>bulkImport</code>).
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>totalChunks</strong>
   </td>
   <td>The total number of chunks created for the file upload.
   </td>
   <td>Number
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>fileExtension</strong>
   </td>
   <td>The file extension based on the file type.
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>fileName</strong>
   </td>
   <td>The file name.
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>fileSize</strong>
   </td>
   <td>The size of the file.
   </td>
   <td>Number
   </td>
   <td>Required
   </td>
  </tr>
</table>

#### Sample Response

```js
{
   "sessionId": "14xxxxxd-0xx4-4xxf-axx1-69xxxxxxxxx8",
   "expirationDate": "2025-02-06T16:01:44.285Z"
}
```

#### Response Parameters

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
   <td><strong>sessionId</strong>
   </td>
   <td>The file upload <code>session id</code>.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td><strong>expirationDate</strong>
   </td>
   <td>The date and time of the session expiration.
   </td>
   <td>Date
   </td>
  </tr>
</table>

### Chunk Upload API

The API uploads the file in multiple chunks. The <code>session ID</code> from the [Start Session](./upload-file-api.md/#start-session-api){:target="_blank"} API must be used in this step.

<table>
  <tr>
   <td>
<strong>Method</strong>
   </td>
   <td>POST
   </td>
  </tr>
  <tr>
   <td><strong>Endpoint</strong>
   </td>
   <td><code><a href="http://localhost/api/public/files/session/{{sessionId">https://{{host}}</a>/api/public/files/session/<a href="http://localhost/api/public/files/session/{{sessionId">{{sessionId</a>}} </code>
   </td>
  </tr>
  <tr>
   <td><strong>Content Type</strong>
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><strong><code>X-api-key</code></strong> - The API key used for authentication.
   </td>
  </tr>
</table>

#### Path Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
  </tr>
  <tr>
   <td><strong>host</strong>
   </td>
   <td>The environment URL. For example, <code>https://agent-platform.kore.ai</code>
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>sessionId</strong>
   </td>
   <td>The file upload <code>session id</code> fetched from the <strong>Start Session</strong> API.
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
</table>

#### Sample Request

```js
curl --location 'https://agent-platform.kore.ai/api/public/files/session/14xxxxxd-0xx4-4xxf-axx1-69xxxxxxxxx8' \
--header 'x-api-key: {{apikey}}' \
--header 'Content-Type: application/json' \
--form 'file=@"postman-cloud:///1exxxxxc-9xxd-4xx0-8xxa-3xxxxxxxxxxa"' \
--form 'chunkNumber="0"'
```

#### Body Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
  </tr>
  <tr>
   <td><strong>file</strong>
   </td>
   <td>The file being uploaded.
   </td>
   <td>File
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>chunkNumber</strong>
   </td>
   <td>The uploaded chunk number.
   </td>
   <td>Number
   </td>
   <td>Required
   </td>
  </tr>
</table>

#### Sample Response

```js
{
   "chunkNumber": "0",
   "sessionId": "14xxxxxd-xxx4-4xxf-axx1-69xxxxxxxxx8"
}
```

#### Response Parameters

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
   <td><strong>chunkNumber</strong>
   </td>
   <td>The uploaded chunk number.
   </td>
   <td>Number
   </td>
  </tr>
  <tr>
   <td><strong>sessionId</strong>
   </td>
   <td>The file upload <code>session id</code>.
   </td>
   <td>String
   </td>
  </tr>
</table>

### Complete The Process

This API merges the uploaded chunks and finalizes the process using the `session Id` from the [Start Session](./upload-file-api.md/#start-session-api){:target="_blank"} API. It returns the **<code>file URL</code>** and **<code>file ID</code>** in the response. Any missing chunk numbers are identified after the merge.

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
   <td><code><a href="http://{{host}}/api/public/files/session/session">http://{{host}}/api/public/files/session/{{session</a> id}}/complete</code>
   </td>
  </tr>
  <tr>
   <td><strong>Content Type</strong>
   </td>
   <td>application/json
   </td>
  </tr>
  <tr>
   <td><strong>Authorization</strong>
   </td>
   <td><strong><code>X-api-key</code></strong> - The API key used for authentication.
   </td>
  </tr>
</table>

#### Path Parameters

<table>
  <tr>
   <td><strong>PARAMETER</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
   <td><strong>TYPE</strong>
   </td>
   <td><strong>REQUIRED/OPTIONAL</strong>
   </td>
  </tr>
  <tr>
   <td><strong>host</strong>
   </td>
   <td>The environment URL. For example, <code>https://agent-platform.kore.ai</code>
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
  <tr>
   <td><strong>sessionID</strong>
   </td>
   <td>The file upload <code>session ID</code>.
   </td>
   <td>String
   </td>
   <td>Required
   </td>
  </tr>
</table>

#### Sample Request

```js
curl --location --request POST 'https://localhost/api/public/files/session/6exxxxx9-4xx7-4xx1-bxx9-ef2xxxxxxx78/complete' \
--header 'x-api-key: kg-a3xxxxxe-0xx6-5xx1-axxc-d4xxxxxxxxx0-a8xxxxxc-bxx4-4xxe-axxd-dxxxxxxxxxxf'
```

#### Body Parameters

No parameters are passed.

#### Sample Response

```js
{
"url": "http://localhost/api/getMediaStream/orgFiles/f-e1xxxxx3-4xxc-5xx6-bxx2-c8xxxxxxxxx7.wav?e=1736922836&n=1357527188&del=false&s=IkJyODZMM3V6K1I3UkYraERHSHVuOWY1M08xYjJoN3NLMmVTR0FMbWtiK2M9Ig%24%24&fileName=sample4.wav",
    "fileId": "657xxxxxxxxxxxxxxxxxxxx6"
}
```

#### Response Parameters

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
   <td><strong>url</strong>
   </td>
   <td>The uploaded file’s URL.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td><strong>fileId</strong>
   </td>
   <td>The file ID of the uploaded file.
   </td>
   <td>String
   </td>
  </tr>
</table>

