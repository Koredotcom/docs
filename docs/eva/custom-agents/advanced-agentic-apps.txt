# Advanced Agentic Apps

Advanced Agentic Apps are AI-powered applications that leverage Kore’s Agent platform to autonomously manage complex business tasks and workflows. These applications can rapidly respond to evolving business requirements and circumstances in real time by employing adaptive algorithms for dynamic decision-making. They can significantly increase your organization's operational efficiency and decision-making capabilities by integrating artificial intelligence with business process automation.

## Creating Agentic App

The creation of a new Advanced Agentic App follows a structured, four-step process designed to ensure proper configuration and deployment.

Follow these steps to create a new Agentic Advanced App:

1. Access the Admin Console:
    * Navigate to **Agents and Apps** in the left pane.
    * Under Agentic Apps, select **Advanced Apps** to view the list of existing applications. 
2. Initiate Agent Creation:
    * Click **+Create Agent** on the Agentic App page.
    * The **App Creation Wizard** guides you through the setup process.
    <img src="../images/Advance_Agentic_App_1.png" alt="Admin Console" title="Admin Console" style="border: 1px solid gray; zoom:70%;">
3. Details and Purpose: Define your app's name and purpose for optimal performance.
    * **Icon**:Choose from the predefined icon library or upload a custom icon.
    * **Agent Name**: Enter a unique and meaningful name for your app.
    * **Purpose of app**: Define the intended functionality of the app for query routing and training. This field specifies both the default prompt and sample queries that help the system in correctly routing user queries to the appropriate application.
4. Configure Agentic App: The configuration step establishes the technical foundation of your app through API integration.  

     Define API fields as per the details below:

     * **URL**: Enter the endpoint URL of the app obtained from the Agentic Platform.
  
     * **Method**: Enter the type of request you want to make.
  
     * **Headers**: Specify the information that helps to customize your API request. These are like special instructions that come with your request, such as authentication tokens or specifying the type of data you're sending. You can add multiple headers as needed.
  
     * **Query String**: Specify additional information attached to the end of your URL to filter or customize your request.
  
     * **Body Type**: Enter the format of the data you are sending with your request. Common types include JSON, or Raw. This tells the API how to interpret the information you're sending.
  
     * **Content Type**: Enter a specific label that tells the API what kind of data you are sending.

     Curl Import: For existing APIs, use the CURL Import functionality to automatically populate API configuration:

     1. Click **Curl Import** to open the import interface.
     1. Paste your CURL command into the text box.
     1. Click **Import** to extract API details.
     <img src="../images/Advance_Agentic_App_2.png" alt="Admin Console" title="Admin Console" style="border: 1px solid gray; zoom:70%;">

5. Preview: The **Preview** section displays sample queries to test the app’s behavior.
     1. Click **+Add Query** to input additional test queries.
     1. Once validated, click **Continue** to move to the final step.
     <img src="../images/Advance_Agentic_App_3.png" alt="Admin Console" title="Admin Console" style="border: 1px solid gray; zoom:70%;">


6. Publish: Publish your app and define access permissions and enablement. To deploy the Agentic App, specify publishing details:
     * **Published Version**: Select the appropriate version for deployment.
     * **Publish To**: Define access permissions:
         * **Admins**: Restrict usage to admin users.
         * **Selected User Groups/Users**: Grant access to specific users or groups.
         * **Everyone in the Account**: Make the app available to all users.
     * **Enablement Type**: Configure how users interact with the app:
         * **Always Enabled**: The app remains active and cannot be disabled.
         * **Users Choice**: Users can enable or disable the app as needed.
         <img src="../images/Advance_Agentic_App_4.png" alt="Admin Console" title="Admin Console" style="border: 1px solid gray; zoom:70%;">


7 Click **Publish** to make the agent available. The app appears in the **Advanced App List** on the Admin Console page.

## Import existing Advanced App

To import an existing Advanced App:

1. Click the **Import** **Agent** button located in the upper-right corner.
2. Select the .ZIP file of the existing app.
3. Click **Import** to complete the process. The imported agent will appear on the Advanced App page.

## Modifying an Advanced Agentic app

Make changes to your app's configuration and settings as needed.

To edit an existing Advanced Agentic app:

1. Navigate to the **Advanced Agentic app list** page and locate the app you wish to modify.
2. Click **three dots icon** next to the app’s name. A menu with the following options will appear:
    1. **Edit**: Open and modify the app's details.
    2. **Publish/Unpublish**: Change the app's status.
    3. **Delete**: Permanently remove the app.
3. Select the required option and continue to complete the modifications as needed.

## Agent Options

Manage your app's deployment, data, and availability post-publication. Agent options are enabled after publishing your Advanced Agentic application. You can perform the following actions on published apps:

* **Export Agent**: Download agent configuration and associated data.
* **Delete Agent**: Permanently remove the application.
* **Unpublish Agent**: Revert agent to draft status, making it unavailable for production use.

## Usage

Advanced Agentic Apps integrate seamlessly with the Kore Agent Platform to provide intelligent, automated assistance for business tasks. You can trigger an app from the **Compose bar > Agents > Apps tab**. Here's how they operate in practice:

When deployed, the Agentic App appears as an interactive application within the AI Work interface. As shown in the example screenshot, users can engage in natural conversations with the app to accomplish specific tasks. The app understands the context, process requests, and provides relevant responses based on its configured capabilities.

<img src="../images/Advance_Agentic_App_5.png" alt="Admin Console" title="Admin Console" style="border: 1px solid gray; zoom:70%;">
