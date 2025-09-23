# Tools APIs

Agent Platform provides secured APIs to manage tools, models, guardrails, prompts, files, and evaluations. Developers can perform key activities like deployment, import/export, monitoring, analytics, billing, and reporting using these APIs at the appropriate endpoints.

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

## How to Create the API Key?

1. Login to Agent Platform and [access](../administration/overview.md/#access-settings-console){:target="_blank"} the **Settings** Console.

2. On the left menu, click **Security & Control** -> **API Scopes**.

3. Create an API app and include all the required scopes, and the API keys as mentioned [here](../settings/security-and-control/api-scopes.md){:target="_blank"}.

<div class="admonition note">
<p class="admonition-title">Important</p>
<p>You can copy the API key only once and must not lose it. Save the key in a secure location for future use.</p>
</div>


## APIs List

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
    <td><a href="../apis-list/upload-file-api/">File Upload API</a>
   </td>
   <td>To upload a small or large public file in the allowed format.
   </td>
  </tr>
    <tr><td><b>View Process Status</b></td>
     <td><a href="../apis-list/get-dock-status/">Get Dock Status API</a>
   </td>
   <td>To check the status of an ongoing or completed job related to tools or models.
   </td>
  </tr>
  <tr><td rowspan="5"><b>Manage a Tool</b></td>
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
   <td>To deploy a model into the environment in the <strong><em>Ready to Deploy</em></strong> state and configure its parameters. The initial deployment must be done manually in the Agent Platform account. Consecutive deployments must happen via the public API.
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




