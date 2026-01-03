# Linked Services

The **Linked Services** section lets you integrate Agent AI with external services to enhance its capabilities. It includes two subsections: **Search AI** and **Agentic Configurations**.

* **Search AI**: Use this integration to enhance Agent AI’s search capabilities across web and mobile platforms.
* **Agentic Configurations**: Use this integration to configure, manage, and connect Agentic Copilot apps for autonomous, end-to-end conversation management. 

## Configure Search AI

**Search AI** provides an intelligent, contextual, and personalized search experience in every interaction across web and mobile channels. The **Search AI** configuration lets you choose how Agent AI performs search. You can select none, use the built-in Search AI app from the current AI for Service app, or link custom Search AI apps from other apps. The following options are available:

* **None**: Makes the Search AI functionality unavailable, and search results don’t appear on the widget
* **Use Search AI Configurations from the current app**: Uses the built-in Search AI app provided with the current AI for Service app.
* **Link Search AI Configurations from a different app**: Lets you link and use up to three custom Search AI apps.  
<img src="../answers-configuration-images/answers-generation.png" alt="answers-generation" title="answers-generation" style="border: 1px solid gray; zoom:40%;">  

### None

Select this option to restrict search capability to the configured bot. 

* If you search for content unrelated to the bot, the **No Search Result Found** message appears.
* If your search matches information within the bot (for example, dialog tasks), a screenshot similar to the following appears: 
    <img src="../answers-configuration-images/none-searchai-config.jpeg" alt="none-searchai-config" title="none-searchai-config" style="border: 1px solid gray; zoom:40%;">  

### Use Search AI Configurations from the current app

Select this option to use the built-in Search AI app linked to your XO11 sign-in app. You must turn on the **Answer Generation** option to use this option. To turn on Answer Generation: 

1. Sign in to [AI for Service](https://platform.kore.ai/){:target="_blank"}. 
2. Go to **App Settings**, and select **Configurations** > **Dev Tools** > **API Scopes**. 
    <img src="../answers-configuration-images/app-settings-api-scope.jpg" alt="app-settings-api-scope" title="app-settings-api-scope" style="border: 1px solid gray; zoom:80%;"> 

3. Select the **edit** icon next to an existing JWT App. 
    <img src="../answers-configuration-images/edit-jwt-app.jpg" alt="edit-jwt-app" title="edit-jwt-app" style="border: 1px solid gray; zoom:80%;"> 

4. On the **Edit App Definition** page, scroll down and turn on the **Answer Generation** toggle. 
    <img src="../answers-configuration-images/enable-answer-generation.jpg" alt="enable-answer-generation" title="enable-answer-generation" style="border: 1px solid gray; zoom:80%;"> 

5. Select **Save**.

### Link Search AI Configurations from a different app

Select this option to allow restricted search capabilities for the targeted users. You can configure up to three Search AI apps with the following scopes: 

* **Internal Information**: Use this feature to send internal notes to agents. Agents can’t share these search results with customers because the **Send** and **Copy** buttons aren't available. The following screenshot shows internal information for the search term **national pension**:  
    <img src="../answers-configuration-images/internal-information-1.png" alt="internal-information" title="internal-information" style="border: 1px solid gray; zoom:40%;">

* **External Information**: Use this feature to fetch external information through the Search AI apps. This information includes **Send** and **Copy** buttons to let agents share it with customers.  
    <img src="../answers-configuration-images/external-information-2.png" alt="external-information" title="external-information" style="border: 1px solid gray; zoom:40%;">

* **Auto-Suggestions**: Use this feature to restrict search access to auto-suggestions (prompts) only. The following screenshot shows auto-suggestions for the search term **pizza**:  
    <img src="../answers-configuration-images/auto-suggestions-3.png" alt="auto-suggestions" title="auto-suggestions" style="border: 1px solid gray; zoom:50%;">

### How Does It Work?

1. **Set up Search AI Apps**: Add all the segregated information sources (internal information, external information, and auto-suggestions) the targeted agents might need in their searches, like web pages, data, documents, and content from apps like ServiceNow and Confluence. [Learn more](https://docs.kore.ai/searchassist/getting-started/build-and-publish-your-first-searchassist-app/){:target="_blank"}.
2. **Link Search AI with Agent AI**: Administrators can link up to three Search AI applications with Agent AI, as explained in this document. Once linked, Search AI content is automatically available for Agent AI as a service in runtime.  
3. **View Search AI data in Agent AI**: In the Agent AI widget, agents can view relevant snippets and articles from the Search AI application, and Dialog Tasks and FAQs from the XO Platform or the Use Cases of the Agent AI application.  

### How to Link Search AI with Agent AI?

Linking the Search AI application with Agent AI is a two-step process:

1. **Enable the communication channel in Search AI**: First, create client credentials in Search AI with these API scopes–Ingest Data, Live Search, Full Search, Advanced Search, and Auto Suggestions. Then, enable a communication channel. For more information, refer to [this guide](https://docs.kore.ai/searchassist/administration/integrate-searchassist-with-third-party-applications/){:target="_blank"}.
2. **Use the client credentials to link the Search AI apps with Agent AI**: See the following steps:

#### Steps to link the Search AI apps with Agent AI

1. Sign in to [AI for Service](https://platform.kore.ai){:target="_blank"}.
2. Go to **Agent AI** > **Linked Services** > **Search AI**.  
3. Select the **Link Search AI Configurations from a different app** option.  
4. Select **+Add Search AI App**.  
    <img src="../answers-configuration-images/add-search-ai-app-5.png" alt="add-search-ai-app" title="add-search-ai-app" style="border: 1px solid gray; zoom:80%;">  
5. Enter a name for the Search AI app in the **Name** field.
6. Select an option or options in the **Use This App Settings for** list. Refer to the **[Configuration Rules](#configuration-rules)** while selecting your options.  
7. Enter the following client credentials generated by the Search AI application:
    * **Domain URL**: The Domain URL to be used for this specific search app.
    * **Stream ID**: The Stream ID to be used for this specific search app.
    * **Client ID**: The Client ID to be used for this specific search app.
    * **Client Secret**: The Client Secret to be used for this specific search app.  
8. Expand the **Knowledge AI** section (displays only if you have selected **Internal Information** or **External Information** in the **Use This App Settings for** field).  
    <img src="../answers-configuration-images/knowledge-ai-7.png" alt="knowledge-ai" title="knowledge-ai" style="border: 1px solid gray; zoom:80%;">

    1. Turn on the toggle. (By default, it remains turned off.)
    2. Select a **channel** in the **Select channel** list.
    3. Refer to the [Knowledge AI](#knowledge-ai) section, and select the options under the **Search Results** and **Control expand behavior of Answers** sections.  
    4. Select the **Add Custom Meta Filter Script (Optional)** option under the **Advanced Search API Configuration** section.  
        <img src="../answers-configuration-images/knowledge-ai-7.png" alt="knowledge-ai" title="knowledge-ai" style="border: 1px solid gray; zoom:80%;"> 

9. Select **Test Connection & Save** to verify the configuration. The **Connection Established Successfully** message appears, if the connection is successful.
13. Add more Search AI apps, as required, by following the above steps. 

#### Configuration Rules

* Choose either **Internal Information** or **External Information** with **Auto-Suggestions**.
* **Internal** **Information** and **External Information** can’t be combined in one app.
* **Auto-Suggestions** can be configured for only one Search AI app.
* **Knowledge AI settings** are available only if you select either Internal Information or External Information. 

#### Knowledge AI

This section lets you gain access to the **Knowledge AI** features within the Agent AI widget during customer interactions. Here, you can set channel-specific display of Knowledge AI search results. It has the following sub-sections:

This section allows you to access the Knowledge AI features within the Agent AI widget during customer interactions. You can configure how Knowledge AI search results appear for each channel. It includes the following options: 

* **Search Results**: Controls how the Knowledge AI search results appear. Agents can select **Always Show**, **Show with XO results**, or **Show as a Fallback event**.
    * **Always Show**: Shows all results of Knowledge AI, regardless of bot intents. This is the default selection.
    * **Show with XO results**: Shows results of Knowledge AI only when relevant bot events, such as Dialog Tasks or FAQs, are detected.
    * **Show as a Fallback event**: Shows results of Knowledge AI as a fallback, only when no bot events are detected.
* **Advanced Search API Configuration**: It lets you optimize your search experience with the advanced Knowledge AI API configuration. Select this option to use your own API and configure how Knowledge AI should behave.
* **Control expand behavior of Answers**: It lets you set how many answers appear in the Agent AI widget. For example, if you select **3**, only three answers appear. The default is **4**, and the minimum is **2**.  

### How Does It Help Agents?

When Agent AI is integrated with Search AI, data from all the sources configured in the Search AI application are accessible to agents via the Agent AI widget > **Search** tab. In the search results, Snippets and Articles are shown from the Search AI application, and Dialog Tasks and FAQs are shown from the Use Cases of the Agent AI application. Agents can quickly review the search results and share relevant information with the customers. This feature also enables sending internal notes to agents with important, agent-only information that can’t be sent or copied to customers.

## Agentic Configurations

The Agentic Copilot app is an agent’s aide. Once an Agentic app is successfully configured and linked with Agent AI, it manages end-to-end conversations autonomously. Agents supervise the conversations and focus more on the quality of service. They can cancel, override, or edit the Agentic conversations, as needed. Agents can also use the “custom tab” to run dialog tasks and perform LLM-powered searches.

This section lets you configure and manage the Agentic Copilot apps. You can configure, test, and save multiple apps simultaneously. Once configured, link these apps with Agent AI to have autonomous, end-to-end task execution.

### Configuring an Agentic Copilot app

Follow these steps to configure an Agentic Copilot app: 

1. Sign in to [AI for Service](https://platform.kore.ai){:target="_blank"}. 
2. Go to **Agent AI** > **Configurations** > **Linked Services**> and select **Agentic Configuration**.
3. Select **+ Add Agentic Copilot App**. 
4. Enter the following information under the **App Information** section:
    * **App Name**: Enter a name for the new app. For example, Travel Agent. The character limit is set to 50.
    * **Domain URL**: Enter the Agentic platform’s host URL. For example, [agent-platform.kore.ai](https://agent-platform.kore.ai).
    * **Environment**: Enter the environment name as configured in the “Environment” section of the Agentic Platform.
    * **App ID**: Enter the Agentic app ID in use.
    * **API Key**: Enter the API key as configured in the **API Keys** section of the Agentic Platform.
5. Select **Test Connection & Save**. The configured app is saved and gets connected.  
    <img src="../answers-configuration-images/connect-agentic-app.png" alt="connect-agentic-app" title="connect-agentic-app" style="border: 1px solid gray; zoom:80%;">  

### Deleting an Agentic Copilot app

This section lets you delete a preconfigured Agentic Copilot app. When deleted, the connected apps automatically get disabled from the Agent AI widget. Follow these steps to delete a configured app:

1. Select the **delete** button against a saved app.
2. Select **Delete** on the confirmation screen.   

    !!! note
        You can't delete an in-use Agentic app—the delete button is unavailable, and a badge indicates the app is in use: 
    <img src="../answers-configuration-images/linked-services.png" alt="linked-services" title="linked-services" style="border: 1px solid gray; zoom:80%;"> 
