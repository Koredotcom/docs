# Managing Open-Source Models

The Open-source models tab in the Models section allows you to import, deploy, and manage open-source models. You can also view existing models, manage deployments, and configure access settings.

- **[Import a Model](../open-source-models/importing-models.md)** – Upload a .zip file from your local machine.  
- **[Deploy a Model](../open-source-models/select-and-deploy-an-open-source-model.md)** – Launch a new deployment for a listed or newly imported model.  

After deployment, the model appears in the listing page along with the number of deployments.

-----

## Viewing the Model List

The models list displays all the open-source models along with the following details:

| Field | Description |
|-------|-------------|
| **Model Name** | Name of the model. For imported models, the name is derived from the uploaded .zip file. |
| **Active Deployments** | Number of deployments that are currently active. |
| **Deployment Failed** | Number of deployments that failed. |
| **Ready to Deploy** | Number of deployments that are ready to be deployed. |
| **Source** | Origin of the model: File (uploaded locally), Kore Hosted, or Hugging Face. |

<img src="../images/open_source_models_new.png" alt="Open-source models table" title="Open-source models table" style="border: 1px solid gray; zoom:80%;">

Selecting a model opens its **Deployments** page, where you can view and manage all related deployments.


## Managing Model Deployments

Each model can have multiple deployments, which are tracked independently. The Deployments page displays all deployments of a selected model along with the following details:

<table>
  <thead>
    <tr>
      <th style="width: 150px;">Field</th>
      <th style="width: 500px;">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><b>Deployment Name</b></td>
      <td>Name given by the user during deployment.</td>
    </tr>
    <tr>
      <td><b>Deployment ID</b></td>
      <td>System-generated ID (not editable).</td>
    </tr>
    <tr>
    <td><b>Status</b></td>
    <td>
    The status of deployment: Deploying, Optimizing, Failed, Ready to Deploy, or Deployed.
  </ul>
</td>
    </tr>
    <tr>
      <td><b>Tags</b></td>
      <td>Labels associated with the deployment.</td>
    </tr>
    <tr>
      <td><b>Added By</b></td>
      <td>User who performed the deployment.</td>
    </tr>
    <tr>
      <td><b>Added On</b></td>
      <td>Date and time of deployment.</td>
    </tr>
    <tr>
      <td><b>Actions</b></td>
      <td>
        <b>Copy cURL</b> – Copies the cURL command for invoking this deployment.<br>
        <b>Manage API Keys</b> – Opens the API key management tab.<br>
        <b>Re-trigger</b> – Restarts the deployment (Option available only if it has failed or stopped).
      </td>
    </tr>
  </tbody>
</table>

<img src="../images/open-source_deployment_listing_view.png" alt="Open-source models table" title="Open-source models table" style="border: 1px solid gray; zoom:80%;">


## Deployment Details

Selecting a specific deployment on the Deployment page opens its detail view, where you can view and manage the configuration, endpoint, and API keys for that deployment.

- **[Model Endpoint](../open-source-models/view-the-generated-api-endpoint.md)** – View or manage the live endpoint; re-deploy if needed.
- **[API Keys](../open-source-models/generate-an-api-key-open-source.md)** – Generate and manage keys scoped to this deployment. API keys are isolated per deployment for secure access control.
- **[Configurations](../open-source-models/configure-your-open-source-model.md)** – Edit the description and tags, or undeploy/delete the model.

<img src="../images/open_source_deployment_detailed.png" alt="Open-source models table" title="Open-source models table" style="border: 1px solid gray; zoom:80%;">





#### **Running in Async Mode**

In Async mode, the workflow does not pause at the Human node. Instead, the workflow sends an immediate acknowledgement and continues execution. The Human node notifies the pre-configured callback URL when the request is sent to the human, when the human’s input is received, and when the final tool output is generated and delivered.the workflow continues immediately, while the reviewer’s input is processed in the background. 

For example, this is useful when you don’t want the workflow to block waiting for a human, which is critical for efficiency in large or automated workflows.

Async human node workflow:

1. Request received: 
    * As soon as the tool gets a request, it sends an acknowledgement back to the requestor system.
2. Workflow execution:
    * The workflow then starts execution and reaches the Human node and sends a request payload to the configured endpoint.
3. Callback generation:
    * The Human node generates and shares a callback URL and request ID, which the downstream service uses to return the reviewer’s response.
    * The callback URL remains valid only for the configured wait time.
4. Waiting status update:
    * When the tool reaches the Human node and is waiting for input, a status update is sent to the pre-configured URL [URL set when configuring the tool’s async endpoint].
5. Reviewer receives and responds:
    * The downstream service delivers the request to the reviewer.
    * Once the reviewer provides input, the response is sent back to the callback URL.
    * Late or duplicate responses are ignored.
6. Continuing execution status update:
    * After receiving data from the human, the tool continues execution from the Human node.
    * A status update for the tool output is sent to the pre-configured URL [URL set when configuring the tool’s async endpoint].
7. Outcome handling:
    * Reviewer responds in time **→** Workflow resumes at the configured **Success path**.
    * No response before timeout **→** Workflow follows the configured** timeout optio**n (Terminate or Skip & Continue).
    * Failure in delivery **→** Workflow follows the **Failure path**.
8. Final output:
    * The tool’s final output — including the reviewer’s response, or error/timeout details — is sent to the pre-configured callback URL and logged in the Debug Panel.




Async human node workflow:

1. **Request received**: As soon as the tool gets a request, it sends an acknowledgement back to the requestor system.
2. **Workflow execution**: The workflow then starts execution and reaches the Human node and sends a request payload to the configured endpoint.
3. **Callback generation**: The Human node generates and shares a callback URL and request ID, which the downstream service uses to return the reviewer’s response. The callback URL remains valid only for the configured wait time.
4. **Waiting status update**: When the tool reaches the Human node and is waiting for input, a status update is sent to the pre-configured URL [URL set when configuring the tool’s async endpoint].
5. **Reviewer receives and responds**: The downstream service delivers the request to the reviewer. Once the reviewer provides input, the response is sent back to the callback URL. Late or duplicate responses are ignored.
6. **Continuing execution status update**: After receiving data from the human, the tool continues execution from the Human node. A status update for the tool output is sent to the pre-configured URL [URL set when configuring the tool’s async endpoint].
7. **Outcome handling**:
    * Reviewer responds in time **→** Workflow resumes at the configured **Success path**.
    * No response before timeout **→** Workflow follows the configured** timeout optio**n (Terminate or Skip & Continue).
    * Failure in delivery **→** Workflow follows the **Failure path**.
8. **Final output**: The tool’s final output — including the reviewer’s response, or error/timeout details — is sent to the pre-configured callback URL and logged in the Debug Panel.