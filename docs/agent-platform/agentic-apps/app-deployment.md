# App Deployment

App deployment is the process of making an application version available in a specific environment, such as development, staging, or production. App deployment is a two-step process: creating an app version and deploying it in a specific environment. Once deployed, users can access the app via the generated URL or endpoint. 

## Create an App Version

The app versioning system ensures version consistency, stable releases, and streamlined deployment across environments, managing the entire app lifecycle, including the interconnected agents.

### Key Benefits

* **Coordinated Agent Management:** Synchronizes multiple AI agents while maintaining system stability.

* **Version Alignment:** Links agent versions with app versions for simplified tracking.

* **Immutable Releases:** Prevents changes to deployed versions to ensure stability and maintain consistency.

* **Draft Testing:** Fully test apps in draft mode before finalizing a version to ensure optimal performance.

* **Selective Versioning:** Choose draft, previous, or specific versions of agents and tools.

* **Environment Isolation:** Deploy separate versions to development, testing, and production environments.

* **Controlled Deployments:** Deploy without service interruptions using structured processes.

* **Role-Based Access:** Restricts version control actions to authorized users.

* **Dependency Protection:** Blocks deletion of tools tied to existing versions.

* **Rollback Support:** Restore earlier versions to draft while maintaining full history.

* **Pre-Deployment Validation:** Automatically checks agents, tools, and configs before creating a version.

### Steps to Create and Deploy a Version

1. Go to the **Versions** page.

2. Click **+ New Version**.  
  <img src="../images/new-version.png" alt="New version" title="New version" style="border: 1px solid gray; zoom:70%;">

3. Enter the **Name** and **Description**, then click **Create**.
  <img src="../images/new-app-version.png" alt="New app version" title="New app version" style="border: 1px solid gray; zoom:70%;">


4. Once the version is created, a dialog appears with **Deploy** and **Preview** options:  
  <img src="../images/version-created-successfully.png" alt="Version created successfully" title="Version created successfully" style="border: 1px solid gray; zoom:70%;">

**If you choose Deploy:**

1. The **Deploy to Environment** dialog opens.

2. Select the **Environment** and **App Version** from the dropdowns.

3. Click **Proceed** to deploy.  
   <img src="../images/deploy-to-environment.png" alt="Deploy to environment" title="Deploy to environment" style="border: 1px solid gray; zoom:40%;">

**If you choose Preview:**

1. A preview page opens, showing **Agents Overview** and **Configurations**.

2. Review the information and click **Done**.  
   <img src="../images/preview.png" alt="Preview" title="Preview" style="border: 1px solid gray; zoom:40%;">

### Restore a Version

Restoring a version reverts the current draft to a previously saved state. It replaces the existing draft with the selected version, removes any agents not included in that version, and retains the complete version history for traceability.  
   <img src="../images/restore-version.png" alt="Restore version" title="Restore version" style="border: 1px solid gray; zoom:70%;">

### Delete a Version

Handles the removal of an app version while performing dependency checks to ensure no linked agents or tools are impacted.  
   <img src="../images/delete-version.png" alt="Delete version" title="Delete version" style="border: 1px solid gray; zoom:70%;">

## Deploy the App Version in an Environment

The Environments feature enables users to configure separate deployment environments for their agents, supporting multiple environments, including development, testing, staging, and production, throughout the application development and deployment lifecycle. Each environment has its isolated configurations.

### Key Benefits

* **Integrated Draft Development:** The default "draft" environment is typically used for initial development and testing.

* **Isolated Environments:** Separate dev, test, and production setups with unique configurations.

* **Targeted Version Control:** Deploy specific app versions to designated environments

* **Dedicated Endpoints:** Each environment provides a unique URL for testing or integration.

* **Promotion Workflow:** Promote versions step-by-step as they pass validation.

* **CI/CD Integration:** Supports automated pipelines for testing and deployment.

* **Environment Configs:** Customize configurations without affecting app logic.

* **Deployment History:** View detailed logs of all deployments across environments.

### Steps to Create an Environment

1. Go to the **Environments** page.

2. Click **+ New Environment**.  
   <img src="../images/new-environment.png" alt="New environment" title="New environment" style="border: 1px solid gray; zoom:70%;">


3. Enter the **Name**, **Description**, and select the **App Version**.

4. Click the **Preview** icon to review version details.

5. Click **Create**.  
   <img src="../images/new-environment-fields.png" alt="New environment fields" title="New environment fields" style="border: 1px solid gray; zoom:40%;">


Once created, the Environments page is displayed, listing the draft and the created environments.

* A **Draft** environment for ongoing deployment.

* The new environment tile.  
   <img src="../images/environments.png" alt="Environment tiles" title="Environments tiles" style="border: 1px solid gray; zoom:70%;">

**Manage an Environment**

Click the environment to see its details and manage it:

* **Linked App Version:** To switch app versions, click **Change**, select the desired version from the list, and then click **Deploy**.
* **Web Client Details:** View the URL generated by the agent platform to start interacting with the app.
* **cURL script:** Use the curl script to interact with the app through the code. Construct your API requests in accordance with the given specifications.
* **Delete Environment:** This function handles the removal of an environment with user confirmation, ensuring associated configurations are cleaned up, endpoints are deactivated, and resources are released. Audit logs and usage statistics are preserved for future reference.  
   <img src="../images/web-client-details.png" alt="Web client details" title="Web client details" style="border: 1px solid gray; zoom:80%;">

## Integrate the App within a Website via Webclient Script

The Webclient Script provides a simple integration method for embedding the Agentic app within your existing website. It provides users with a smooth, native experience without redirecting them to another site.

### Key features and benefits 

* **Single-Script Integration:** Add the application with just one `<script>` tag.
* **Seamless User Experience:** Users can interact directly with the app within your website.
* **Customizable Appearance:** Configure to match your brand's look and feel.
* **Seamless Session Management:** Maintains user context and authentication state between the site and the app.

### Steps to Access the Webclient Script for an App

1. Go to the **Environments** page of the app.
1. Select the environment tile for which you want to access the script.  
   <img src="../images/webclient-script.png" alt="Webclient script" title="Webclient script" style="border: 1px solid gray; zoom:80%;">
1. Click **Embed Code**.  
   <img src="../images/embed-code.png" alt="Embed code" title="Embed code" style="border: 1px solid gray; zoom:80%;">
1. Copy the provided HTML code and paste it into the desired location in your application or website where you want the chat experience to appear.

!!! note
 
    The 'containerId' parameter must match an existing HTML element ID in your webpage. Before initializing the SDK, ensure that you have created a container element (for example, `<div id="container-id"></div>`) where you want the chat widget to appear. The chat interface will render inside this element, so position it strategically within your page layout.

## Generate the API Key for App Authentication

API Key is required to authenticate the requests sent to the Agentic App via APIs. Follow the steps to create a new API Key.

* Go to the API Keys page and create a new API key.
* Provide a name for the key and click Generate Key. This will create a unique key. Keep it confidential. For security reasons, you will not be able to view this key again once you navigate away from the page.

## Track User Activity with Audit Logs

Audit logs provide a comprehensive record of all changes made across the account by different users. These logs are essential for tracking user activity, ensuring compliance, and pinpointing any unauthorized modifications, which enhances the overall security and accountability within the system.