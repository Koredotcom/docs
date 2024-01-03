# Conversation-driven Dialog Builder

Conversation Builder is a new dialog task editor which allows you to design and build a dialog task using conversational elements. It leverages <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/dialog-tasks-overview/" target="_blank">Flow-based Dialog Task Builder</a>.

While the Storyboard helps in designing and visualizing the user conversations, the bot needs to be developed in the Dialog Task Builder. This involves a manual effort in understanding and converting the conversation components into dialog components. 

Often, a lot gets missed in the translation. Validation of a Dialog against a Scene also requires significant manual effort and there is not much collaboration between a conversation designer/BA and the implementation engineers due to the different implementation styles. 

Also, the ongoing changes in the Scene or in the Dialog need to be manually synchronized and can get very complicated

Conversation-driven Dialog builder automatically converts the storyboard scenes into a Dialog Task. Designers can focus on visualizing the end-user conversation before building the dialog. Since the conversation flow is automatically generated, developers can focus on the more technical aspects. This not only reduces the development effort but also ensures that the bot is closer to the actual design.

!!!note

    This feature was released with v9.0 of the platform and is in the Beta state.

## Features

* An integrated approach for conversation designers (or business analysts) and developers to collaboratively build a dialog.
* Ability to define a dialog in a _conversation view_ – conversation designers or BAs can design the bot in this view as a series of bot messages and user messages.
* Auto-generation of tasks in the _build view_ – the developers can fine-tune the configurations and expand on top of the conversation flow to provide the necessary logic and fulfillment elements leading to a fully functional bot.
* Improved usability and intuitiveness.
* Automatic sync between the views i.e changes to one view updates the other.

## Conversation View

BAs/Conversation Designers can define a dialog in _conversation view_. This view consists of a conversation flow as a series of bot messages and user messages. Where appropriate, BAs can add Action nodes that would be configured during the bot development.

The **Build** -> **Conversation Skills** -> **Storyboard** gives you an exclusive conversation view with an option to switch to the conversation flow. It can also be viewed at the left bottom window from the new Dialog Builder.
<img src="../images/conversation-view.png" alt="conversation view" title="conversation view" style="border: 1px solid gray; zoom:75%;">

!!!note

    This document lists the features available exclusively in the conversation builder. This is in addition to the features available on Storyboard that are common to both storyboard and conversation builder. 

## Build View

The conversation view can be expanded by providing the necessary logic and fulfillment elements in the Build View. This is the new dialog builder with the options to drag and drop or add the necessary nodes. 

The entity, message, and other nodes along with the appropriate connections are generated automatically based on the conversation designed by the BA/conversation designer. Developer can make configuration changes and add appropriate service calls etc. to make it a fully functional bot.

You can access this view either by clicking **View Dialog** from the Conversation view (as seen above) or from **Build** -> **Conversation Skills** -> **Dialog Tasks**.

<img src="../images/build-view.png" alt="build view" title="build view" style="border: 1px solid gray; zoom:75%;">

## Conversation Builder

Let us now look into creating a scene and using the various features available in a conversation builder.

Conversation builder can be accessed in two ways:

* From storyboard by creating a new scene
* From dialog task by creating a new dialog

### Create Scene

1. Open the bot you want to design the conversation.
2. Select the **Build** tab from the top menu.
3. From the left menu, click **Conversation Skills -> Storyboard**.
4. Click **New Scene** and enter the following details.
    
    * **Scene Name**
    * **Description**
    * **Status** of the scene
    * Select **Auto-generate a Dialog Task** option. 
    
        This will ensure that a dialog task is automatically created in the background as you build the scene.

    <img src="../images/create-new-scene.png" alt="create new scene" title="create new scene" style="border: 1px solid gray; zoom:75%;">

### Create Dialog

You can initiate Conversation Driven Dialog Builder from the Create Dialog flow

1. Open the bot you want to design the conversation.
2. Select the **Build** tab from the top menu.
3. From the left menu, click **Conversation Skills** -> **Dialog Task**.
4. Click **Create Dialog** and enter the following details:

    * **Intent Name**
    * **Description**
    * **Intent Training** – Enter utterances that would trigger this intent

5. Select **Try Conversation Driven Dialog Builder** option. This will give you allow you to design a conversation and simultaneously view and define the corresponding dialog task.
<img src="../images/try-conversation-driven-dialog-builder.png" alt="try conversation driven dialog builder" title="try conversation driven dialog builder" style="border: 1px solid gray; zoom:75%;">

### Containment Type Configuration

When you leave a conversation without providing an input, then the platform considers that conversation as a **Drop-Off**. Drop-off also results in scenarios where the virtual assistant asks input for feedback or when it asks if there is  ‘anything else’ with which it can help you.  

At times even if the tasks are helper tasks, they still lead to higher drop-off rates. To prevent this, while creating a dialog task you are provided with an option to configure the containment type as either drop-off or a self-service,  when the user abandons the conversation. 

To configure the **Self-Service** and **Drop-off** options during dialog creation, go to **More Options** → **Analytics – Containment Type** and select the option based on whether you want user abandonment to be considered a Self-service or Drop-Off.
<img src="../images/set-containment-type.png" alt="containment type" title="containment type" style="border: 1px solid gray; zoom:75%;">

!!!note

    By default  'Abandonment as Drop Off' is selected as an option for Analytics – Containment Type. In this case, any conversation abandoned by the user is considered a drop-off during dialog execution.
    If you select Abandonment as Self-Service, then any conversation abandoned by the user is considered a self-service conversation.  However, any script, service or any other failures are considered as drop-off conversations.

## Basic Features

!!!note

    In the following sections, we will be looking into the different aspects of Conversation Builder. Though the screenshots represent the Storyboard flow they are valid for the Dialog task flow also.

### Intent Node

1. Once you create a scene or dialog task, a **Primary Intent** is created by default. This is taken as the User Utterance that triggers this scene/dialog.
2. Click the **more** option and select **Configuration Properties**.
<img src="../images/set-configuration-properties.png" alt="set configuration properties" title="set configuration properties" style="border: 1px solid gray; zoom:75%;">

 * Change **Display Name** and **Node Name** if needed.
 * Add/change **Description**.
 * **Add utterance** that would trigger this intent. You can add multiple utterances. These would be in addition to the primary intent utterance.
 <img src="../images/add-utterance-trigger-intent.png" alt="add utterance trigger intent" title="add utterance trigger intent" style="border: 1px solid gray; zoom:75%;">

3. You have the option to **Manage Training** which will enable you to train the intent by adding Utterances, Patterns, and Rules. <a href="https://docsinternal-kore.github.io/docs/xo/automation/testing/testing-your-bot-with-nlp/" target="_blank">Learn more</a>.

### Bot Message

The first thing you want to start with, in the conversation, is a message from the bot to the user. This would serve as a guide to the user on the conversation flow.

Bot Messages can serve one of the following purposes:

* **Ask a Question** with the intention of gathering information from the user. This gets converted to an <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-entity-node/" target="_blank">Entity Node</a> in the dialog task.

    * You can further specify the type of user input expected like string, number, date, etc. It gets translated to an entity type in the dialog task
    * You can format the message using simple formatting options or by selecting a template for presenting the bot message.
* **Ask Confirmation** with the intention to decide the path of the conversation. This gets converted to a <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-confirmation-nodes/" target="_blank">Confirmation Node</a> in the dialog task.
* **Inform the User** like a help message, welcome message, or as a response to the user query. These get converted to a <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-message-nodes/" target="_blank">Message Node</a> in the dialog task.

For each of the above selections, you can either use an existing node by selecting from the list or create a new node.

<img src="../images/set-node.png" alt="set node" title="set node" style="border: 1px solid gray; zoom:75%;">

### User Response

Every bot message is ideally followed by a user response. User Response can be used to define the conversation flow by predicting the user response. For example, the bot might have asked the user to confirm an input, then based on the response there would be two paths – one for affirmation and one for negation.

!!!note

    If not specified, the platform adds a Sample User Response placeholder to maintain the sanctity of the conversational flow.

<img src="../images/set-user-response.png" alt="set user response" title="set user response" style="border: 1px solid gray; zoom:75%;">

### Other Nodes

Apart from  Bot and User Messages, you can do the following:

* Add placeholders for **Bot Actions** like service calls, scripts, logic, webhook and process to define the flow, and more. The actual functionality needs to be added from the dialog builder. You can leave comments for the developer elaborating the purpose of such a bot action node. For example, for the _Book Flight_ task, you want to connect to your backend servers for the actual booking process.
* Trigger **Dialog Tasks** for subtasks or related/follow-up tasks. For example, after booking a flight you might want to trigger the _Web Checkin_ dialog.
* **Agent Transfer** nodes (only at the end of the conversation). For example, for a _Money Transfer_ task, you might want to authenticate the user credentials via a live agent.
* Add **Digital Forms** for capturing series of user inputs. For example, for a _Create Account_ task, you might want to present a form to capture the user details like name, address, phone number, etc.

    <img src="../images/other-nodes-digital-form.png" alt="other nodes" title="other nodes" style="border: 1px solid gray; zoom:75%;">

## Configurations

While building the conversation, the nodes are generated with default settings. You can customize these configurations from the conversation builder itself or do it at a later time from the dialog task. 
In the following section, we see the various configurations available from the conversation builder for each node added.

### Entity Node

The entity node is created whenever **Bot** -> **Ask Question** is selected.

For each question you can do the following:

* Define **Entity Type** – select from the drop-down list. This list includes the <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/entity-types/" target="_blank">entity types</a> supported by the XO Platform.
* Apply **Formatting Options** like bold, italics, etc.
* Use **Templates** like buttons, carousel, etc to present the query.
<img src="../images/define-entity-type-formatting.png" alt="define entity type formatting" title="define entity type formatting" style="border: 1px solid gray; zoom:75%;">

Once added you can **configure properties**:

* Display name
* Node name
* Type
* Is Multi-Item
* User Prompts 
* Error Prompts

<a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-entity-node/#component-properties" target="_blank">Learn more</a> about Entity Node Component Properties.

### Confirmation Node

The confirmation node is created whenever **Bot** -> **Ask Confirmation** is selected, along with a _Yes, No,_ and _two other_ user response paths. You can delete or add more options.

For each confirmation you can:

* Apply **Formatting Options** like bold, italics, etc.
* Use **Templates** like buttons, carousel, etc to present the confirmation options.
<img src="../images/confirmation-node-formatting.png" alt="confirmation node formatting" title="confirmation node formatting" style="border: 1px solid gray; zoom:75%;">

* You can set **configuration properties** like the following:

    * Display name
    * Node name
    * User prompts
    * Display options
    * Synonyms for yes/no. <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/dialogs/node-types/working-with-the-confirmation-nodes/#component-properties" target="_blank">Learn more</a>.
* Select the concerned user response options to continue with the appropriate path.
<img src="../images/select-user-response-options.png" alt="user response options" title="user response options" style="border: 1px solid gray; zoom:75%;">

## Advanced Features

Apart from the linear flow, you can add exceptional flows to the conversation. For example, while in the _Book Flight_ task user might request the _Weather Report_ at the destination city, or while in the _Check Balance_ task, the user might have entered the wrong account number three times in a row. These exceptional cases can be taken into consideration as a part of the conversation builder.

For each user response you can specify:

* **Alternative User Response** can trigger a different flow. For example, at the prompt for _City_ entity for the _Weather Report_ task, the user says “_Not now”_ then the conversation should end.
* Bot response when **User Exceeds Retries** limit.
* Bot behavior with an interruption or a sub-intent is indicated with **Ask Another Intent**. For example, within the _Book Flight_ task, the user asks for the _Weather Report_ at the destination city using the specific intent.

    <img src="../images/ask-another-intent.png" alt="ask another intent" title="ask another intent" style="border: 1px solid gray; zoom:75%;">

### Alternative User Response

This option lets you define the bot behavior when a user responds in a specific but unrelated manner.

<img src="../images/alternative-user-response.png" alt="alternative user response" title="alternative user response" style="border: 1px solid gray; zoom:75%;">

### Exceeds Retries

This option lets you define the bot behavior when a user exceeds the set number of retries.

* A standard response is set by default.
<img src="../images/exceed-retries.png" alt="exceed retries" title="exceed retries" style="border: 1px solid gray; zoom:75%;">

* Use **Configure Properties** to define the settings like number of **Allowed Retries** and the **Behavior on exceeding retries** – _end of dialog_ or _transition_ to a node.
<img src="../images/set-retry-behaviour.png" alt="set retry behavior" title="set retry behavior" style="border: 1px solid gray; zoom:75%;">

### Ask Another Intent

This option lets you define the bot behavior when a user utterance deviates from the task at hand.

* Enter the user response that is likely to ask for another intent.
* You can choose the intent from the available list or create a new one.
* You can set the transition to the new intent:
    * As Interruption to allow the user can switch to another task, you can configure additional utterances, refer <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/conversation-management/manage-interruptions/" target="_blank">here</a> for more on interruption handling, or
    * As Sub-intent to allow the user to seamlessly branch into related intents, view the behavior. <a href="https://docsinternal-kore.github.io/docs/xo/automation/intelligence/sub-intents-and-follow-up-intents/" target="_blank">Learn more</a>.

    <img src="../images/set-intent.png" alt="set intent" title="set intent" style="border: 1px solid gray; zoom:75%;">

