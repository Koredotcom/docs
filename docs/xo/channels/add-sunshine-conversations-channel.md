# Adding the Sunshine Conversations Channel

Virtual Assistants built on the Kore.ai XO Platform can be deployed on the **Sunshine Conversations** platform. This channel integration supports conversations with virtual assistants and provides a seamless hand-off to agents on **Zendesk**.


## Authorizing the Kore.ai Integration to Sunshine Conversations

To enable the integration, you need to provide authorization using your Zendesk credentials. Follow the steps below to complete the **OAuth-based authorization**:

1. Log into the Kore.ai XO Platform.
2. Navigate to **Deploy** → **Channels** → **Sunshine Conversations** Channel.
3. Click the **Authorize** button under **Configurations** on the **Sunshine Conversations** panel.

<img src="../images/Sunshine-1.png" alt="Sunshine Channel" title="Sunshine Channel" style="border: 1px solid gray; zoom:70%;">

4. On the **Zendesk subdomain** page, provide the subdomain and click **Sign in**.
5. On the Zendesk sign-in page, provide your login credentials and click **Sign in**.
6. After you have signed in successfully, a pop-up window will appear asking you to allow Kore.ai to access your Zendesk account. Click on **Allow**.
7. Once the integration is created successfully, you’ll be redirected to the Kore.ai XO Platform to complete the channel enablement process.


## Switchboard Integration for Agent Handoff

The Kore.ai XO Platform lets you hand off the conversation to your Zendesk agents via **Zendesk Switchboard** using the **Agent Transfer** node.

The **Switchboard Integration API** is used to route the user’s conversations from Zendesk to the XO platform. This API has a pass control system to decide whether the conversation is to be routed to a Bot or a live agent.

The **Pass Control** action is triggered when the conversation is switched to the Bot and also when the conversation is switched to the agent helpdesk. This action lets developers define custom metadata to be sent with the existing metadata from the XO Platform to Zendesk when the conversation session is closed.

To enable the Agent Handoff, follow the steps below:


1. Switch on the **Enable Agent Handoff** option under **Configurations** in the **Sunshine Conversations** panel.
2. From the [Zendesk Admin Center,](https://support.zendesk.com/hc/en-us/articles/4581766374554#topic_hfg_dyz_1hb) navigate to **Apps & Integrations** and click the **Conversations API** menu option to get your **API Key** and **API Secret**. Please get in touch with your Zendesk sales representative if you don’t see this menu.
3. Paste these values in their respective fields on the Kore.ai platform under **Sunshine Conversations** > **Configurations** > **OAuth** > **Enable Agent Handoff** section.
4. Provide the **Key** and **Value** inputs in the text fields for **SessionClosure Metadata** to define your custom metadata. This key-value pair is captured in the switchboard integration API and sent to Zendesk when the conversation session closes.
5. Click **Save** to enable the Channel and Agent Handoff.
<img src="../images/Sunshine-2.png" alt="Save Sunshine Channel" title="Save Sunshine Channel" style="border: 1px solid gray; zoom:70%;">


**Important Information on Session Closure Metadata**


* The Platform captures and stores the metadata sent as part of the pass control action when the conversation is routed to the virtual assistant.
*  The Platform introduces the [KoreUtil.getSunshineConversationsMetadata() ](https://developer.kore.ai/docs/bots/advanced-topics/koreutil-libraries/#koreUtilgetSunshineConversationsMetadata)function to let a Bot developer fetch the stored metadata (Get API operation), and use it for the following:
    * Entities where JavaScript is supported like advanced messages for a prompt, script nodes, etc.
    * Simple messages like plain text prompts.
*  The Platform hands over the stored metadata to Zendesk when the conversation is transferred to the agent’s helpdesk and when the conversation session is closed as part of the pass control action.
* The Platform does not trigger the session closure message when the Agent transfer is initiated, and the conversation is not handed over back to the platform again.
*  When the Conversation is handed over to the Platform post the agent transfer, the session closure functionality works as usual.
*  Any additional changes or updates to the channel configurations should go through the [Bot Publish](https://developer.kore.ai/docs/bots/publish/publishing-bot/) cycle.
