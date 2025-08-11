# Overview

GALE provides secured APIs to manage agents/tools, models, guardrails, prompts, files, and evaluations. Developers can perform key activities like deployment, import/export, monitoring, analytics, billing, and reporting using these APIs at the appropriate endpoints.

## API Key Authentication

Public APIs require an API key for authentication and authorization. The account owner or admin can generate this key in the **Settings** console. 

An API key serves as a unique identifier for the client or application accessing the API, ensuring security and access control. It helps:

* **Authenticate requests** – Verify the identity of the client.
* **Control access** – Restrict API usage based on permissions or rate limits.
* **Monitor usage** – Track API calls for analytics, billing, or debugging.
* **Prevent abuse** – Protect against unauthorized or excessive use.

API keys are typically included in request headers or parameters to validate access.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Each API key includes <b>created on</b> and <b>last used</b> dates to track its usage history.</p>
</div>

## How to Find the API Key?

1. [Login](../getting-started/sign-up-sign-in.md#sign-in-to-gale){:target="_blank"} to GALE and [access](../settings/settings-overview.md#access-settings-console){:target="_blank"} the **Settings** Console.

2. On the left menu, click **Security & Control** -> **Management API keys**.

3. Click the **Create API key** button if you are creating an API key for the first time.
<img src="../images/access-create-api-keys.png" alt="create api key" title="create api key" style="border: 1px solid gray; zoom:75%;">

Otherwise, click **Create**.

<img src="../images/management-api-keys.png" alt="management api keys" title="management api keys" style="border: 1px solid gray; zoom:75%;">

<ol start="4"><li>In the <b>Create new API key</b> dialog, provide a name and click <b>Generate Key</b>.
<img src="../images/create-new-api-key-form.png" alt="create a new api key" title="create a new api key" style="border: 1px solid gray; zoom:75%;"></li>
<li>Once the key is successfully generated, click <b>Copy and Close</b> to copy the API key.
<img src="../images/generate-new-secret-key.png" alt="copy api key" title="copy api key" style="border: 1px solid gray; zoom:75%;"></li></ol>

## List of APIs

Currently, the following APIs are available:

<table>
  <tr>
   <td><strong>SCOPE</strong>
   </td>
   <td><strong>API</strong>
   </td>
   <td><strong>DESCRIPTION</strong>
   </td>
  </tr>
  <tr>
  <td><b>File Management</b></td>
    <td><a href="../apis-list/upload-file-api/" target="_blank">File Upload API</a>
   </td>
   <td>To upload a small or large public file in the allowed format.
   </td>
  </tr>
    <tr><td><b>View Process Status</b></td>
     <td><a href="../apis-list/get-dock-status/" target="_blank">Get Dock Status API</a>
   </td>
   <td>To check the status of an ongoing or completed job related to tools or models.
   </td>
  </tr>
  <tr><td rowspan="5"><b>Manage a Tool (Agent)</b></td>
    <td><a href="../apis-list/import-a-new-tool/" target="_blank">Import a New Tool API</a></td>
   <td>To import a new tool into the system.</td></tr>
    <tr><td><a href="../apis-list/import-to-an-existing-tool/" target="_blank">Import to an Existing Tool API</a></td>
   <td>To import new configurations, datasets, or updates into an already existing tool within the system.</td></tr>
  <tr><td><a href="../apis-list/export-a-tool/" target="_blank">Export a Tool API</a></td>
   <td>To export an existing tool's configuration and associated data, including its flow, for backup, sharing, or reuse.</td></tr>
  <tr><td><a href="../apis-list/deploy-a-tool/" target="_blank">Deploy a Tool API</a></td>
   <td>To deploy a specific tool into an environment.</td></tr>
  <tr><td><a href="../apis-list/undeploy-a-tool/" target="_blank">Undeploy a Tool API</a>
   <td>To undeploy a specific tool from an environment.</td></tr>
  <tr><td rowspan="4"><b>Manage a Model</b></td>
   <td><a href="../apis-list/import-a-model/" target="_blank">Import a Model API</a></td>
   <td>Import a model in chunks into the system.</td></tr>
  <tr><td><a href="../apis-list/export-a-model/" target="_blank">Export a Model API</a></td>
   <td>To export a trained AI model from the system.</td>
  </tr>
  <tr><td><a href="../apis-list/deploy-a-model/" target="_blank">Deploy a Model API</a></td>
   <td>To deploy a model into the environment in the <strong><em>Ready to Deploy</em></strong> state and configure its parameters. The initial deployment must be done manually in the GALE account. Consecutive deployments must happen via the public API.
   </td>
  </tr>
  <tr><td><a href="../apis-list/undeploy-a-model/" target="_blank">Undeploy a Model API</a></td>
   <td>To undeploy a model from the environment.</td>
  </tr>
  <tr><td rowspan="2"><b>Manage Guardrails</b></td>
    <td><a href="../apis-list/deploy-guardrails/" target="_blank">Deploy Guardrails API</a></td>
   <td>To deploy predefined guardrails into the system.</td></tr>
   <tr><td><a href="../apis-list/undeploy-guardrails/" target="_blank">Undeploy Guardrails API</a></td>
   <td>To undeploy predefined guardrails from the system.
   </td>
  </tr>
  </table>




