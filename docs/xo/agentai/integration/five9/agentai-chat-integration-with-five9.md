This document provides step-by-step instructions for integrating the Agent AI widget into the Five9 Agent Desktop. It covers the full integration process, ensuring a smooth setup and enabling all Agent AI features, including Automation, [Agent Coaching](./../../agent-experience/agent-realtime-coaching.md){:target="_blank"}, [Agent Playbook](./../../agent-experience/playbook.md){:target="_blank"}, [Sentiment Analysis](./../../agent-experience/agent-assist-widget-v3.md){:target="_blank"}, and end-of-call summaries.

## Prerequisites

Administrators having access to a Five9 Admin Console and with privileges to set up the following configurations:

* Five9 Chat enabled for your instance. Contact your Five9 representative.
* Kore Administrators having access to [Kore.ai](https://agentassist.kore.ai/){:target="_blank"} Agent AI instance and familiarity with creating and configuring an Agent AI Bot.
* Kore.ai App credentials such as Agent AI Widget URL, Bot ID, Client ID, and Client Secret. Read [this doc](./../../../channels/adding-channels-to-your-bot.md){:target="_blank"} for a walkthrough.

## Definitions

<table>
  <tr>
   <td><strong>Key</strong>
   </td>
   <td><strong>Definition</strong>
   </td>
   <td><strong>Reference</strong>
   </td>
  </tr>
  <tr>
   <td><span id="pookie">Agent AI URL</span>
   </td>
   <td>The domain of the Agent AI.
   </td>
   <td>
<ul>

<li>If it is legacy Agent AI, URL is <a href="https://agentassist.kore.ai">https://agentassist.kore.ai</a></li>

<li>If it is UXO, URL is <a href="https://platform.kore.ai">https://platform.kore.ai</a></li>

<li>If it is on-prem, the URL is the origin where your Agent AI is hosted.</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Client App
   </td>
   <td>To use any Kore.ai Bot SDKs, a client app must be created to get the authentication credentials to communicate between the Kore.ai bot and Agent AI. 
<p>
<strong>Note:</strong> Only the default Client App is supported.
   </td>
   <td><a href="https://developer.kore.ai/docs/bots/channel-enablement/adding-the-webmobile-client-channel/">https://developer.kore.ai/docs/bots/channel-enablement/adding-the-webmobile-client-channel/</a>
   </td>
  </tr>
  <tr>
   <td>Connector
   </td>
   <td>Five9 Connector is utilized for displaying the Agent AI iframe within the Five9 Agent Desktop.
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>BotId
   </td>
   <td>A unique identifier assigned to a bot.
   </td>
   <td><strong>Channels > Chat</strong> section of the <strong><a href="https://agentassist.kore.ai">Agent AI</a></strong> configuration portal.
   </td>
  </tr>
  <tr>
   <td>ClientId
   </td>
   <td>An identifier provided to a client application.
   </td>
   <td><strong>Channels > Chat</strong> section of the <strong><a href="https://agentassist.kore.ai">Agent AI</a></strong> configuration portal.
   </td>
  </tr>
  <tr>
   <td>ClientSecret 
   </td>
   <td>A secret key or password associated with the ClientId.
   </td>
   <td><strong>Channels > Chat</strong> section of the <strong><a href="https://agentassist.kore.ai">Agent AI</a></strong> configuration portal.
   </td>
  </tr>
  <tr>
   <td>AgentAssistWidgetURL
   </td>
   <td>URL that points to the Agent AI widget.
<p>
For example, https://agentassist.kore.ai/koreagentassist-sdk-v3/UI/agentassist-iframe.html
   </td>
   <td><strong>Channels > Chat</strong> section of the <strong><a href="https://agentassist.kore.ai">Agent AI</a></strong> configuration portal.
   </td>
  </tr>
  <tr>
   <td>BotLanguageCode
   </td>
   <td>The Language configured in the Agent AI Bot.
   </td>
   <td>Refer to the <a href="https://docs.kore.ai/xo/agentai/agent-experience/supported-languages/">Supported Languages</a> doc to get the language code for all the supported languages.
   </td>
  </tr>
  <tr>
   <td>Identifiers
   </td>
   <td>It’s a unique identifier in the Data Table to fetch bot details at run time. It can be a skill name or campaign name.
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>JWEPublicKey
   </td>
   <td>Public key assigned to the Client App.
   </td>
   <td><strong>Channels</strong> <strong>> Web/Mobile Client > App Details</strong> section of the <strong><a href="https://agentassist.kore.ai">Agent AI</a></strong> automation portal.
   </td>
  </tr>
</table>

## Configurations on the Kore Platform

* [Capture Bot Information in the Kore Data Table](#capture-bot-information-in-the-kore-data-table)

## Configurations on the Five9 Admin Console

* [Create Connector](#create-connector)
* [Five9 Account Setup to get Incoming Chat Requests](#five9-account-setup-to-get-incoming-chat-requests)

## Capture Bot Information in the Kore Data Table

Data Tables are used to store skill or campaign-specific bot credentials. Each record of the Kore Data Table represents a unique Five9 skill or campaign and its corresponding bot definitions. 

If a single bot is used for several skills or campaigns, create a separate record for each skill or campaign, separated by commas as the value for the Identifiers, along with the bot details.

Kore.ai matches the third-party skill or campaign name with the “Identifiers" credential name in its bot credentials to render the appropriate bot.

!!! note
    Do not enter multiple records with different bot credentials into the Kore Data Table for a single QueueIdentifier.

### How to create a New Data Table

1. Sign in to Kore.ai [botbuilder](http://bots.kore.ai/botbuilder){:target="_blank"}.
2. Click **Data** > **Data Tables**.
3. Click **New Table**. 
    <img src="../images/data-table-new-table_1.png" alt="data-table-new-table" title="data-table-new-table" style="border: 1px solid gray; zoom:80%;"> 

4. Enter the following details in the **New Table** page:
    * **Name** of the Data Table (any alphanumeric name).
    * **Description** of the Data Table.
    * **Columns** to be included in the data table. Click the “tick” mark to add multiple columns. 
        <img src="../images/new-table-page_2.png" alt="new-table-page" title="new-table-page" style="border: 1px solid gray; zoom:80%;">

        Add the following **case-sensitive** columns with type “string”:

    * **Mandatory Columns**:
        * Identifiers (unique identifier for the table)
        * BotId
        * ClientId
        * ClientSecret
        * AgentAssistWidgetURL
        * BotLanguageCode
        * JWEPublicKey
    * **Indexes** for the table.
        * **Index Name** for reference.
        * **Is Unique** flag to define if the index is expected to contain unique values. (Enable “is Unique.”)
        * **Column & Sort Order** – List of columns to be included in the index; you can select multiple columns and specify the sort order (ascending or descending) for each of the selected columns. (Select Identifiers with ascending order.) 
            <img src="../images/indexes-page_3.png" alt="indexes-page" title="indexes-page" style="border: 1px solid gray; zoom:80%;"> 

    * **Bot Assignments** (not applicable)
    * **App Assignments** to let apps access data in this table.
        * Select any app from the displayed list, or click **Create New App** and enter your app name:  
            <img src="../images/create-new-app_4.png" alt="create-new-app" title="create-new-app" style="border: 1px solid gray; zoom:80%;">

        * Select the **Read**, **Write**, and **Delete** permissions, as required. 

            !!! note
                You can also create new apps by clicking **Data** > **Apps** > **New App** in the home page.  

            <img src="../images/data-apps-new-app_5.png" alt="data-apps-new-app" title="data-apps-new-app" style="border: 1px solid gray; zoom:80%;"> 

    * **Process Assignments** (not applicable) 

5. Click **Create** to create the new data table.  
    <img src="../images/create-new-data-table_6.png" alt="create-new-data-table" title="create-new-data-table" style="border: 1px solid gray; zoom:80%;"> 

### Insert data into Data Table

Set up necessary permissions and app assignments and insert bot-specific data into the Data Table.

1. Sign in to Kore.ai [botbuilder](http://bots.kore.ai/botbuilder).
2. Click **Data** > **Apps**.
3. Select the **App** with write access to the Data Table where you want to add information.  
    <img src="../images/client-id-client-secret_7.png" alt="client-id-client-secret" title="client-id-client-secret" style="border: 1px solid gray; zoom:80%;"> 

4. Copy **Client ID** and **Client Secret** of the app.
5. Create a JWT Token using the **Client ID** and **Client Secret** by following this [doc](./../../../apis/automation/api-introduction.md/#generating-the-jwt-token){:target="_blank"}.
6. Insert the following data into the Data Table by following this [doc](./../../../apis/automation/data-insert.md/#data-insert-api){:target="_blank"}. Use the JWT Token created in the previous step. 

   **API Body Payload Structure**:

    ```
    {
        "data": {
            "Identifiers": <Unique Skill/Campaign Name>,
            "AgentAssistWidgetURL": <Kore Agent AI Widget URL>,
            "BotId": <Kore BotId>,
            "ClientId": <Kore ClientId>,
            "ClientSecret": <Kore ClientSecret>,
            "JWEPublicKey": <Public Key assigned to Client App>
        }
    }
    ``` 

!!! note
    JWEPublicKey value should be a stringified JSON object.

**Example**: 

<img src="../images/api-body-example_8.png" alt="api-body-example" title="api-body-example" style="border: 1px solid gray; zoom:80%;"> 

## Create Connector

1. Sign in to [Five9 Administrator Console](https://admin.us.five9.net/){:target="_blank"}.
2. Search for “connectors” in the search bar, and select **Connectors**.  
    <img src="../images/connectors_9.png" alt="connectors" title="connectors" style="border: 1px solid gray; zoom:80%;"> 

3. Click the **Create** button. 
    <img src="../images/create-connectors_10.png" alt="create-connectors" title="create-connectors" style="border: 1px solid gray; zoom:80%;"> 

    <img src="../images/create-new-connectors_11.png" alt="create-new-connectors" title="create-new-connectors" style="border: 1px solid gray; zoom:80%;"> 

4. Provide a name in the **Connector Name** field.
5. The URL should be {<a href="#pookie">[Agent AI]</a>}/integrations/five9/
6. The method should be GET. 
    <img src="../images/create-new-connector-get-method_12.png" alt="create-new-connector-get-method" title="create-new-connector-get-method" style="border: 1px solid gray; zoom:80%;">  

7. Click **Next**. 
    <img src="../images/create-new-connector-next_13.png" alt="create-new-connector-next" title="create-new-connector-next" style="border: 1px solid gray; zoom:80%;"> 

8. In the **Parameters** section, click the **Add** dropdown and select **Field**. 
    <img src="../images/create-new-connector-param_14.png" alt="create-new-connector-param" title="create-new-connector-param" style="border: 1px solid gray; zoom:80%;"> 

9. Select **session_id**, **domain_id**, **id**, **skill_name/campaign_name**, and click **Ok**. 
    <img src="../images/add-field_15.png" alt="add-field" title="add-field" style="border: 1px solid gray; zoom:80%;"> 
    
    <img src="../images/add-field-ok_16.png" alt="add-field-ok" title="add-field-ok" style="border: 1px solid gray; zoom:80%;"> 

10. Click the **Edit** icon against the parameters and change as per the following:
    * domain_id -> domainid
    * id -> agentid
    * session_id -> conversationid
    * skill_name/campaign_name -> identifiers 
        <img src="../images/changing-parameters_17.png" alt="changing-parameters" title="changing-parameters" style="border: 1px solid gray; zoom:80%;"> 

11. In the **Parameters** section, click the **Add** dropdown and select **Constant**. 
    <img src="../images/parameters-add-constant_18.png" alt="parameters-add-constant" title="parameters-add-constant" style="border: 1px solid gray; zoom:80%;"> 

12. Enter **Name** as **x_metadata** and the **Value** should be {"datatable":{"name":&lt;Kore Datatable Name>,"token":&lt;JWT Token created using the **Client ID** and **Client Secret** of the app by following this [doc](./../../../apis/automation/api-introduction.md/#generating-the-jwt-token){:target="_blank"}>}}  

    <img src="../images/add-constant_19.png" alt="add-constant" title="add-constant" style="border: 1px solid gray; zoom:80%;"> 

13. Click **Ok** > **Next**. 
    <img src="../images/ok-next_20.png" alt="ok-next" title="ok-next" style="border: 1px solid gray; zoom:80%;"> 

14. By default, **Call** is selected for **Trigger Event** and **On Call Accepted** is selected for **On Call Event**. Select **Chat** for **Trigger Event**, and the **On Chat Arrival** appears for **On Chat Event**.
15. Click **Done**. 
    <img src="../images/create-new-connector-done_21.png" alt="create-new-connector-done" title="create-new-connector-done" style="border: 1px solid gray; zoom:80%;"> 

## Five9 Account Setup to get Incoming Chat Requests

* Create a skill, and add agents with Chat/SMS Channel enabled to the skill by following [this doc](https://documentation.five9.com/bundle/admin-console/page/admin-console/skills/_ch-user-skills.htm){:target="_blank"}.
* Create a chat profile by following [this doc](https://documentation.five9.com/bundle/digital-engagement/page/digital-engagement/digital-in-admin-console/digital-components/chat-profiles.htm){:target="_blank"}.
* Create IVR Script by following [this doc](https://documentation.five9.com/bundle/ivr-admin/page/ivr-admin/examples/creating-an-ivr-script.htm){:target="_blank"}. 
    <img src="../images/ivr-script_22.png" alt="ivr-script" title="ivr-script" style="border: 1px solid gray; zoom:80%;"> 

### Create Inbound Campaign

1. Sign in to the [Admin Console](https://admin.us.five9.net/){:target="_blank"}.
2. Search for campaigns, and select **Campaigns**. 
    <img src="../images/search-campaigns_23.png" alt="search-campaigns" title="search-campaigns" style="border: 1px solid gray; zoom:80%;"> 

    <img src="../images/select-campaigns_24.png" alt="select-campaigns" title="select-campaigns" style="border: 1px solid gray; zoom:80%;"> 

3. Click **Create**.
4. Select **Inbound**, and click **Continue**. 
    <img src="../images/create-campaign_25.png" alt="create-campaign" title="create-campaign" style="border: 1px solid gray; zoom:80%;"> 

    <img src="../images/new-campaign_26.png" alt="new-campaign" title="new-campaign" style="border: 1px solid gray; zoom:80%;"> 

5. Enter the following details: 
    1. Enter a **campaign name**.
    2. Enter a **campaign description**.
    3. Click **Chat Profile,** and either select the chat profile you created in the previous step or choose SystemDefault. 

        !!! note
            You must have the necessary permission to view campaign profiles. An error message displays if you don't have the required permission.

    4. **Voice Lines**: Enter the number of lines to dedicate to voice traffic. This is the maximum number of phone lines or ports to support the calls allotted to this campaign.
    5. **Text Interactions**: Enter the number of lines to dedicate to text interactions. 
    
        This setting runs IVR scripts for chat or email campaigns, and determines how many IVR sessions can run the IVR script concurrently. For example, if 10 customers are in a chat campaign, and the number of text channels is set to 5, then only 5 of those customer interactions use the IVR script, and the other 5 route to the chat campaign's default skill without any scripting logic.

    6. Enter the **usage threshold percentage**. This is the maximum percentage of lines in use that triggers a notification when reaching this threshold.
    7. Enter **email addresses for threshold notifications**. Use semicolons to delimit a list.
    8. Enter the number of lines to dedicate to **Visual IVR (VIVR) sessions**. This setting runs an IVR script using a web browser URL, but instead of TTS prompts playing audio (as in a voice call), it displays the actual TTS text. A voice caller and a VIVR caller get the same IVR flow and experience; one uses voice, and the other uses a browser screen for online viewing. For more information about VIVR, see the [Interactive Voice Response (IVR)](https://documentation.five9.com/bundle/ivr-admin/page/ivr-admin/landing-ivr-admin.htm){:target="_blank"} admin guide.
    9. Click **Next**.  
        <img src="../images/new-campaign-next_27.png" alt="new-campaign-next" title="new-campaign-next" style="border: 1px solid gray; zoom:80%;"> 

6. Do not select anything in the **Numbers** section, and click **Next**.
7. Click **Default Script**, and select the default IVR Script or the IVR Script created in the previous step.
8. Click **Next**. 
    <img src="../images/new-campaign-default-script_28.png" alt="new-campaign-default-script" title="new-campaign-default-script" style="border: 1px solid gray; zoom:80%;"> 

9. Click **Digital Skill**, and either select the skill created in the previous step or the Default Skill.
10. Click **Create**. 
    <img src="../images/new-campaign-digital-script_29.png" alt="new-campaign-digital-script" title="new-campaign-digital-script" style="border: 1px solid gray; zoom:80%;"> 

    !!! note
        After the inbound campaign is created successfully, start the campaign. Refer to the [Manage Campaigns](https://documentation.five9.com/bundle/admin-console/page/admin-console/campaigns/managing-campaigns.htm){:target="_blank"} doc for help. 

## Chat Simulation

1. Open [Script Generator](https://app.five9.com/five9_clients/consoles_latest/Generator/index.html){:target="_blank"}.
2. Enter your Five9 account domain name in the **Domain** field and the chat inbound campaign name in the **Profiles** field. 
    <img src="../images/chat-simulation-1_30.png" alt="chat-simulation-1" title="chat-simulation-1" style="border: 1px solid gray; zoom:80%;"> 

3. Scroll down, and click **Preview on Page**. 
    <img src="../images/chat-preview-on-page_31.png" alt="chat-preview-on-page" title="chat-preview-on-page" style="border: 1px solid gray; zoom:80%;"> 

4. Enter values in the **Name** and **Question** fields.
5. Click **Start Chat**. 
    <img src="../images/start-chat_32.png" alt="start-chat" title="start-chat" style="border: 1px solid gray; zoom:80%;"> 

6. Open the **Five9 Agent Desktop,** and change the status to **Ready (Text)**.
7. The request arrives on the desktop. Click the **lock** icon to accept the interaction. 
    <img src="../images/accept-interaction_33.png" alt="accept-interaction" title="accept-interaction" style="border: 1px solid gray; zoom:80%;"> 

8. Once the interaction is accepted, the connector opens by default where the Agent AI widget is rendered. 
    <img src="../images/agentai-widget_34.png" alt="agentai-widget" title="agentai-widget" style="border: 1px solid gray; zoom:80%;"> 

9. Click the **send** button to send a message to the customer. The message gets copied to the clipboard, if you click the **copy** button.
10. When the agent or customer ends the chat, the chat summary appears in the Agent AI widget. 
    <img src="../images/chat-summary_35.png" alt="chat-summary" title="chat-summary" style="border: 1px solid gray; zoom:80%;"> 

## Integration Limitations
* Custom Data and Secure Custom Data passing is not supported.
* Internal Transfers are not supported as the widget can’t be rendered for other agents joining the conversation, as the Five9 connector is getting disabled for other agents.
* **Concurrent Chats Limitation**: Customer messages or summary events for a specific chat are delivered to the Agent AI widget only when that chat window is active. If the agent navigates to a different chat, any new messages or events of the previous chat will not be captured and delivered to the widget.