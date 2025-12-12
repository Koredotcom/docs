# Manage OCR Models 

The Manage OCR Models page is the central place to configure and maintain the document-processing engines used across your workflows. Engines such as **Docling** and **Azure Doc Intelligence** power the Doc Intelligence Node, enabling text extraction, layout understanding, and (when supported) structured data output.

Use this page to enable engines, deploy models, and keep your OCR capabilities up to date.

## Configure Docling Models

Docling models provide AI-powered document extraction, including text, layout, and structured data.

Select the Docling tab to deploy new models or manage existing deployments. Docling must be configured here before it appears as an available engine inside the Doc Intelligence Node. You can have multiple deployments of docking models.

### Deploy a New Docling Model

Follow these steps to configure and deploy a new Docling model:

1. Go to **Settings → Manage Models → OCR**.
2. Click **Deploy a Model** to open the deployment panel.
3. **General Details**:
    * Enter a unique deployment name and an optional description.
    * English ('en') is auto-selected by default. You can select one more additional language for better model performance.
4. **Resource allocation:** Configure the deployment resources:
    * Minimum replicas
    * Maximum replicas
    * Auto-scaling threshold
    * Hardware type
5. Verify all the configuration details.
6. Accept the terms and conditions and click **Deploy** to start the deployment process.

Once deployment is complete, the model appears in the Deployed list and becomes available for use in the Doc Intelligence Node.

<img src="../images/manage_ocr_docling_new.png" alt="manage OCR" title="manage OCR" style="border: 1px solid gray; zoom:80%;">

### Manage Existing Deployments

You can view, undeploy, or delete Docling deployments directly from the list using the available actions.

* Viewing Deployment Details: Click any deployment row to view its full configuration in the overview panel.
* Undeploy or Delete: Open the deployment’s configuration page to undeploy it, then delete it if needed.

## Configure Azure Doc Models

The Azure Doc Intelligence page lets you connect external Azure document-processing models for use inside the Doc Intelligence Node. You can add multiple Azure connections, manage them, and control which ones are active for your workflows.

Azure must be configured here before it appears as an engine option in the Doc Intelligence Node.

### Add a New Azure Doc Model

You can add multiple Azure Doc Intelligence connections to your workspace and switch between them as needed.

Follow these steps to add an external Azure Doc Intelligence connection:

1. Go to **Settings → Manage Models → OCR → Azure doc**.
2. Click **Add a Connection** to open the connection panel.
3. Enter the required details:
    * **Connection Name** (must be unique)
    * **Base URL**
    * **API Key**
4. The system validates the API key and checks for duplicate names.
5. After validation succeeds, click **Save**.

A confirmation message appears, and the model is added to the list of available Azure connections.

### Manage Existing Connections

You can enable, disable, or delete Azure connections directly from the list using the available actions.

* **Enable or Disable a Connection**: Toggle the switch next to a connection to instantly enable or disable it.
* **Delete a Connection**: Click the delete icon, then confirm the action to permanently remove the connection.

<img src="../images/manage_ocr_azure.png" alt="manage OCR" title="manage OCR" style="border: 1px solid gray; zoom:80%;">