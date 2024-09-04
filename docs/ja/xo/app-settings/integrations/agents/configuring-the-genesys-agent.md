# Configuring the Genesys Agent

Genesys Voice Platform unifies web and VoIP telephony networks to enable new and powerful voice self-service applications. Kore.ai XO Platform’s Genesys Agent integration allows you to seamlessly hand off the virtual assistant conversations to your live agents on Genesys. 

This post provides the configuration steps for enabling the Genesys Agent integration. Use the configurations provided below as general guidelines, as there could be some differences based on the version of the Intercom that you are using. 


## Overview

Kore.ai’s Virtual Assistant (VA) serves as the central point of interaction for the users. In addition to its regular capabilities, the VA acts as a proxy or intermediary between the users and the Genesys agents to hand over conversations seamlessly. The VA also allows you to integrate with the Intercom platform. The VA facilitates communication and interaction between the user and the Genesys agent using the chat module. 


## Configuration

To configure the Intercom agent, follow the instructions in the sections below.


### Step 1: Retrieve your Organization ID

1. To retrieve your organization ID, please follow the steps mentioned at [https://developer.mypurecloud.com/api/webchat/widget-version2.html#obtain_your_genesys_cloud_organization_id.](https://developer.mypurecloud.com/api/webchat/widget-version2.html#obtain_your_genesys_cloud_organization_id){:target="_blank"}
2. Copy this ID under the **Organization ID** field and keep it for future use.


### Step 2: Create a Deployment ID

1. To create a Deployment ID, log in to [Genesys Pure Cloud](https://apps.mypurecloud.com/){:target="_blank"} and navigate to **Admin > Contact Center > Widgets**.
2. Under widgets, Click **Create Widget** with Widget Type selected as Third Party.
3. Copy this ID under the **Deployment ID** field and keep it for future use.


### Step 3: Create a Queue

1. Log in to [Genesys Pure Cloud](https://apps.mypurecloud.com/){:target="_blank"}  and go to **Admin > Contact Center >** Queues and Create a queue.
2. Copy this name under the **Queue Name** field and keep it for future use.


### Step 4: Enable the Genesys Agent

1. Log in to the Kore.ai XO Platform: [https://bots.kore.ai/botbuilder](https://bots.kore.ai/botbuilder){:target="_blank"}.
2. Select a Virtual Assistant for which you want to configure the Genesys agent. 
3. Navigate to **App Settings** > **Integrations** > **Agent Transfer** and click the **Genesys**.


4. Click the **Configurations** tab and enter the following credentials for the Genesys Agent:
    1. **Genesys Cloud login URL**: URL of your Genesys AWS Region which will allow the platform to route the conversation requests to the provided Genesys AWS region. This is a **mandatory field**. You can find the URL of your region through the link provided with the field.
    2. **Organization_Id**: The organization ID hosted on Genesys. (The same ID that you copied in Step 1.)
    3. **Deployment_Id**: The deployment ID of your Genesys account. (The same ID that you copied in Step 2.)
    4. **Queue Name**: The unique queue name. (The name of the queue that you created in Step 3.)

    <img src="../images/configuring-the-genesys-agent-img2.png" alt="Enter Genesys agent credentials" title="Enter Genesys agent credentials" style="border: 1px solid gray;">

5. If you want to make Genesys the default agent, enable the **Default Agent System for all bot channels** option.

    <img src="../images/configuring-the-genesys-agent-img3.png" alt="Making Genesys the default agent" title="Making Genesys the default agent" style="border: 1px solid gray;">

    !!! Note
    
        This option is available only when you have multiple agents configured for your VA.  

6. You can customize the channel mapping by clicking the **Manage** link.
7. Once you click **Manage**, you can map the channels for which you want to use the Genesys agent to hand over the conversations. To learn more about channel enablement, see[ Adding channels to your bot](../../../../channels/adding-channels-to-your-bot/){:target="_blank"}.
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