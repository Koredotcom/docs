# Open-source Models Overview

The Open-source models tab displays the following details:

* **Model Name:** The name of the model. For imported models, the name is derived from the uploaded zip filename.
* **Status:** The current status of the model:
    * **Importing:** When the file is being uploaded.
    * **Validating:** When the file is being validated.
    * **Import Failed**: If any errors occur during the import or validation process, the system displays the error details. You can fix the issue, re-import the model, or cancel the process.
    * **Ready to Deploy**: When the model is successfully imported and validated.
* **Tags:** The labels to help quickly search for models.
* **Source:** The source of the model. For example, ’File’ indicates that the model was uploaded from your local machine.
* **Added by:** The user who imported the model.
* **Updated on:** The date when the model was last updated.

<img src="../images/open_source_model_tab_details.png" alt="Open-source models table" title="Open-source models table" style="border: 1px solid gray; zoom:80%;">

Clicking each row in the list opens the model settings page with the following sections:

* **Model Endpoint**: Start the deployment.
* **API keys**: Configure the API key and deployment settings.
* **Configurations**: Add a description and tags.