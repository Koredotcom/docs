[:octicons-arrow-left-24: Back to API List](../../apis/list-of-apis.md)

# External Model Connection APIs

Use the Connections API to programmatically manage external model connections for OpenAI, Azure OpenAI, Anthropic, custom API providers, and other integrations.

**Prerequisites**

Before using these APIs, ensure your API App has the following scopes enabled:

* **View Connections** – Required for viewing connection details
* **Manage Connections** – Required for creating and updating connections

### Base URL

```
https://{host}/api/public
```

### Common Request Headers

<table>
  <tr>
   <td><strong>Header</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>x-api-key</code>
   </td>
   <td>Yes
   </td>
   <td>API key for authentication
   </td>
  </tr>
  <tr>
   <td><code>Content-Type</code>
   </td>
   <td>Yes
   </td>
   <td><code>application/json</code>
   </td>
  </tr>
</table>

## API List

| API | Description | Method | Endpoint |
| --- | ----------- | ------ | -------- |
| [List All Connections](#list-all-connections) | Retrieves all configured connections | GET | `/connections` |
| [Get Connection by ID](#get-connection-by-id) | Retrieves a specific connection | GET | `/connections/{connectionId}` |
| [Create Connection](#create-connection) | Creates a new connection | POST | `/connections` |
| [Update Connection](#update-connection) | Updates an existing connection | PATCH | `/connections/{connectionId}` |

### List All Connections

Retrieves a list of all configured connections with optional filtering.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Endpoint</strong>
   </td>
  </tr>
  <tr>
   <td>GET
   </td>
   <td><code>https://{{host}}/api/public/connections</code>
   </td>
  </tr>
</table>

#### Query Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>provider</code>
   </td>
   <td>No
   </td>
   <td>String
   </td>
   <td>Filter by provider. Accepted values: <code>Open AI</code>, <code>Anthropic</code>, <code>Azure Open AI</code>, <code>API</code>
   </td>
  </tr>
  <tr>
   <td><code>status</code>
   </td>
   <td>No
   </td>
   <td>String
   </td>
   <td>Filter by status. Accepted values: <code>ACTIVE</code>, <code>INACTIVE</code>
   </td>
  </tr>
  <tr>
   <td><code>limit</code>
   </td>
   <td>No
   </td>
   <td>Integer
   </td>
   <td>Maximum number of results to return
   </td>
  </tr>
</table>

#### Sample Request

```
curl --location 'https://{{host}}/api/public/connections?limit=10' \
--header 'x-api-key: {{apiKey}}` \
--header 'Content-Type: application/json'
```


#### Sample Response

```
{

  "connections": [
    {
      "connectionId": "cn-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
      "connectionName": "OpenAI GPT-4o",
      "provider": "Open AI",
      "model": "gpt-4o",
      "status": "ACTIVE",
      "createdOn": "2024-01-15T10:30:00.000Z",
      "modifiedOn": "2024-01-15T10:30:00.000Z"
    }
  ],
  "total": 1
}
```

---


### Get Connection by ID

Retrieves the details of a specific connection using its unique identifier.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Endpoint</strong>
   </td>
  </tr>
  <tr>
   <td>GET
   </td>
   <td><code>https://{{host}}/api/public/connections/{connectionId}</code>
   </td>
  </tr>
</table>


#### Path Parameters


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>connectionId</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>The unique identifier of the connection
   </td>
  </tr>
</table>



#### Sample Request

```
curl --location 'https://{{host}}/api/public/connections/{{connectionId}}` \
--header 'x-api-key: {{apiKey}}' \
--header 'Content-Type: application/json'
```

#### Sample Response

```
{
  "connectionId": "cn-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "connectionName": "OpenAI GPT-4o",
  "provider": "Open AI",
  "model": "gpt-4o",
  "status": "ACTIVE",
  "fields": {
    "API_KEY": "sk-***************"
  },
  "createdOn": "2024-01-15T10:30:00.000Z",
  "modifiedOn": "2024-01-15T10:30:00.000Z"
}
```

---


### Create Connection

Creates a new connection to an external model provider. Supports creation of Custom API, OpenAI, Azure OpenAI, Anthropic, and other external model connections.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Endpoint</strong>
   </td>
  </tr>
  <tr>
   <td>POST
   </td>
   <td><code>https://{{host}}/api/public/connections</code>
   </td>
  </tr>
</table>


**Body Parameters**


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>provider</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>The provider type. Accepted values: <code>API</code>, <code>Open AI</code>, <code>Azure Open AI</code>, or <code>Anthropic</code>
   </td>
  </tr>
  <tr>
   <td><code>connectionName</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Display name for the connection
   </td>
  </tr>
  <tr>
   <td><code>model</code>
   </td>
   <td>Conditional
   </td>
   <td>String
   </td>
   <td>Model identifier. Required for <code>Open AI</code>, <code>Azure Open AI</code>, and <code>Anthropic </code>providers
   </td>
  </tr>
  <tr>
   <td><code>modelType</code>
   </td>
   <td>Conditional
   </td>
   <td>String
   </td>
   <td>Set to <code>EASY_INTEGRATION</code> for <code>Azure Open AI</code> and <code>Anthropic</code> providers
   </td>
  </tr>
  <tr>
   <td><code>fields</code>
   </td>
   <td>Yes
   </td>
   <td>Object
   </td>
   <td>Provider-specific configuration fields
   </td>
  </tr>
</table>



#### Sample Request – Custom API Connection - Default Provider

```
curl --location '{{BASE_URL}}/api/public/connections' \
--header 'x-api-key: {{API_KEY}}' \
--header 'Content-Type: application/json' \
--data '{
  "model": "CustomProvider",
  "provider": "API",
  "connectionName": "CustomProvider",
  "promptVars": [
    {
      "name": "prompt",
      "displayName": "Prompt",
      "status": true,
      "dataType": "String",
      "elementType": "textBox",
      "defaultValue": "hlo",
      "required": true
    },
    {
      "name": "system_prompt",
      "displayName": "System prompt",
      "status": false,
      "dataType": "String",
      "elementType": "textBox",
      "defaultValue": "",
      "required": false
    },
    {
      "name": "examples",
      "displayName": "Examples",
      "status": false,
      "dataType": "String",
      "elementType": "textBox",
      "examples": true,
      "defaultValue": "",
      "required": false
    }
  ],
  "customVars": [],
  "endpointUrl": "{{LLM_API_URL}}",
  "headers": [
    {
      "key": "x-api-key",
      "value": "{{LLM_API_KEY}}"
    }
  ],
  "payload": {
    "model": "{{MODEL_NAME}}",
    "max_tokens": 1024,
    "messages": [
      {
        "role": "user",
        "content": "What is the weather like in San Francisco?"
      }
    ]
  },
  "outputPath": "content[0].text",
  "inputTokensPath": "usage.input_tokens",
  "outputTokensPath": "usage.output_tokens",
  "status": "FINALIZED",
  "isEnable": true
}'
```

**Custom API Fields (<code>provider: "API"</code>)**


<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>fields.BASE_URL</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Base URL of the API endpoint
   </td>
  </tr>
  <tr>
   <td><code>fields.API_KEY</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>API key for authentication
   </td>
  </tr>
  <tr>
   <td><code>fields.MODEL_NAME</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Model name
   </td>
  </tr>
  <tr>
   <td><code>LLM_API_URL</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>URL for the model endpoint
   </td>
  </tr>
  <tr>
   <td><code>LLM_API_KEY</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>API key of the model
   </td>
  </tr>
</table>

---

#### Sample Request – Custom API Connection - Existing Provider

```
curl --location '{{BASE_URL}}/api/public/connections' \
--header 'x-api-key: {{API_KEY}}' \
--header 'Content-Type: application/json' \
--data '{
  "model": "{{MODEL_NAME}}",
  "provider": "API",
  "connectionName": "Custom_Existingnew",
  "endpointUrl": "{{LLM_API_URL}}",
  "headers": [
    {
      "key": "x-api-key",
      "value": "{{LLM_API_KEY}}"
    }
  ],
  "status": "FINALIZED",
  "isEnable": true,
  "idp": "none",
  "bodyTab": "providerReferences",
  "mapProvider": "anthropicModel",
  "llmFeatures": {
    "toolCalling": false,
    "supportTools": true,
    "parallelToolCalling": true,
    "structuredResponse": true,
    "dataGeneration": false,
    "streaming": true
  },
  "IOMappings": [
    "textToText",
    "textToImage"
  ]
}'
```

**Custom API Fields (<code>provider: "API"</code>)**

<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>fields.BASE_URL</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Base URL of the API endpoint
   </td>
  </tr>
  <tr>
   <td><code>fields.API_KEY</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>API key for authentication
   </td>
  </tr>
  <tr>
   <td><code>fields.MODEL_NAME</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Model name
   </td>
  </tr>
  <tr>
   <td><code>LLM_API_URL</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>URL for the model endpoint
   </td>
  </tr>
  <tr>
   <td><code>LLM_API_KEY</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>API key of the model
   </td>
  </tr>
  <tr>
    <td><code>fields.IOMapping</code>
    </td>
    <td>Yes</td>
    <td>String</td>
    <td>Supported values: "textToText", "textToImage", "imageToText", and "audioToText"</td>
  </tr>
  <tr>
    <td><code>fields.mapProvider</code>
    </td>
    <td>Yes</td>
    <td>String</td>
    <td>Supported values: "anthropicModel", "geminiModel", and "openAIModel"</td>
  </tr>
</table>

---

#### Sample Request – OpenAI Connection

```
curl --location 'https://{{host}}/api/public/connections' \
--header 'x-api-key: {{apiKey}}' \
--header 'Content-Type: application/json' \
--data '{
  "provider": "Open AI",
  "connectionName": "OpenAI GPT-4o",
  "model": "gpt-4o",
  "fields": {
    "API_KEY": "sk-***************"
  }
}'
```


**OpenAI Field (<code>provider: "Open AI"</code>)**


<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>fields.API_KEY</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Your OpenAI API key
   </td>
  </tr>
</table>



---


#### Sample Request – Azure OpenAI Connection

```
curl --location 'https://{{host}}/api/public/connections' \
--header 'x-api-key: {{apiKey}}' \
--header 'Content-Type: application/json' \
--data '{
  "connectionName": "Azure GPT-4",
  "provider": "Azure Open AI",
  "model": "GPT-4",
  "fields": {
    "API_KEY": "***************",
    "api_version": "2024-08-01-preview",
    "your_resource_name": "your-azure-resource",
    "deployment_id": "your-deployment-id"
  },
  "modelType": "EASY_INTEGRATION"
}'
```

**Azure OpenAI Fields (<code>provider: "Azure Open AI"</code>)**


<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>fields.API_KEY</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Your Azure OpenAI API key
   </td>
  </tr>
  <tr>
   <td><code>fields.api_version</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>API version (for example, <code>2024-08-01-preview</code>)
   </td>
  </tr>
  <tr>
   <td><code>fields.your_resource_name</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Your Azure resource name
   </td>
  </tr>
  <tr>
   <td><code>fields.deployment_id</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Your deployment ID
   </td>
  </tr>
</table>



---


#### Sample Request – Anthropic Connection

```
curl --location 'https://{{host}}/api/public/connections' \
--header 'x-api-key: {{apiKey}}' \
--header 'Content-Type: application/json' \
--data '{
  "connectionName": "Anthropic Claude",
  "provider": "Anthropic",
  "model": "claude-3-5-haiku-20241022",
  "fields": {
    "API_KEY": "***************"
  },
  "modelType": "EASY_INTEGRATION"
}'
```


**Anthropic Field (<code>provider: "Anthropic"</code>)**


<table>
  <tr>
   <td><strong>Field</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>fields.API_KEY</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>Your Anthropic API key
   </td>
  </tr>
</table>



---


#### Sample Response

```
{
  "connectionId": "cn-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
"fields": {
       "API_KEY": "sk***************MQAA"
   },
  "connectionName": "OpenAI GPT-4o",
  "provider": "Open AI",
  "model": "gpt-4o",
  "status": "ACTIVE",
  "createdOn": "2024-01-15T10:30:00.000Z"
}
```

---


### Update Connection

Updates the configuration of an existing connection. Supported only for external provider connections where `provider` is not `API`.


<table>
  <tr>
   <td><strong>Method</strong>
   </td>
   <td><strong>Endpoint</strong>
   </td>
  </tr>
  <tr>
   <td>PATCH
   </td>
   <td><code>https://{{host}}/api/public/connections/{connectionId}</code>
   </td>
  </tr>
</table>


**Path Parameters**


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>connectionId</code>
   </td>
   <td>Yes
   </td>
   <td>String
   </td>
   <td>The unique identifier of the connection
   </td>
  </tr>
</table>



#### Sample Request

```
curl --location --request PATCH 'https://{{host}}/api/public/connections/{{connectionId}}' \
--header 'x-api-key: {{apiKey}}' \
--header 'Content-Type: application/json' \
--data '{
  "fields": {
    "API_KEY": "sk-***************************"
  }
}'
```

**Body Parameters**


<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Required</strong>
   </td>
   <td><strong>Type</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td><code>fields</code>
   </td>
   <td>Yes
   </td>
   <td>Object
   </td>
   <td>Updated configuration field, API_KEY
   </td>
  </tr>
</table>


#### Sample Response

```
{
  "connectionId": "cn-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx", 
"fields": {
       "API_KEY": "sk*****************MQAA"
   },
  "connectionName": "OpenAI GPT-4o",
  "provider": "Open AI",
  "model": "gpt-4o",
  "status": "ACTIVE",
  "modifiedOn": "2024-01-16T14:45:00.000Z"
}
```

## Custom API Connection

Custom API connections let you integrate external models by configuring your own API endpoint. You control the endpoint URL, authentication, request payload, and response mappings. This functionality applies only when the provider type is set to API.

### Connection Types

Custom API connections come in two types:

**Default Provider**

* You define the complete request structure from scratch.
* Full control over payload format, variable placeholders, and response parsing.
* Use when integrating with a custom or proprietary API that doesn't follow standard LLM provider formats.

**Existing Provider**

* Uses an existing provider's request/response format such as OpenAI, Anthropic, Cohere, or Gemini.
* You only specify the endpoint and which provider format to use.
* Use when integrating with OpenAI-compatible APIs (like Groq, Together AI) or other providers that follow standard formats.

**Endpoint**

| Method | Endpoint | Update Type | Description |
|--------|----------|-------------|-------------|
| `PATCH` | `https://{{host}}/api/public/connections/{connectionId}` | Partial | Modifies only specified fields; preserves everything else. |
| `PUT` | `https://{{host}}/api/public/connections/{connectionId}` | Full | Replaces the entire config. Requires all mandatory fields. |

---

**Path Parameters**

| Parameter | Required | Type | Description |
|-----------|----------|------|-------------|
| `connectionId` | Yes | String | The unique identifier of the Custom API connection |

---

### Partial Update (PATCH)

Use `PATCH` for quick changes, such as rotating an API key or updating a model name, without sending the entire configuration object. Only the fields you include in the request will be updated.

#### Sample Request: Default Provider (Updating Endpoint and Headers)

This example shows how to update connections where you define the complete request structure.

```bash
curl --request PATCH 'https://{{host}}/api/public/connections/{connectionId}' \
  --header 'x-api-key: {{apiKey}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "connectionName": "Updated Custom Provider",
    "endpointUrl": "https://api.example.com/v2",
    "headers": [{"key": "x-api-key", "value": "new-key-123"}],
    "outputPath": "result.text"
  }'
```

**Body Parameters**

| Parameter | Type | Description |
|-----------|------|-------------|
| `connectionName` | String | Display name for the connection |
| `model` | String | Model identifier |
| `endpointUrl` | String | API endpoint URL |
| `headers` | Array | HTTP headers to include in requests |
| `status` | String | Connection status: `DRAFT` or `FINALIZED` |

**API Fields**

| Field | Type | Description |
|-------|------|-------------|
| `promptVars` | array | Variable definitions for prompts |
| `customVars` | array | Custom variable definitions |
| `payload` | object | Request body template with variable placeholders |
| `outputPath` | string | JSONPath to extract response text |
| `inputTokensPath` | string | JSONPath to extract input token count |
| `outputTokensPath` | string | JSONPath to extract output token count |

---

#### Sample Request: Existing Provider (Updating Features)

This example shows how to update connections that use standard provider formats (OpenAI, Anthropic, etc.).

```bash
curl --request PATCH 'https://{{host}}/api/public/connections/{connectionId}' \
  --header 'x-api-key: {{apiKey}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "connectionName": "Groq LLaMA Updated",
    "model": "llama3-8b-8192",
    "llmFeatures": {
      "toolCalling": true,
      "streaming": true,
      "supportTools": true,
      "parallelToolCalling": false,
      "structuredResponse": false,
      "dataGeneration": false
    }
  }'
```

**Body Parameters**

| Parameter | Type | Description |
|-----------|------|-------------|
| `connectionName` | String | Display name for the connection |
| `model` | String | Model identifier |
| `endpointUrl` | String | API endpoint URL |
| `headers` | Array | HTTP headers to include in requests |
| `status` | String | Connection status: `DRAFT` or `FINALIZED` |

**API Fields**

| Field | Type | Description |
|-------|------|-------------|
| `mapProvider` | String | Tells the system which template to use: `openAIModel` or `anthropicModel`. |
| `llmFeatures` | Object | A set of boolean flags (e.g., `streaming: true`, `toolCalling: true`). |
| `IOMappings` | Array | List of supported modalities (e.g., `["textToText", "imageToText"]`). |
| `idp` | string | Identity provider setting; usually set to `"none"`. |

---

### Full Replace (PUT)

Use `PUT` when you need to completely reconfigure a connection or when moving a connection status from `DRAFT` to `FINALIZED`. You must provide all mandatory fields for the connection type.

#### Sample Request: Default Provider (Full Payload)

This example shows how to use `PUT` for a Default Provider connection. You must include the complete configuration, including all prompt variables, payload structure, and output paths.

```bash
curl --request PUT 'https://{{host}}/api/public/connections/{connectionId}' \
  --header 'x-api-key: {{apiKey}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "model": "CustomProvider-v2",
    "connectionName": "Fully Updated Custom Provider",
    "endpointUrl": "https://api.newprovider.com/v1/completions",
    "headers": [
      {"key": "Authorization", "value": "Bearer new-secret-key"},
      {"key": "Content-Type", "value": "application/json"}
    ],
    "promptVars": [
      {"name": "prompt", "displayName": "Prompt", "status": true, "dataType": "String", "elementType": "textBox", "defaultValue": "", "required": true},
      {"name": "system_prompt", "displayName": "System Prompt", "status": true, "dataType": "String", "elementType": "textBox", "defaultValue": "You are a helpful assistant", "required": false},
      {"name": "examples", "displayName": "Examples", "status": false, "dataType": "String", "elementType": "textBox", "examples": true, "defaultValue": "", "required": false}
    ],
    "customVars": [],
    "payload": {
      "model": "gpt-4-turbo",
      "max_tokens": 4096,
      "temperature": 0.8,
      "messages": [
        {"role": "system", "content": "{{system_prompt}}"},
        {"role": "user", "content": "{{prompt}}"}
      ]
    },
    "outputPath": "choices[0].message.content",
    "inputTokensPath": "usage.prompt_tokens",
    "outputTokensPath": "usage.completion_tokens",
    "status": "FINALIZED"
  }'
```

**Body Parameters**

| Parameter | Type | Description |
|-----------|------|-------------|
| `connectionName` | String | Display name for the connection |
| `model` | String | Model identifier |
| `endpointUrl` | String | API endpoint URL |
| `headers` | Array | HTTP headers to include in requests |
| `status` | String | Connection status: `DRAFT` or `FINALIZED` |

**API Fields**

| Field | Type | Description |
|-------|------|-------------|
| `promptVars` | array | Variable definitions for prompts |
| `customVars` | array | Custom variable definitions |
| `payload` | object | Request body template with variable placeholders |
| `outputPath` | string | JSONPath to extract response text |
| `inputTokensPath` | string | JSONPath to extract input token count |
| `outputTokensPath` | string | JSONPath to extract output token count |

---

#### Sample Request: Existing Provider (Full Payload)

This example shows how to use `PUT` for an Existing Provider connection. You must specify the provider format to use and the LLM capabilities.

```bash
curl --request PUT 'https://{{host}}/api/public/connections/{connectionId}' \
  --header 'x-api-key: {{apiKey}}' \
  --header 'Content-Type: application/json' \
  --data '{
    "model": "llama3-70b-8192-updated",
    "connectionName": "Groq LLaMA Full Update",
    "endpointUrl": "https://api.groq.com/openai/v1/chat/completions",
    "headers": [
      {"key": "Authorization", "value": "Bearer gsk_newkey12345"},
      {"key": "Content-Type", "value": "application/json"}
    ],
    "mapProvider": "openAIModel",
    "llmFeatures": {
      "toolCalling": true,
      "supportTools": true,
      "parallelToolCalling": true,
      "structuredResponse": true,
      "dataGeneration": false,
      "streaming": true
    },
    "IOMappings": ["textToText", "imageToText"],
    "status": "FINALIZED",
    "idp": "none"
  }'
```

**Body Parameters**

| Parameter | Type | Description |
|-----------|------|-------------|
| `connectionName` | String | Display name for the connection |
| `model` | String | Model identifier |
| `endpointUrl` | String | API endpoint URL |
| `headers` | Array | HTTP headers to include in requests |
| `status` | String | Connection status: `DRAFT` or `FINALIZED` |

**API Fields**

| Field | Type | Description |
|-------|------|-------------|
| `mapProvider` | String | Tells the system which template to use: `openAIModel` or `anthropicModel`. |
| `llmFeatures` | Object | A set of boolean flags (for example: `streaming: true`, `toolCalling: true`). |
| `IOMappings` | Array | List of supported modalities (for example: `["textToText", "imageToText"]`). |
| `idp` | string | Identity provider setting; usually set to `"none"`. |