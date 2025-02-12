# Standard Agentic Apps

Standard Agentic applications enable the sequential execution of multiple AI agents to accomplish and automate complex tasks efficiently using AI agents. These applications streamline workflows by automating interactions and decision-making processes based on predefined logic and user input.

## Creating Standard Agentic app

Follow these steps to create a new Standard Agentic app:

1. Access the Admin Console
    * Navigate to **Agents and Apps** in the left pane.
    * Select **Standard Apps** to view the list of existing applications.
    <img src="../images/Agentic_App_1.png" alt="Admin Console" title="Admin Console" style="border: 1px solid gray; zoom:70%;">

2. Initiate Agent Creation
    * Click **+Create Agent** on the Standard Agentic app page.
    * The **Prompt Standard App Creation Wizard** guides you through the setup process.
    <img src="../images/Agentic_App_2.png" alt="Admin Creation" title="Admin Creation" style="border: 1px solid gray; zoom:70%;">

### Step 1: Details and Purpose

Define your app's name and purpose for optimal performance.

* **App Name**: Enter a unique and meaningful name for your app.
* **Purpose**: Defines the intended functionality of the app for query routing and training. This field specifies both the default prompt and sample queries that help the system in correctly routing user queries to the appropriate application.  
<img src="../images/Agentic_App_3.png" alt="Details and Purpose" title="Details and Purpose" style="border: 1px solid gray; zoom:70%;">

!!! note

    A well-defined purpose enhances the agent’s ability to correctly interpret and execute tasks, ensuring precise and effective responses to user queries.

### Step 2: Build Agentic Flow

Customize the app's workflow using a prompt-based interface.

1. **Prompt**: A default prompt is auto-generated based on the agent’s purpose. This prompt can be customized using variables. Based on the defined purpose, the system automatically generates the necessary workflow steps to complete the task. For example, in a financial advisor workflow, performing research, checking who owns the shares, and deciding to sell or hold shares based on research.  
<img src="../images/Agentic_App_4.png" alt="Prompt" title="Prompt" style="border: 1px solid gray; zoom:70%;">
2. Click **Get Flow** to review.
3. Customize your flow as needed:
    * To add a step: Click **+ Add** button above or below any existing step.
    * To edit or delete a step: Hover on the step and find options to either edit or delete the step.
    <img src="../images/Agentic_App_5.png" alt="Edit" title="Edit" style="border: 1px solid gray; zoom:70%;">
    * To reorder steps: Drag and drop steps to the desired position.
4. Click **Run** to execute all configured steps sequentially.
5. Click **Continue** to proceed to the next step.  
<img src="../images/Agentic_App_6.png" alt="Build Agentic Flow" title="Build Agentic Flow" style="border: 1px solid gray; zoom:70%;">

### Step 3: Preview

The **Preview** section displays sample queries to test the app’s behavior.

1. Click **+Add Query** to input additional test queries.
2. Once validated, click **Continue** to move to the final step.  
<img src="../images/Agentic_App_7.png" alt="Preview" title="Preview" style="border: 1px solid gray; zoom:70%;">

### Step: 4 Publish

Publish your app and define access permissions and enablement.

To deploy the Standard Agentic app, complete the following steps:

**Specify publishing details**:

* **Published Version**: Select the appropriate version for deployment.
* **Publish To**: Define access permissions:
    * **Admins**: Restrict usage to Admin users.
    * **Selected User Groups/Users**: Grant access to specific users or groups.
    * **Everyone in the Account**: Make the app available to all users.
* **Enablement Type**: Configure how users interact with the app:
    * **Always Enabled**: The app remains active and cannot be disabled.
    * **Users Choice**: Users can enable or disable the app as needed.

<img src="../images/Agentic_App_8.png" alt="Publish" title="Publish" style="border: 1px solid gray; zoom:70%;">

**Finalize deployment**:

* Click **Publish** to make the agent available. The app appears in the **Standard App List** on the Admin Console page.

## Modifying an Standard Agentic app

Make changes to your app's configuration and settings as needed.

To edit an existing Standard Agentic app:

1. Navigate to the **Standard Agentic app list** page and locate the app you wish to modify.
<img src="../images/Agentic_App_9.png" alt="Modifying an Standard Agentic app" title="Modifying an Standard Agentic app" style="border: 1px solid gray; zoom:70%;">

2. Click **three dots icon** next to the app’s name. A menu with the following options will appear:
    * **Edit**: Open and modify the app's details.
    * **Publish/Unpublish**: Change the app's status.
    * **Delete**: Permanently remove the app.
3. Select the required option and continue to complete the modifications as needed.

## Agent Options

Manage your app's deployment, data, and availability post-publication. Agent options are enabled after publishing your Standard Agentic application. You can perform the following actions on published apps:

* **Export Agent**: Download agent configuration and associated data.
* **Delete Agent**: Permanently remove the application.
* **Unpublish Agent**: Revert agent to draft status, making it unavailable for production use.
  
!!! Caution

     Exercise caution when using delete or unpublish options, these actions directly impact your application's functionality.

## Example Implementation: Finance Advisor

### Accessing the Finance Advisor App

1. Locate the Finance Advisor:
    * Enter "Finance Advisor" in the search box at the **Home** page. The search results will display a matching application.  
    <img src="../images/Agentic_App_10.png" alt="Finance Advisor" title="Finance Advisor" style="border: 1px solid gray; zoom:70%;">

2. Review flow Configuration:
    * Upon accessing the Finance Advisor app, you will see a structured sequence of agent flows.
    * Each flow represents a specific stage of financial analysis.
    * Options available for each flow:
        * **Add**: Include new analysis steps
        * **Edit**: Modify existing step
        * **Delete**: Remove a step
    * Click **Start** to execute the sequence of flows.  
    <img src="../images/Agentic_App_11.png" alt="Configuration" title="Configuration" style="border: 1px solid gray; zoom:70%;">

### Flow Execution and Results

#### Step 1: Market Analysis Overview

The initial step employs the RAG (Retrieval Augmented Generation) agent to conduct a comprehensive analysis of NVIDIA's market performance. The agent processes indexed files to evaluate current market indicators and historical performance patterns.

<img src="../images/Agentic_App_12.png" alt="Market Analysis" title="Market Analysis" style="border: 1px solid gray; zoom:70%;">

#### Step 2: Company Share Owners

During the second step, the system uses the API agent to retrieve detailed ownership information from the client database. This procedure produces a comprehensive overview of existing shareholders, which includes institutional investors, individual stakeholders, and client portfolio allocations.

<img src="../images/Agentic_App_13.png" alt="Company Share Owners" title="Company Share Owners" style="border: 1px solid gray; zoom:70%;">

#### Step 3: Client Information and Risk Factor

The third step activates the Prompt agent to perform a thorough risk evaluation and develop strategic recommendations. Based on the consolidated data from previous steps, the agent formulates hold or sell recommendations.

<img src="../images/Agentic_App_14.png" alt="Client Information and Risk Factor" title="Client Information and Risk Factor" style="border: 1px solid gray; zoom:70%;">

#### Step 4: Compose an Email

The final step automatically generates a professional email that synthesizes all analyses and recommendations from the previous flows.

**Email Format**:

* Professional business format with clear sections.
* Data visualizations and tables where applicable.
* Formal closing with contact details.

<img src="../images/Agentic_App_15.png" alt="Email Format" title="Email Format" style="border: 1px solid gray; zoom:70%;">

!!! note

    The email can be edited and customized before sending to ensure it meets specific communication requirements and organizational standard.

    
