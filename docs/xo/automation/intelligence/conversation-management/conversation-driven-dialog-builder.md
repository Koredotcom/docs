# Conversation-driven Dialog Builder

Conversation Builder is a new dialog task editor which allows you to design and build a dialog task using conversational elements. It leverages the [Flow-based Dialog Task Builder](/docs/xo/automation/use-cases/dialogs/dialog-tasks-overview/){target="_blank"}.

Developing the Dialog Task Builder involves manual effort in understanding and converting the conversation components into dialog components.

A Conversation-driven Dialog builder automatically converts conversation components into a Dialog Task. Designers can focus on visualizing the end-user conversation before building the dialog. Since the conversation flow is automatically generated, developers can focus on the more technical aspects. This not only reduces the development effort but also ensures that the bot is closer to the actual design.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>This feature was released with v9.0 of the platform and is in  (beta) state.</p>
</div>

## Features

* An integrated approach for conversation designers (or business analysts) and developers to collaboratively build a dialog.
* Ability to define a dialog in a _conversation view_ – conversation designers or BAs can design the bot in this view as a series of bot messages and user messages.
* Auto-generation of tasks in the _build view_ – the developers can fine-tune the configurations and expand on top of the conversation flow to provide the necessary logic and fulfillment elements leading to a fully functional bot.
* Improved usability and intuitiveness.
* Automatic sync between the views i.e changes to one view updates the other.

## Conversation View

BAs/Conversation Designers can define a dialog in _conversation view_. This view consists of a conversation flow as a series of bot messages and user messages. Where appropriate, BAs can add Action nodes that would be configured during the bot development.

!!!note

    This document lists the features available exclusively in the conversation builder. This is in addition to the features available on Storyboard that are common to both storyboard and conversation builder. For the common features refer here.

## Build View

The conversation view can be expanded by providing the necessary logic and fulfillment elements in the Build View. 

This is the new dialog builder with the options to drag and drop or add the necessary nodes. The entity, message, and other nodes along with the appropriate connections are generated automatically based on the conversation designed by the BA/conversation designer.

Developer can make configuration changes and add appropriate service calls etc. to make it a fully functional bot.

You can access this view by clicking **Virtual Assistant** > **Use Cases** > **Dialogs**.

<img src="../images/access-dialogs.png" alt="access dialogs" title="access dialogs" style="border: 1px solid gray; zoom:75%;">

## Conversation Builder

You can initiate a Conversation-driven Dialog Builder with the following steps:

1. Select the bot you want to design the conversation
2. From the left menu, click **Virtual Assistant** > **Use Cases** > **Dialogs**.
3. Click **Create Dialog** and select the required option based on whether you want to create a custom dialog or use AI for the same.
<img src="../images/create-new-dialog.png" alt="create new dialog" title="create new dialog" style="border: 1px solid gray; zoom:75%;">
<img src="../images/select-dialog-option.png" alt="select dialog option" title="select dialog option" style="border: 1px solid gray; zoom:75%;">

4. Configure the fields based on the option you select:
 * **(Option A)**: For **Start From Scratch**, enter the following:
    * **Intent Name**: For example, "*Create Savings Account*."
    * **Description**: Provide a description based on the intent for the dialog you're creating.
    * **Intent Training** – Enter utterances that would trigger this intent.
    * **More Options**: You can set the following options:
      * **Customer Use Case**: Enable this option to make the use case available to the customer.
      * **Agent AI Use Case**: Enable this option to make the use case available on Agent AI for an agent and select one the following scenarios based on your requirement:
        * **During Chats**: To manually or automatically trigger a use case by the agent when engaged with a customer in a chat based channel.
        * **During Email**: To manually or automatically trigger a use case by the agent when engaged with a customer in an email channel.
        * **During Calls**: To manually or automatically trigger a use case by the agent when engaged with a customer on a phone call.
        * **Launch By Menu**: To list the use case in the AgentAssist library allowing the agent to browse and find use case to trigger it.
      * **Intent Settings**: You can set how the dialog task will be presented to the bot based on the intent by selecting one of these options:
        * **Sub intent dialog**: Task can be invoked only as a sub-task when another task is in progress. Task will not be presented as a bot task when user requests for help.
        * **Hide from help**: Task will not be presented as a bot task when the user requests for help. Users can invoke this task anytime while talking to the bot.
      * **Analytics - Containment Type**: When you leave a conversation without providing an input, then the platform considers that conversation as a **Drop Off**. Drop off also results in scenarios where the virtual assistant asks input for feedback or when it asks if there is  ‘anything else’ with which it can help you. At times even if the tasks are helper tasks, they still lead to higher drop-off rates. To prevent this, while creating a dialog task you are provided with an option to configure the containment type as either drop-off or a self-service, when the user abandons the conversation. Based on the user abandonment type, select one of the following:
        * **Abandonment as Self-Service**: Conversations abandoned by users while executing this Dialog are considered 'Self-service Conversations'. Other failures are considered 'Drop-off Conversations'.
        * **Abandonment as Drop Off**: Conversations abandoned by users or any failures during execution of this Dialog will be considered as Drop off.

!!!note

    By default  'Abandonment as Drop Off' is selected as an option for Analytics – Containment Type. In this case, any conversation abandoned by the user is considered a drop-off during dialog execution.
    If you select Abandonment as Self-Service, then any conversation abandoned by the user is considered a self-service conversation.  However, any script, service or any other failures are considered as drop-off conversations.

Click **Proceed**.

<img src="../images/create-custom-dialog.png" alt="create custom dialog" title="create custom dialog" style="border: 1px solid gray; zoom:75%;">

* **(Option B)**: **Gen AI** uses Gen AI to generate a dialog task from a preexisting template based on the intent you provide. Enter the following to generate the dialog:
    * **Intent Name**: For example, "*Create Savings Account*."
    * **Description**: Provide a description based on the intent for the dialog you're creating.

    Click **Generate**.
    <img src="../images/gen-ai-based-dialog.png" alt="gen ai dialog" title="gen ai dialog" style="border: 1px solid gray; zoom:75%;">

    A preview of the auto-generated dialog flow appears on the right pane. You can either click **Proceed** to continue, or click **Regenerate** to generate another dialog flow based on your intent.

    <img src="../images/preview-gen-a-dalog.png" alt="gen ai dialog preview" title="gen ai dialog preview" style="border: 1px solid gray; zoom:75%;">
* **(Option C)**:To find and install a third-party dialog template out of 150+ categories and 30+ integrations, select **Marketplace**.
<img src="../images/market-place-dialogs.png" alt="marketplace dialogs" title="marketplace dialogs" style="border: 1px solid gray; zoom:75%;">