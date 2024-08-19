# Kore Voice Automation Integration with Zoom Contact Center

**Zoom Contact Center (ZCC)** is an automation solution for enterprises to manage customer interactions across voice and chat channels. This Integration will  enable Voice automation through SIP Integration. **Kore.ai** now supports the Zoom Contact Center voice channel to integrate voice virtual assistants.

This integration streamlines customer support, automates responses, and improves overall operational efficiency, leading to enhanced customer experiences and increased productivity.

## How it Works

Here’s a general overview of how voice virtual assistant interactions work on the Zoom Contact Center:

* **Setup and Configuration**: Kore.ai sets up and configures the integration between their virtual assistant and ZCC. This involves installing specific connectors provided by Zoom and configuring the settings to establish a connection.
* **Channel Integration**: Once the integration is set up, the virtual assistants on Kore.ai can be configured to use ZCC as one of its communication channels (setting includes “Transfer form IVR” and “Agent Transfer”. This means that incoming customer inquiries can be handled through Zoom’s communication platform, which may include voice calls and then routed to Kore’s IVR for running voice automation.
* **Routing and Distribution**: When a customer initiates contact through ZCC, Kore.ai’s routing system directs the interaction to an available agent based on predefined rules and criteria.
* **Agent Interaction**: The agent receives the customer interaction and responds to the customer using ZCC’s communication features, such as answering voice calls.

## Prerequisites

Please ensure you have the following before enabling this channel:

* A Zoom App Marketplace Developer account. Don’t have an account? Sign up [here](https://marketplace.zoom.us/).
* Developer access to the XO Platform. Need Developer Access? [Contact us](https://kore.ai/contact-us/).

## Setting up Zoom Contact Center

The important steps to set up the ZCC channel are summarized below:

1. Associate an App within an experience flow. [Know more](https://docs.kore.ai/smartassist/experience-flows/flow-designer/).
2. Configure “Transfer from IVR.”
3. Configure “Agent Transfer.”
4. Create a Bot Connector instance on Zoom App Marketplace to associate a virtual assistant. 
5. Fetch Conversation Details and Summary.

## Architecture Diagram
<img src="../images/architecture-diagram-1.png" alt="architecture-diagram" title="architecture-diagram" style="border: 1px solid gray; zoom:80%;">

## Step 1: Associate an App within an experience flow. [Know more](https://docs.kore.ai/xo/flows/create-flows/)

If you have your App ready with you then you can use “Automation” Node in the flow and attach that App with the flow that you want to trigger upon transfering the call from ZCC to Kore IVA. Read more [here](https://docs.kore.ai/xo/flows/node-types/automation/).

!!! note
    If you are using the older version “Smart Assist” then use this [link](https://docs.kore.ai/smartassist/experience-flows/create-experience-flows/).

## Step 2: Configure “Transfer from IVR”

You must configure **Transfer from IVR** to transfer a call from ZCC to Kore. Follow the steps below to make this configuration:

Go to Kore.ai **Flows & Channels** > **Channels** > **Kore.ai Voice Gateway,** and select **SIP Numbers** > **Configure SIP Transfer**.
<img src="../images/transfer-from-ivr-2.png" alt="transfer-from-ivr" title="transfer-from-ivr" style="border: 1px solid gray; zoom:80%;">

1. Select **Contact Center AI.** The **SIP URI** field auto populates and will be used to transfer the call from ZCC to Kore Voice Automation.
2. Add the **Domain** name from Zoom in the **Fully Qualified Domain Name** field in Kore SIP Transfer.
3. Add the **DID Number** from Zoom. (Note that this number will be used to identify the bot and flow for a call received from Zoom on Kore.)
4. Click **Next**.
5. Select **Inbound** **Calls** and **Outbound Calls**.  
<img src="../images/forward-to-phone-number-3.png" alt="forward-to-phone-number" title="forward-to-phone-number" style="border: 1px solid gray; zoom:80%;">

6. Click **Save**.  
!!! note
    Upon configuring the above SIP transfer configuration, you need to attach one flow created in Step 1 to this configuration.

7. Click **Attach Flow** and attach the flow created on step-1. For help, refer to [Attach Flow](https://docsinternal-kore.github.io/docs/xo/channels/kore.ai-voice-gateway/kore-voice-gateway/#attach-flow).  
<img src="../images/koreai-voice-gateway-4.png" alt="koreai-voice-gateway" title="koreai-voice-gateway" style="border: 1px solid gray; zoom:80%;">

## Step 3: Agent Transfer Configuration

After the customer interacts with Kore’s IVA, you can perform agent transfer from Kore IVA to ZCC through one of the following two approaches:

* Agent Transfer Node in Flow. [Read here ](https://docs.kore.ai/xo/flows/node-types/agent-transfer/)
* Agent Transfer Node in a Dialog Task

### 3. 1 Agent Transfer Node in Experience Flow

3. 1. 1. Select **Agent Transfer** node from **Action**.  
<img src="../images/agent-transfer-node-5.png" alt="agent-transfer-node" title="agent-transfer-node" style="border: 1px solid gray; zoom:80%;">

3. 1. 2. Add configuration for **Agent Transfer** node.  
<img src="../images/adding-configuration-agent-transfer-node-6.png" alt="adding-configuration-agent-transfer-node" title="adding-configuration-agent-transfer-node" style="border: 1px solid gray; zoom:80%;">

3. 1. 3. After configuring the Agent Transfer node in Experience Flow, head to **App Settings** > **Integration** > **Agent transfer** > **Voice** and create a new SIP transfer here. 
3. 1. 4. For ZCC, we are using **SIP BYE** for Agent Transfer.  
<img src="../images/sip-transfer-7.png" alt="sip-transfer" title="sip-transfer" style="border: 1px solid gray; zoom:80%;">

3. 1. 5. Configure SIP headers to be transferred to ZCC on Agent Transfer via SIP BYE.

### 3. 2 Agent Transfer Node in a Dialog Task

Zoom users can also invoke agent transfer from the Dialog Task using a message node. Read more [here](https://developer.kore.ai/virtual-assistants/) on Kore Automation / Dialog task.

Add the following code on the message node for agent transfer:

!!! note
    Agent transfer can be to a number or any SIP URI.

var message = "Transferring Call to xxxx number";

var ReferTo = "+91xxxxxxxxxx";   // or sipUrl 

var headers = {

   "X-Reason" : "Call Received from Kore"

}

print(voiceUtils.refer(message,ExternalPhoneNumber,headers))

!!! note
    The following scenarios can be considered upon Agent Transfer:

### **Scenario 1: Question Resolved, Customer Hangs Up**

* **Given** that a customer’s query has been resolved by the voice bot,
* **When** the customer chooses to hang up directly,
* **Then** Zoom triggers a **SIP BYE**, Kore sends **ACK**, and no **SIP headers** are passed.

### **Scenario 2: Question Resolved, Voice Bot Ends the Call**

* **Given** that a customer’s query has been resolved by the voice bot,
* **When** the voice bot ends the call,
* **Then** Kore should send the **kore-session_id** and **kore-bot_id** in the **INVITE’s 200 OK** response, **kore-reason(HangUp)** in the **SIP BYE** message, and any custom header configured in Voice Gateway.

### **Scenario 3: Question Unresolved, Customer Needs Transfer to ZCC Agent**

* **Given** that the customer’s query cannot be resolved by the voice bot,
* **When** the customer requests to speak with a live agent,
* **Then** Kore should send the **kore-session_id** and **kore-bot_id** in the **INVITE’s 200 OK** response and send **kore-reason(TransferToAgent)** in the **SIP BYE** message.

## Step 4: Create a Connection from ZCC to Kore IVA - Transfer from IVR (SIP Transfer)

1. Sign in to [Zoom App Marketplace](https://marketplace.zoom.us/apps) as an Admin.
2. Select **App Types** > **Connectors** from the left navigation filter menu, and navigate to the **Connectors** page, or simply type “kore.ai” in the **Search** field.  
<img src="../images/koreai-virtual-assistant-8.png" alt="koreai-virtual-assistant" title="koreai-virtual-assistant" style="border: 1px solid gray; zoom:80%;">  
<img src="../images/koreai-virtual-assistant2-9.png" alt="koreai-virtual-assistant2" title="koreai-virtual-assistant2" style="border: 1px solid gray; zoom:80%;">

3. Select **Kore.ai Virtual Assistant** connector, and navigate to the **Connector Details** screen.  
<img src="../images/connector-details-10.png" alt="connector-details" title="connector-details" style="border: 1px solid gray; zoom:80%;">

4. Click **Create Connector**, and navigate to the **Create Kore.ai Virtual Assistant Connector** screen.  
<img src="../images/create-koreai-virtual-assistant-connector-11.png" alt="create-koreai-virtual-assistant-connector" title="create-koreai-virtual-assistant-connector" style="border: 1px solid gray; zoom:80%;">

5. Enter a name in the **Connector Name** field, select “Voicebot” from the “Choose Bot Type” dropdown list, and then click **Next**.
6. Select the desired region for the voice bot from the dropdown list to automatically populate the Base URL of the regional Kore.ai platform.
7. Copy the **Bot ID**, **Client ID**, and **Client Secret** of your respective app on kore.ai. (Go to **Flows & Channel** > **Digital**. Under **Configured**, click **Configured Channels** > **Web/Mobile Client** > **JWT App Details.**)  
<img src="../images/web-mobile-client-screen-12.png" alt="web-mobile-client-screen" title="web-mobile-client-screen" style="border: 1px solid gray; zoom:80%;">

8. Paste them into the **Bot ID**, **Client ID**, and **Client Secret** fields under the **Authorization Parameters** section on the **Zoom Kore.ai Virtual Assistant Connector** page, and then click **Next**.  
<img src="../images/zoom-koreai-va-connector-13.png" alt="zoom-koreai-va-connector" title="zoom-koreai-va-connector" style="border: 1px solid gray; zoom:80%;">

9. Copy the **Domain Name** and **DID Number** from the **Zoom Kore.ai Virtual Assistant Connector** page.  
<img src="../images/domain-name-did-number-14.png" alt="domain-name-did-number" title="domain-name-did-number" style="border: 1px solid gray; zoom:80%;">

10. Paste them into the **Virtual Assistant Connector** on **ZCC**.
11. Click **Next** to authorize the **Kore.ai Chatbot Connector** with the Kore.ai platform.

After creating an Experience Flow, you must attach a DID Number to this flow. (Since Zoom integration is based on DID Number, you don’t need to purchase any number from Kore.)

## Step 5: Fetching Conversation Details and Summary

This section explains the process of fetching the details and summary of the conversation between the bot and the customer.

**Steps**

1. Sign in to **SmartAssist**.
2. Go to **Dashboard** > **Interactions** and ensure there are call records.  
<img src="../images/dashboard-interactions-15.png" alt="dashboard-interactions" title="dashboard-interactions" style="border: 1px solid gray; zoom:80%;">

3. Sign in to **[SmartAssist botbuilder](https://smartassist.kore.ai/botbuilder)** using the same credentials.
4. Click the **Instance Bot**.  
!!! note
    You can identify the instance bot by its unique symbol and matching name with the organization. In the above screenshot, Koreai bot is the instance bot as it matches with the organization name and has a unique symbol.
5. Go to **API Scopes**. To do so:
    5.1. Click the **search** button and enter **API Scopes** in it:  
    <img src="../images/api-scopes-16.png" alt="api-scopes" title="api-scopes" style="border: 1px solid gray; zoom:80%;">

    **Or**

    5.2. Click **Deploy **>** APIs & Extensions **>** API Scopes**.  
    <img src="../images/apis-and-extensions-api-scopes-17.png" alt="apis-and-extensions-api-scopes" title="apis-and-extensions-api-scopes" style="border: 1px solid gray; zoom:80%;">

6. Click **Create API Scope**.  
<img src="../images/create-api-scopes-18.png" alt="create-api-scopes" title="create-api-scopes" style="border: 1px solid gray; zoom:80%;">

7. Enter the **Instance Bot** name in the **App** field and select the **Chat History** option.  
<img src="../images/new-api-scope-mapping-19.png" alt="new-api-scope-mapping" title="new-api-scope-mapping" style="border: 1px solid gray; zoom:80%;">

8. Click **Save**.
9. Go to **Build** > **Natural Language** > **Generative AI & LLM**, locate **Kore.ai XO GPT**, and click **Enable Now.**  
<img src="../images/generative-ai-and-llm-20.png" alt="generative-ai-and-llm" title="generative-ai-and-llm" style="border: 1px solid gray; zoom:80%;">

10. On the **Kore.ai XO GPT** page, select:  

    10.1. Models.

    10.2. Fine-tuned model for Summarizing Conversation.

    10.3. Please read through the LLM & Generative Policy guidelines and provide your consent to enable the Integration.  
    <img src="../images/koreai-xo-gpt-21.png" alt="koreai-xo-gpt" title="koreai-xo-gpt" style="border: 1px solid gray; zoom:80%;">

11. Click **Save**.

12. Go to the **Co-Pilot** section and enable **Conversation Summary**. To enable, select a model from the **Select Model** list and then click the **enable** toggle.  
<img src="../images/llm-integration-22.png" alt="llm-integration" title="llm-integration" style="border: 1px solid gray; zoom:80%;">  
<img src="../images/conversation-summary-23.png" alt="conversation-summary" title="conversation-summary" style="border: 1px solid gray; zoom:80%;">

13. Go to **Deploy** and click **Publish** to publish your bot.  
<img src="../images/publish-bot-24.png" alt="publish-bot" title="publish-bot" style="border: 1px solid gray; zoom:80%;">

14. Click **Proceed**.  
<img src="../images/proceed-with-publish-25.png" alt="proceed-with-publish" title="proceed-with-publish" style="border: 1px solid gray; zoom:80%;">

15. Enter a comment in the **Comment** box, and click **Confirm**.  
<img src="../images/comment-and-confirm-26.png" alt="comment-and-confirm" title="comment-and-confirm" style="border: 1px solid gray; zoom:80%;">

    15.1. Close the message that confirms publishing of your Virtual Assistant.  
    <img src="../images/publish-confirmation-27.png" alt="publish-confirmation" title="publish-confirmation" style="border: 1px solid gray; zoom:80%;">

16. Copy the **curl** from the [Conversation Details and Summary API](https://developer.kore.ai/docs/bots/api-guide/conversation-details-summary-api/).

17. Go to **Postman**, paste the **curl** copied from the API, and then:

    **17.1.** Replace the **botID** with the **Bot ID** value copied from **SmartAssist**.  
    
    Follow these steps to get the **botID**:

    **17.1.1.** Sign in to **SmartAssist**.

    **17.1.2.** Go to **Configuration** > **System Setup** > **Channels**.

    **17.1.3.** Click **Chat** > **Web/Mobile Client**.  
        <img src="../images/chat-web-mobile-client-28.png" alt="chat-web-mobile-client" title="chat-web-mobile-client" style="border: 1px solid gray; zoom:80%;">

    **17.1.4.** On the **Web/Mobile Client** configuration page, click to expand the **App Details** section.  
        <img src="../images/api-details-29.png" alt="api-details" title="api-details" style="border: 1px solid gray; zoom:80%;">

    **17.1.5.** Scroll down to the **Bot ID** section, and click the **Copy** button to copy the botID value.  
        <img src="../images/copy-botid-value-30.png" alt="
        " title="
        " style="border: 1px solid gray; zoom:80%;">

    **17.2.** Copy the **sessionID** from **SmartAssist. 
     Follow these steps to get the **sessionID**:

    **17. 2. 1.** Sign in to **SmartAssist**.

    **17. 2. 2.** Go to **Dashboard** > **Interactions**.

    **17. 2. 3.** Click the log for which you want to get the details.  
        <img src="../images/get-conversation-details-31.png" alt="get-conversation-details" title="get-conversation-details" style="border: 1px solid gray; zoom:80%;">
 
    **17. 2. 4.** On the **Insights to Logs** page, click **Identifiers**, and then click the **copy** symbol against the **Session ID** value.  
        <img src="../images/sessionid-details-32.png" alt="sessionid-details" title="sessionid-details" style="border: 1px solid gray; zoom:80%;">

    **17.3.** Generate and copy the **JWT token** by following [this document](https://docsinternal-kore.github.io/docs/xo/apis/automation/api-introduction/#generating-the-jwt-token).
18. Run the modified **curl** to get the conversation details and summary of a session.



