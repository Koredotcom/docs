# Linked Services

The **Linked Services** section lets you enhance the capabilities of Agent AI by integrating it with external services. It includes two subsections-**Search AI** and **Agentic Configurations**. While linking with Search AI enhances Agent AI’s search capability across web and mobile platforms, Agentic configuration allows you to configure, manage, and connect the Agentic Copilot apps to enable autonomous, end-to-end management of conversations.

## Configure Search AI

Search AI provides an intelligent, contextual, and personalized experience in every interaction across web and mobile channels. Users have the flexibility to select the built-in Search AI functionality or the custom Search AI apps:

* **None**: No Search AI functionality.
* **Use Search AI Configurations from the current app**: Uses the in-built Search AI app that comes with the current XO11 app.
* **Link Search AI Configurations from a different app**: Users can configure up to three customized Search AI apps.  
<img src="../answers-configuration-images/answers-generation.png" alt="answers-generation" title="answers-generation" style="border: 1px solid gray; zoom:40%;">

### Use Search AI Configurations from the current app

Select this option to access the built-in Search AI app linked to your XO11 sign-in app. You must enable the Answer Generation option to use this option. To do that: 

1. Go to **App Settings**, and click **Configurations** > **Dev Tools** > **API Scopes**. 
    <img src="../answers-configuration-images/app-settings-api-scope.jpg" alt="app-settings-api-scope" title="app-settings-api-scope" style="border: 1px solid gray; zoom:80%;"> 

2. Click the “edit” icon against an existing JWT App. 
    <img src="../answers-configuration-images/edit-jwt-app.jpg" alt="edit-jwt-app" title="edit-jwt-app" style="border: 1px solid gray; zoom:80%;"> 

3. On the **Edit App Definition** page, scroll down and turn on the **Answer Generation** toggle. 
    <img src="../answers-configuration-images/enable-answer-generation.jpg" alt="enable-answer-generation" title="enable-answer-generation" style="border: 1px solid gray; zoom:80%;"> 

4. Click **Save**.

### Link Search AI Configurations from a different app

To enhance the search capabilities of Agent AI and allow restricted access for targeted users, you can configure up to three Search AI apps with the following scopes:

* **Internal Information**: This feature can be leveraged to send internal notes to agents. Agents can’t share the search results with customers as it doesn’t include the **Send** / **Copy** buttons. The following screenshot shows internal information related to the search words "national pension":  
<img src="../answers-configuration-images/internal-information-1.png" alt="internal-information" title="internal-information" style="border: 1px solid gray; zoom:40%;">

* **External Information**: This feature helps fetching external information through the Search AI apps, and this information has **Send** / **Copy** buttons for sharing with customers.  
<img src="../answers-configuration-images/external-information-2.png" alt="external-information" title="external-information" style="border: 1px solid gray; zoom:40%;">

* **Auto-Suggestions**: Access to auto-suggestions (prompts) only. The following screenshot shows auto-suggestions related to the search word "pizza":  
<img src="../answers-configuration-images/auto-suggestions-3.png" alt="auto-suggestions" title="auto-suggestions" style="border: 1px solid gray; zoom:50%;">

### How Does It Work?

1. **Set up Search AI Apps**: Add all the segregated information sources (internal information, external information, and auto-suggestions) the targeted agents might need in their searches, like web pages, data, documents, and content from apps like ServiceNow and Confluence. [Learn more](https://docs.kore.ai/searchassist/getting-started/build-and-publish-your-first-searchassist-app/){:target="_blank"}.
2. **Link Search AI with Agent AI**: Administrators can link up to three Search AI applications with Agent AI, as explained in this document. Once linked, Search AI content is automatically available for Agent AI as a service in runtime.  
3. **View Search AI data in Agent AI**: In the Agent AI widget, agents can view relevant snippets and articles from the Search AI application, and Dialog Tasks and FAQs from the XO Platform or the Use Cases of the Agent AI application.  

### How to Link Search AI with Agent AI?

Linking Search AI application with Agent AI is a two-step process:

1. **Enable the communication channel in Search AI**: First, create client credentials in Search AI with these API scopes – Ingest Data, Live Search, Full Search, Advanced Search, and Auto Suggestions. Then, enable a communication channel. For more information, refer to [this guide](https://docs.kore.ai/searchassist/administration/integrate-searchassist-with-third-party-applications/){:target="_blank"}.
2. **Use the client credentials to link the Search AI apps with Agent AI**: See the following steps:

#### Steps to link the Search AI apps with Agent AI

1. Sign in to https://platform.kore.ai.
2. Go to **Agent AI** > **Configurations** > **Search AI**.  
<img src="../answers-configuration-images/search-ai-page-4.png" alt="search-ai-page" title="search-ai-page" style="border: 1px solid gray; zoom:80%;">

3. On the **Search AI** page, click **+Add Search AI App**.  
<img src="../answers-configuration-images/add-search-ai-app-5.png" alt="add-search-ai-app" title="add-search-ai-app" style="border: 1px solid gray; zoom:80%;">

4. Enter a name for the Search AI app in the **Name** field.
5. Select an option or options in the **Use This App for** list. Refer to the **[Configuration Rules](#configuration-rules)** while selecting your options.  
<img src="../answers-configuration-images/use-this-app-for-6.png" alt="use-this-app-for" title="use-this-app-for" style="border: 1px solid gray; zoom:80%;">

6. Enter the following client credentials generated by the Search AI application:
* **Domain URL**: The Domain URL to be used for this specific search app.
* **Stream ID**: The Stream ID to be used for this specific search app.
* **Client ID**: The Client ID to be used for this specific search app.
* **Client Secret**: The Client Secret to be used for this specific search app.
7. Expand the **Knowledge AI** section (displays only if you have selected **Internal Information** or **External Information** in the **Use This App for** field).  
<img src="../answers-configuration-images/knowledge-ai-7.png" alt="knowledge-ai" title="knowledge-ai" style="border: 1px solid gray; zoom:80%;">

8. Click the toggle to enable it. (By default, it remains disabled.)
9. Select a channel in the **Select channel** list.
10. Select the options under the **Search Results**, **API Integration**, and **Control expand behavior of Answers** sections.  
<img src="../answers-configuration-images/knowledge-settings-8.png" alt="answers-configuration" title="answers-configuration" style="border: 1px solid gray; zoom:80%;">

11. Click **Test Connection & Save** to verify the configuration. The **Connection Established Successfully** message displays, if the connection is successful.
12. Add more Search AI apps, as required by following the above steps.

#### Configuration Rules

* Choose either **Internal Information** or **External Information** with **Auto-Suggestions**.
* **Internal** **Information** and **External Information** can’t be combined in one app.
* **Auto-Suggestions** can be configured for only one Search AI app.
* **Knowledge AI settings** are available only when selecting either Internal Information or External Information.

### How Does It Help Agents?

When Agent AI is integrated with Search AI, data from all the sources configured in the Search AI application are accessible to agents via the Agent AI widget > **Search** tab. In the search results, Snippets and Articles are shown from the Search AI application, and Dialog Tasks and FAQs are shown from the Use Cases of the Agent AI application. Agents can quickly review the search results and share relevant information with the customers. This feature also enables sending internal notes to agents with important, agent-only information that can’t be sent or copied to customers.

## Agentic Configurations

The Agentic Copilot app is an agent’s aide. Once an Agentic app is successfully configured and linked with Agent AI, it manages end-to-end conversations autonomously. Agents supervise the conversations and focus more on the quality of service. They can cancel, override, or edit the Agentic conversations, as needed. Agents can also use the “custom tab” to run dialog tasks and perform LLM-powered searches.

This section lets you configure and manage the Agentic Copilot apps. You can configure, test, and save multiple apps simultaneously. Once configured, link these apps with Agent AI to have autonomous, end-to-end task execution.

### Configuring an Agentic Copilot app

Follow these steps to configure an Agentic Copilot app:

1. Sign in to https://platform.kore.ai/.
2. Go to **Agent AI** > **Configurations** > **Linked Services**> and click **Agentic Configuration**.
3. Click **+ Add Agentic Copilot App**. 
<img src="../answers-configuration-images/agentic-copilot.png" alt="agentic-copilot" title="agentic-copilot" style="border: 1px solid gray; zoom:80%;"> 

4. Enter the following information under the **App Information** section:
    * **App Name**: Enter a name for the new app. For example, Travel Agent. The character limit is set to 50.
    * **Domain URL**: Enter the Agentic platform’s host URL. For example, [agent-platform.kore.ai](https://agent-platform.kore.ai).
    * **Environment**: Enter the environment name as configured in the “Environment” section of the Agentic Platform.
    * **App ID**: Enter the Agentic app ID in use.
    * **API Key**: Enter the API key as configured in the “API Keys” section of the Agentic Platform.
5. Click **Test Connection & Save**. The configured app is saved and gets connected.  
<img src="../answers-configuration-images/connect-agentic-app.png" alt="connect-agentic-app" title="connect-agentic-app" style="border: 1px solid gray; zoom:80%;"> 

### Deleting an Agentic Copilot app

In this section, you can delete a configured app. When deleted, the connected apps automatically get disabled from the Agent AI widget. Follow these steps to delete a configured app:

1. Click the “delete” button against a saved app.
2. Click Delete on the confirmation screen.  
<img src="../answers-configuration-images/delete-agentic-app.png" alt="delete-agentic-app" title="delete-agentic-app" style="border: 1px solid gray; zoom:80%;"> 

    !!! note
        You can't delete an in-use Agentic app—the delete button is disabled and a badge indicates the app is in use: 
    <img src="../answers-configuration-images/linked-services.png" alt="linked-services" title="linked-services" style="border: 1px solid gray; zoom:80%;"> 
