# Bot Override and Automation

While using the agent desktop, agents can access the AgentAssist Bot, which helps answer customer queries based on customer context and intents. After the intent is identified, you can start the automation that the bot suggests.

## Bot Override
During the execution of automation, there might be an occurrence where the bot does not understand the customer inputs, which would lead to a “try again” error. 

If the error occurs multiple times, the agent (being aware of the input format) can intervene to correct the input.

**Steps to override Bot inputs**:

1. Below the automation step, click **Override Input**.
<img src="../bot-override-and-automation-images/override-input-1.png" alt="override-input" title="override-input" style="border: 1px solid gray; zoom:80%;">

2. Enter the required value in the **Enter Value input** box.
<img src="../bot-override-and-automation-images/enter-value-2.png" alt="enter-value" title="enter-value" style="border: 1px solid gray; zoom:80%;">

The path is corrected, and the control gets back to the user.
To provide a better experience to the customer, you can intervene and correct the bot’s path.


## Terminate Automation
The Terminate Automation option allows you to stop ongoing automation anytime.

There can be multiple reasons to terminate:

* Accidental automation clicks.

* Unexpected behavior.

* Customer doesn’t want to proceed with the intent anymore. 

**Steps for terminating an automation**:

1. On the **Assist** tab, next to the **automation** step, click **Terminate**. A confirmation pop-up message appears.
2. Click **Yes Terminate** to stop the running task.
<img src="../bot-override-and-automation-images/yes-terminate-3.png" alt="yes-terminate" title="yes-terminate" style="border: 1px solid gray; zoom:80%;">
## Sentiment Analysis

A single agent may serve multiple customers at a given time, and it requires switching back and forth continuously. Despite transitions, Sentiment Analysis will allow agents to detect the customer’s sentiment instantly.

The bot continuously assesses the customer’s sentiment based on their messages and lets you know it in real-time.

The customer sentiment is placed at the bottom of the automation.
<img src="../bot-override-and-automation-images/cus-sentiment-4.png" alt="cus-sentiment" title="cus-sentiment" style="border: 1px solid gray; zoom:80%;">

## Search or Ask AgentAssist

The Search function allows you to search for FAQs/automations directly from the bot. You can identify automations behind an intent by asking the bot using the search bar. In addition to being easily accessible, the search bar also lets you look up information concurrently with a customer conversation. The search bar is placed at the bottom of the Agent AI widget and is easily accessible to agents.

**Steps for searching/asking Agent AI**:

1. In the **Ask AgentAssist** search bar, type the question you want to ask the bot.
2. Press the **Enter** key on the keyboard. Agent AI shows related search results. You can use the search results to respond to the customer.
<img src="../bot-override-and-automation-images/ask-agent-assist-5.png" alt="ask-agent-assist" title="ask-agent-assist" style="border: 1px solid gray; zoom:80%;">

## Run Automation with Agent Inputs

There are two ways to perform automations:

* Customer Inputs

* Agent Inputs (Bot override)

Automation with the customer inputs feature introduces the capability where agents give the inputs to the bot allowing the agents to have control over the entire automation process. The agents can run this automation in parallel and provide the customer with the final results.

**Steps to run an automation**:

* Click **Run with agent inputs**. The automation starts on the **My Bot** tab. Automation is a parallel session dedicated to the agent, and it won’t impact customer interaction.

The **Run with agent inputs** feature allows an agent to run automation independently and helps agents retrieve information directly and give the final result to the customer, thereby decreasing the AHT drastically.

<img src="../bot-override-and-automation-images/run-with-agent-input-6.png" alt="run-with-agent-input" title="run-with-agent-input" style="border: 1px solid gray; zoom:80%;">

## Library of Automation
The library has two sections:

* Frequently-used automation

* All the automations

With time, you will become familiar with the types of queries users ask. You can run automations directly from the Library section.

**Steps to access the Library tab**:

1. On the **Library** tab (represented by the **Folder** icon), click **RUN** to initiate automation.
2. Click the **ellipses (…)**, and a screen tip displays the message **Run with Agent inputs**.
<img src="../bot-override-and-automation-images/run-with-agentinputs-7.png" alt="run-with-agent-input" title="run-with-agent-input" style="border: 1px solid gray; zoom:80%;">
3. In the **My Bot** tab, enter the input in the **Enter Value** box.
<img src="../bot-override-and-automation-images/my-bot-tab-value-8.png" alt="my-bot-tab-value" title="my-bot-tab-value" style="border: 1px solid gray; zoom:80%;">