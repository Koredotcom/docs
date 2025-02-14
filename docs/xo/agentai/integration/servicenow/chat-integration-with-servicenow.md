# Agent AI Chat Integration with ServiceNow

This document provides detailed instructions on integrating the Kore.ai Agent AI widget with ServiceNow Desktop for the Chat channel. The integration supports [all features of Agent AI](./../../agent-experience/agent-assist-widget-v3.md){:target=”_blank”}. It also includes an end-of-call summary and Custom Data passing, such as agent name and ID, to the Agent AI widget.

## Prerequisites

This section outlines the essential components, credentials, and permissions required for integrating Agent AI Chat with ServiceNow.

* Required Components:
    * ServiceNow Developer Instance
        * Washington DC release or higher
        * Configured to receive desktop chats
    * Agent AI Account
        * Enabled Web/Mobile channel
        * Required bot credentials: Bot ID, Client ID, Client Secret, and Widget URL (Credential Location: Go to **agent ai** > **Flows and Channels** > **Channels** > **Digital** > **Web/Mobile Client** > **JWT App Details**.)
* Roles and Permissions:
    * ServiceNow: Admin Role
    * Kore XO Platform (Optional): Required only if you are doing an Agent Transfer from Kore XO Platform to ServiceNow. For more information, refer to [Configuring the ServiceNow Agent – Utah and Higher versions](./../../../app-settings/integrations/agents/servicenow/configuring-the-servicenow-agent-utah-and-vancouver.md){:target=”_blank”}.

## Interaction between ServiceNow and Kore.ai Agent AI

The following architecture diagram shows the interaction between ServiceNow and Agent AI:

<img src="../images/snow-kore.ai-architecture.png" alt="snow-kore.ai-architecture" title="snow-kore.ai-architecture" style="border: 1px solid gray; zoom:80%;">

## Set Up Kore Agent AI in ServiceNow Sandbox

Setting Up Agent AI chat with ServiceNow consists of the following steps:

1. Set Up Kore Agent AI in ServiceNow Sandbox 
    * [Download from the ServiceNow Store (recommended)](#step-1-download-from-the-servicenow-store-recommended), 
    or
    * [Install Using an Update Set](#install-using-an-update-set)
2. [Set Up Agent AI App Configuration](#step-2-set-up-agent-ai-application-configuration)
3. [Test the Configuration](#step-3-test-the-integration)
4. [Kore XO Configuration (Optional)](#step-4-kore-xo-configuration-optional)
5. [Using the Agent AI widget](#step-5-using-the-agent-ai-widget)

### Step 1: Download from the ServiceNow Store (recommended)

1. Get the [Agent AI by Kore.ai](https://store.servicenow.com/sn_appstore_store.do#!/store/application/92d544cec3da0a9082881b6ce0013194/1.0.0?referer=%2Fstore%2Fsearch%3Flistingtype%3Dallintegrations%25253Bancillary_app%25253Bcertified_apps%25253Bcontent%25253Bindustry_solution%25253Boem%25253Butility%25253Btemplate%25253Bgenerative_ai%25253Bsnow_solution%26q%3Dkore&sl=sh){:target=”_blank”} application from the ServiceNow store.
2. Click the **GET** button to proceed with the entitlement process of the application.
3. Select the organization name where you want to install this application.  
<img src="../images/servicenow-org-selection.png" alt="org-name-selection" title="org-name-selection" style="border: 1px solid gray; zoom:80%;">

**or**

### Install Using an Update Set

1. Ask the Kore representative for the relevant Update Set XML file.
2. Search in **All** > **filter** navigator as “Retrieved Update Sets,” which is under “System Update Sets”, and open it.
3. Under **Related Links**, click **Import Update Set from XML**. 
<img src="../images/import-update-xml.png" alt="import-update-xml" title="import-update-xml" style="border: 1px solid gray; zoom:80%;">

4. Open the update set **Agent AI by kore.ai** (this is the official name for Kore Agent AI).  
#### Preview Update Set

To preview the update set, click the **Preview Update Set** tab.
<img src="../images/preview-update-set.png" alt="preview-update-set" title="preview-update-set" style="border: 1px solid gray; zoom:80%;">

#### Commit Update Set

This option is enabled after the successful preview. You must click **Commit Update Set**.

<img src="../images/commit-update-set.png" alt="commit-update-set" title="commit-update-set" style="border: 1px solid gray; zoom:80%;">

##### Tips

If you get any error (refer to the following screenshot) in the preview step, follow the below steps to resolve the error.

<img src="../images/update-set-preview-error.png" alt="update-set-preview-error" title="update-set-preview-error" style="border: 1px solid gray; zoom:80%;">

Steps to resolve the error:

* Close the **Update Set Preview** dialog window.
* Go to **Update Set Review Problems**, and select all.
* On the right-side, select **Accept remote update** from the **Action on selected rows…** drop-down list. 

    !!! note

        **Multi-language support** for Agent AI is available only with the **Update Set**.

### Step 2: Set Up Agent AI Application Configuration

Application Name: **Agent AI by kore.ai**

This section details the steps to set up the Agent AI app configuration.

#### Add Agent AI Bot configuration in the ServiceNow Custom Table

1. Change your ServiceNow scope from **Global** to **Agent AI by kore.ai**.
2. Go to **All** > **Filter navigator**, and search **Kore_configuration**> **kore-config-customtable**.

    <img src="../images/kore-config-customtable.png" alt="kore-config-customtable" title="kore-config-customtable" style="border: 1px solid gray; zoom:80%;">

3. Click **New.**

4. Add the **Agent AI URL**, **Bot Id**, **Client Id**, **Client Secret** (Refer to [Prerequisite](#prerequisites), and **Table Key** (give the Table Key as **koreai**).

    !!! note

        The Client Secret & Token fields are masked for security reasons.        
        
5. **Language Code**: For any language other than English, select the language code from the drop-down list. The default language code is English (En).

6. Click **Submit**.

    !!! note

        The **AAtoken** field must be empty for the widget to load. The Token field automatically populates at the runtime.

    <img src="../images/aatoken.png" alt="aatoken" title="aatoken" style="border: 1px solid gray; zoom:80%;">

#### V2-V3 Migration

* For version 2 (v2) of Agent AI "https\://agentassist.kore.ai" (or the domain where the Agent AI is hosted), you should add this to the Agent AI URL.  
Sample v2 URL: https\://<domain-name\>.kore.ai

* For version 3 (v3), you must copy the Agent AI widget URL from the Agent UXO v11 Channel configuration and paste it into the Agent AI URL field. (For XO v11, go to **Flows and Channels** > **Channels** > **Digital** > **Web/Mobile Client** > **JWT App Details**. 

    Sample v3 URL: https\://<domain-name\>.kore.ai/koreagentassist-sdk-v3/UI/agentassist-iframe.html

### Step 3: Test the Integration

* **Agent**: Sign in to the ServiceNow Agent Console/Workspace (For example, Service Operation Workspace) with your agent credentials (agent-specific permissions) and remain available to receive chat on the ServiceNow desktop.
    * Minimum permissions/roles required for an agent are **Itil** and **awa_agent**.
* **Customer**: To initiate a chat from the customer side, sign in to **ESC (Enterprise Service Center)** of your ServiceNow instance and initiate a chat.

    !!! note

        ESC portal link: &lt;Servicenow domain>/esc.
   
    <img src="../images/chat-initiate.png" alt="Chat Initiate" title="Chat Initiate" style="border: 1px solid gray; zoom:80%;">

* **Agent:** Once the agent accepts the incoming chat, an Interaction Record page opens, and the **Agent AI by Kore** is the first icon on the Contextual side panel.

    * The agent gets a notification of the incoming chat.  
        <img src="../images/incoming-chat-notification.png" alt="incoming-chat-notification" title="incoming-chat-notification" style="border: 1px solid gray; zoom:80%;">

    * Once the agent accepts the chat, the Agent AI widget appears on the right Contextual side panel. 

        <img src="../images/agent-ai-contextual-panel.png" alt="agent-ai-contextual-panel" title="agent-ai-contextual-panel" style="border: 1px solid gray; zoom:80%;">

    * Once a conversation ends, the conversation summary is generated in the Agent AI widget. 

        <img src="../images/agent-ai-conversation-summary.png" alt="agent-ai-conversation-summary" title="agent-ai-conversation-summary" style="border: 1px solid gray; zoom:80%;">

### Step 4: Kore XO Configuration (Optional)

This step is required if the chat client is routed through the Kore XO bot builder, and post agent transfer, it lands into the ServiceNow Agent workspace. For more information, refer to [Configuring the ServiceNow Agent – Utah and Higher versions](https://developer.kore.ai/integrations/configuring-the-servicenow-agent-utah-and-vancouver/#Additional_Capabilities){:target=”_blank”}.

For passing the language code dynamically from Kore XO to the Agent AI widget inside ServiceNow, add the following javascript code inside a script node of Kore XO dialog task before the Agent Transfer node of ServiceNow. Without this script node, the language code will not be automatically sent to the Agent AI widget.


``` json
let metaData = {
	"payloadFields" : {
    		"langCode":context.currentLanguage
	},
	"headerFields" : {
    		"token" : ""
	}
}
agentUtils.setMetaInfo("ServiceNowMetaData", JSON.stringify(metaData));  

```

   <img src="../images/script-node.png" alt="Language Code" title="Language Code" style="border: 1px solid gray; zoom:80%;">

!!! note

    If a Language Code is sent from Kore XO to ServiceNow, then the Agent AI widget will load according to that language code. So, the XO language code will always take precedence over the language code set inside the ServiceNow custom table in Step 2.

### Step 5: Using the Agent AI widget

From the integration perspective, along with all the features and capabilities of Agent AI [Introduction to Agent AI](./../../agent-experience/agent-assist-widget-v3.md){:target=”_blank”}, agents on ServiceNow have the flexibility to use the following additional features:


* **Send / Copy Buttons:** Agents can use the **Send** and **Copy** buttons on the Agent AI UI to directly send and copy data from the Agent AI widget to the customer.  
<img src="../images/send-copy-button.png" alt="send-copy-button" title="send-copy-button" style="border: 1px solid gray; zoom:80%;">

* **Conversation Summary / End Of Conversation**: The conversation summary is displayed in the Summary box on the Agent AI widget after the end of the conversation when the conversation is closed/ended by agents or customers. Agents have the flexibility to copy this summary on their notepad or save it. If the **Submit Summary** option is used, the summary is saved inside the interaction table of that conversation.  
<img src="../images/submit-summary.png" alt="send-copy-button" title="send-copy-button" style="border: 1px solid gray; zoom:80%;">

* **Conversation logs:** Agents or supervisors can check the chat transcript along with the Agent AI summary on the Interaction record page.  
<img src="../images/conversation-logs.png" alt="send-copy-button" title="send-copy-button" style="border: 1px solid gray; zoom:80%;">

## Multibot Solution with ServiceNow

With the multibot solution in ServiceNow, you can configure multiple Agent AI bots which will be rendered when chat comes in different Servicenow queues.

### Set Up Kore Agent AI in ServiceNow

Obtain the update set .xml file from the Kore representative. Once you successfully commit the update set, follow the below steps:

#### Add Agent AI Bot Configuration in the ServiceNow Custom Table

1. Change your **ServiceNow** scope from **Global** to **Agent AI by kore.ai**.
2. Go to **All** > **Filter** **navigator**, and search **Kore_configuration** > **kore-config-customtable**. 
<img src="../images/koreconfig-customtable-1.png" alt="koreconfig-customtable" title="koreconfig-customtable" style="border: 1px solid gray; zoom:80%;"> 
3. Click **New**.
4. Add the **AgentAssist URL**, **Bot Id**, **Client Id**, **Client Secret**, **Language Code**, and **Queue Name** in the table fields.
    1. **Language Code**: To select a language other than English, select the **language code** from the dropdown list. The default language code is English (En).
    2. **Queue Name**: To configure the same Agent AI bot credentials for multiple queues, use comma-separated queue names (for example, customer_queue, sales_queue, service_queue).

        !!! note
            **Client Secret** and **AAToken** fields are masked for security reasons. The **AAtoken** field must be empty for the widget to load, it automatically populates at the runtime.

5. Click **Submit**.  
<img src="../images/koreconfig-new-record-2.png" alt="koreconfig-new-record" title="koreconfig-new-record" style="border: 1px solid gray; zoom:80%;">

#### Additional Configuration for HR Agent Workspace (Optional)

Follow this step only if you use the HR Agent Workspace to receive incoming chats in ServiceNow:

1. Sign in to the **Servicenow** instance.
2. Search in the **All** > **Filter** navigator.  
<img src="../images/filter-navigator-3.png" alt="filter-navigator" title="filter-navigator" style="border: 1px solid gray; zoom:80%;">
3. Go to **UI Builder** > **Experiences**.
4. Filter with **HR Agent Workspace**, and open it.  
<img src="../images/hragent-workspace-4.png" alt="hragent-workspace" title="hragent-workspace" style="border: 1px solid gray; zoom:80%;">
5. Search with **Case SRP variant** (under the **Record** page).
6. Create a copy of **Case SRP variant**, if the above one is read only.  
<img src="../images/record-5.png" alt="record" title="record" style="border: 1px solid gray; zoom:80%;">
7. Open the **Case SRP copy**, and add the **KoreaiWidget** component to the right sidebar. Follow the below steps:
    1. Go to **Body** > **Resizable panes** > **right** > **Tab sidebar**
    2. **Add** a new tab (preferably, select **start from an empty container**).  
    <img src="../images/tab-sidebar-6.png" alt="tab-sidebar" title="tab-sidebar" style="border: 1px solid gray; zoom:80%;"> 
    3. Drag that **TAB** to the top of the list.
    4. Add **Kore AgentAI ui-component** to that TAB (search with **KoreaiWidget**).
    5. Click that component to change its styles:
        * Flex : Grow
        * Alignment: Stretch
        * Sizing (Width: 100%, Height: 100%, Min Height: 100%). Keep other properties empty.  
        <img src="../images/component-style-change-7.png" alt="component-style-change" title="component-style-change" style="border: 1px solid gray; zoom:80%;">  
    6. To render the widget vertically and take up the full height of the workspace, set the height of the parent TAB (Eg- KoreAA-HR) to 100%.  
    <img src="../images/parent-tab-8.png" alt="parent-tab" title="parent-tab" style="border: 1px solid gray; zoom:80%;">

##### Data Binding(sysId)

1. Click the **KoreaiWidget** again. 
2. Update **Config** > **sysId** as following:
   * Change the input option to **Bind Data**.
   * Type **@context.props.sysId** (you get an auto suggestion).  
   <img src="../images/data-binding-9.png" alt="data-binding" title="data-binding" style="border: 1px solid gray; zoom:80%;">  
   
    !!! note
        You need this step to dynamically send the sysId of the current interaction to the Kore Agent AI UI component. While this solution includes a fallback method in case the Data Binding step is skipped, we recommend this step for a more reliable and robust integration. Without it(Data Binding), concurrent chats handled by a single agent may lose context during page reloads or network latency.

### No Widget for Inactive Conversation

With the multibot solution, this additional feature is developed. If there is no active conversation, the following UI is visible to the agents:  
<img src="../images/widget-unavailable-10.png" alt="widget-unavailable" title="widget-unavailable" style="border: 1px solid gray; zoom:80%;">