# Configuring the Genesys Agent

Genesys Voice Platform unifies web and VoIP telephony networks to enable new and powerful voice self-service applications. Kore.ai XO Platform’s Genesys Agent integration allows you to seamlessly hand off the virtual assistant conversations to your live agents on Genesys. 

This post provides the configuration steps for enabling the Genesys Agent integration. Use the configurations provided below as general guidelines, as there could be some differences based on the version of the Intercom that you are using. 


## Overview

Kore.ai’s Virtual Assistant (VA) serves as the central point of interaction for the users. In addition to its regular capabilities, the VA acts as a proxy or intermediary between the users and the Genesys agents to hand over conversations seamlessly. The VA also allows you to integrate with the Intercom platform. The VA facilitates communication and interaction between the user and the Genesys agent using the chat module. 


The XO Platform supports the following Genesys integration methods for agent transfer:

* **WebChat (Legacy)**: Provides real-time, session-based conversations that end when the user leaves the site or closes the chat. Lacks conversation history and continuity, making it harder to maintain context or follow up effectively.
* **WebMessaging**: Delivers persistent, asynchronous conversations that resume seamlessly across visits and devices. Enhances customer engagement with bot and agent support, while giving agents complete visibility into the customer journey.


## Current Limitations of WebMessaging

As of now, the following features are not supported and will be available in upcoming release:

* Resuming the same Interaction again
* File Attachments
* Metadata Transfer
* Rich Media Messaging



## Configuration

To configure the agent, follow these steps:


### Step 1. Add the Genesys Cloud login URL



1. Log in to your Genesys Cloud account. The login URL will be visible in your browser’s address bar e.g., [https://login.mypurecloud.com](https://login.mypurecloud.com/).
2. Copy the URL and keep it for future use..
3. Alternatively, you can also get your region-specific “Genesys Cloud login URL” by referring to this [Genesys Cloud region URL's info](https://help.mypurecloud.com/articles/aws-regions-for-genesys-cloud-deployment/#tab2).



### Step 2. Retrieve the Organization ID



1. To retrieve your organization ID, please follow the steps mentioned in [Find your Organization ID](https://help.mypurecloud.com/faqs/how-do-i-find-my-organization-id/).
2. Copy the ID and keep it for future use.


### Step 3. Create a Queue



1. Navigate to Admin > Contact Center > Queues. 
2. Click Create Queue.
3. Enter the queue name, and select the appropriate division.
4. Click Save and navigate to the Queue settings screen.
5. Assign agents or groups as queue members.
6. Configure routing methods and other queue settings as needed.
7. Click Save.
8. Copy the queue name and keep it for future use.


### Step 4. Create an Inbound Message Flow



1. Navigate to Admin > Architect.
2. Hover over the Flows menu and select Inbound Message Flow.
3. Click Add to create a new inbound message flow.
4. Enter a unique name and (optionally) a description of the flow.
5. Select the appropriate division for the flow.
6. Click Create Flow to open the flow configuration page.
7. In the flow editor, add a Transfer to ACD action and select the target queue for agent transfer.
8. Configure any additional logic or error handling as needed.
9. Validate and Publish the flow to make it available for routing.


### Step 5. Create a Deployment Key


#### For WebChat



1. Navigate to Admin > Contact Center > Widgets.
2. Click Create Widget, select the widget type as Third Party, and save it.
3. In the widget settings, select Route to Flow.
4. Choose the Inbound Message flow you have created in Architect for routing.
5. Once saved, the system will display a Deployment Key.
6. Copy this key and keep it for future use.


#### For WebMessaging



1. Navigate to Admin > Message > Messenger Configurations and click New Configuration.
2. Enter a name and description, then under Labels & Languages Support, choose the supported languages and set the default language.
3. In the Apps tab, set Conversation Disconnect to *Display conversation status and disconnect session* and click Save.
4. Navigate to Admin > Message > Messenger Deployments and click Create New Deployment.
5. Enter a deployment name, select the Messenger configuration you have created, and for Supported Content Profile, choose WebMessaging Legacy Default.
6. Set domain restrictions as needed.
7. For Select your Architect Flow, choose the inbound message flow you have created.
8. Click Save to generate the Deployment Key, then copy the same and keep it for future use.


### Step 6. Add the WebSocket URL

!!! note

    If you are configuring WebChat, skip to step no 7: Enable the Genesys Agent.


1. Go to the following link to find your region's Genesys WebSocket URL: 
[ Genesys WebSocket Region Info](https://developer.genesys.cloud/commdigital/digital/webmessaging/websocketapi#connecting).
2. Locate the WebSocket address that matches your Genesys Cloud region.
3. Copy the WebSocket URL (e.g., wss://streaming.mypurecloud.com/v2/websocket) and keep it for future use.


### Step 7: Enable the Genesys Agent



1. Log in to the Kore.ai XO Platform:[ https://bots.kore.ai/botbuilder](https://bots.kore.ai/botbuilder).
2. Select a Virtual Assistant for which you want to configure the Genesys agent.
3. Navigate to **App Settings** > **Integrations** > **Agent Transfer** > **Chat** and click **Genesys**. 

4. Click the **Configurations** tab and enter the following credentials for the Genesys Agent: 

    * **Genesys Cloud login URL**: URL of your Genesys AWS Region, which will allow the platform to route the conversation requests to the provided Genesys AWS region. This is a **mandatory field**. You can find the URL of your region through the link provided in the field.
    * **Organization_Id**: The organization ID hosted on Genesys.
    * **Deployment_Id**: The deployment ID of your Genesys account.
    * **Queue Name**: The unique queue name.
    * **Genesys Web socket URL:** The unique web socket URL (applicable only for WebMessaging).  
        <img src="../images/genesys-at.png" alt="Enter Genesys agent credentials" title="Enter Genesys agent credentials" style="border: 1px solid gray;"> 



5. If you want to make Genesys the default agent, enable the **Default Agent System for all bot channels** option. 
 Note:  This option is available only when you have multiple agents configured for your VA. 
 

6. You can customize the channel mapping by clicking the **Manage** link. 

7. Once you click **Manage**, you can map the channels you want the Genesys agent to hand over the conversations. To learn more about channel enablement, see[ Adding channels to your bot](../../../channels/adding-channels-to-your-bot.md).
8. After mapping channels, click **Done**.
9. Click **Save** to enable the Genesys agent.
10. Publish the VA. For more information, see [Publishing Bot](../../../../deploy/publishing-bot/){:target="_blank"}.


## Execution

This section helps you verify how the conversations from the Kore.ai XO Platform are handed over to the Genesys agent after enabling it. 

To verify the data exchange between Kore.ai’s VA and Genesys agent, follow these steps:

1. Open a virtual assistant for which you have enabled the Genesys agent.
2. Create a new Agent Transfer Node task. For example, create a _PlatformAgent_ task with the _AgentTransfer_ node and configure it to use the Genesys agent. For more information, read the [Agent Transfer Node](../../../../automation/use-cases/dialogs/node-types/working-with-the-agent-transfer-node){:target="_blank"} article.

    <img src="../images/configuring-the-genesys-agent-img4.png" alt="new Agent Transfer Node task" title="new Agent Transfer Node task" style="border: 1px solid gray;">

3. Click the **Talk to Bot** icon to launch the VA and enter **Help**.
4. When a user initiates the chat from the VA, it transfers the conversation to the Genesys agent and sends a message to the user.
5. Agent receives a notification about this on Genesys.
6. Now, the connection between the Genesys agent and the user has been established, and the conversation continues.

    <img src="../images/configuring-the-genesys-agent-img5.png" alt="Connection established between Genesys agent and user" title="Connection established between Genesys agent and user" style="border: 1px solid gray;">

