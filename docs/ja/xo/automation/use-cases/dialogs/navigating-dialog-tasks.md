# Navigating Dialog Tasks


## Prerequisites

[How to Access the Kore.ai XO Platform?](../../../../getting-started/accessing-the-platform/){:target="_blank"}

## Introduction

This article takes you through the major features you can access via the Dialog Builder.

The Dialog Builder is a key component of the Kore.ai XO Platform, and you can use it to develop full conversations between your VA and your users – from design to development, training, and testing.

The Dialog Builder Provides Conversation, Logic, and NLP-based tools and multiple opportunities to develop your conversational VA. You can Design, Build, and Train from within a familiar interface, which improves development efficiency and enhances results.


## Benefits

The purpose of the Dialog Builder is to combine human interaction and business logic, enabling your organization to collaboratively implement standards, processes, and practices into valuable Virtual Assistants.

Here are a few other ways in which the Dialog Builder can benefit your organization:

* Simplifies and streamlines VA development by providing access to tools and connecting to a wide variety of services.
* Facilitates the application of business processes to Conversational VA Development.
* Encourages innovation through clear, collaborative processes to Design, Build and Train AI-powered Conversational Virtual Assistants.


## Explore Dialog Tasks

You can access Dialog Tasks from **Automation AI > Virtual Assistant > USE CASES > Dialogs**.

<img src="../images/navigate-dialog.png" alt="Navigate to Dialogs" title="Navigate to Dialogs" style="border:1px solid gray; zoom:60%;">


## The Dialog Tasks List

The first page is a list of existing Dialog Tasks. Now, let us review the features you can access on this page.

* **See basic information about each dialog task** at a glance. This includes the task name, description, last update date, and status.

    <img src="../images/navigate-dialog-landing.png" alt="Dialog task landing page" title="Dialog task landing page" style="border:1px solid gray; zoom:60%;">
    
    !!! Note
    
        If a Dialog Task has been created using the legacy builder, then you will have the option to upgrade to the new, Conversation-Driven builder. In your list, such tasks come with an upgrade icon (an upward arrow inside a gear symbol).

* **Dialog Task Options** – When hovering over a task, you will see options to **Edit**, **Clone** or **Delete** the selected task. There is also a menu with **More Options**, where you can View the task, configure Dialog Settings, Manage Interruptions, or Amend Behavior.

    <img src="../images/navigate-dialog-img2-dialog-task-options.png" alt="Dialog task options" title="Dialog task options" style="border:1px solid gray; zoom:60%;">

* **Search Dialog Tasks** – If you are looking for a specific task, you can type its name here.
* **Manage Components**—Use this button to reach the Dialog Components section, where you can manage entities, webhooks, messages, agent transfers, etc., that are in use within all Dialog Tasks within your VA.
* **Create a new Dialog Task** – Use this button to create a new Dialog Task.
* **Test**—This is where you can easily test your VA by simulating an interaction between a user and the VA.


## Dialog Task Options

### Edit

Clicking the **Edit** (<img src="../images/navigate-dialog-builder-edit.png">) corresponding to a dialog task opens the [Dialog Builder](#dialog-builder---conversation-design-and-logic-building) canvas, where you can design the dialog task based on the conversation logic and business requirements. You can add and configure various components and features to build the end-to-end conversation flow.

### Clone

In some scenarios, you may need to create two similar dialog tasks with minor differences. To achieve this, clone dialog tasks using the corresponding **Clone** (<img src="../images/navigate-dialog-builder-clone.png">) option on the Dialog Tasks list.

To clone a dialog task, follow the below steps:

* **Open the App** in which you want to clone the dialog task.
* Select the **Automation AI > Virtual Assitant** option from the left menu.

    <img src="../images/automationai-va-navigation.gif" alt="Navigate to Virtual Assistant" title="Navigate to Virtual Assistant" style="border:1px solid gray; zoom:60%;">
    
* From the left menu, click **USE CASES > Dialogs**.
* On the Dialog Tasks page, hover over the dialog you want to clone and click the **Clone** icon.
* On the **Clone a Dialog** window, enter a name in the **Intent Name** field.
* Optionally, you can add a **Description**.
* You can choose whether the cloned dialog will be available to the end customer **(Customer Use Case)** and/or in Agent Assist **(AgentAssist Use Case)**.
* Under **Intent Settings**, set options for the task to be independent, a **Sub-intent dialog** or **Hide it from Help.**
* Under **Analytics - Containment type**, you can choose between **Abandonment as Self Service** and **Abandonment as Drop Off**.
* Also, optionally, you can adjust **Conversation Context**, set **Intent Preconditions**, or define **Context Output**.
* Click **Proceed**.  
  
    <img src="../images/clone-dialog-options.png" alt="Clone Dialog - Options" title="Clone Dialog - Options" style="border:1px solid gray; zoom:60%;">


#### Cloned Task Properties

The following are the properties of a cloned dialog task:

* It contains the same components, instances, NL, IVR, and connection properties as the original dialog task.
* The Dialog Settings, Interruption Settings, and Amend Behavior are also copied from the original dialog.
* If multiple languages are enabled in the original dialog, then the details for all languages are copied.

The below-listed intent-level NLP training data is not copied:

* Machine Learning Utterances.
* Intent Patterns & Rules.
* Intent Synonyms.


### Delete

If you no longer require a specific Dialog Task, you can remove it.

!!! Warning

    Deleted Tasks cannot be restored.


To delete a Dialog Task:

1. Hover over the task in the Dialog Tasks List.
2. Click the **Delete** (<img src="../images/navigate-dialog-builder-delete.png">) icon. 
3. If you are sure that you want to delete this task, then please click **Delete** in the confirmation window. Otherwise, please click **Cancel**.  
  
    <img src="../images/delete-dialog-confirmation.png" alt="Delete Dialog - Confirmation" title="Delete Dialog - Confirmation" style="border:1px solid gray; zoom:60%;">


### More Options

You can access more Dialog Task options like **Display, Dialog Settings, Manage Interruptions,** and **Manage Ammend Behavior** by clicking the 3-dot **More Options** (<img src="../images/navigate-dialog-builder-more-options.png">) icon.

<img src="../images/navigate-dialog-builder-more-options-menu.png" alt="More Options" title="More Options" style="border:1px solid gray; zoom:70%;">

Please see the articles linked below for information on:

* [Dialog Settings](../using-the-dialog-builder-tool/#dialog-settings){:target="_blank"},
* [Manage Interruptions](../../../intelligence/conversation-management/manage-interruptions){:target="_blank"},
* [Manage Ammend Behavior.](../../../natural-language/nlu-configurations/amend-entities){:target="_blank"}


## Dialog Builder - Conversation Design and Logic Building

The Dialog Builder is where you can design, build, train, and test the conversations that your VA can have with your users.

You can access them by creating a new Dialog Task or opening an existing one

!!! Note

    This guide applies to the new Dialog Builder. If your tasks are using the previous version, please consider upgrading.

You can build Dialogs by adding and configuring [nodes](../node-types/nodes-transitions/){:target="_blank"} in the required sequence as per business logic in the Dialog Builder.

The Dialog Builder interface consists of:

1. [Tool Set](../using-the-dialog-builder-tool/#the-tool-set)
2. [Index Panel](../using-the-dialog-builder-tool/#the-index-panel)
3. [Node Panel](../using-the-dialog-builder-tool/#the-node-panel)
4. [Canvas](../using-the-dialog-builder-tool/#the-canvas)

 <img src="../images/navigate-dialog-builder.png" alt="Dialog builder" title="Dialog builder" style="border:1px solid gray;zoom:70%;">


**Related Links**

* [Using the Dialog Builder](../using-the-dialog-builder-tool){:target="_blank"}
* [Help and Learning Resources](https://developer.kore.ai/docs/bots/chatbot-overview/help/){:target="_blank"}