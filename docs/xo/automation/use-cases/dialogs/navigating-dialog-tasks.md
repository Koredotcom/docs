# Navigating Dialog Tasks


## Prerequisites

[How to Access the Kore.ai XO Platform?](../../../../getting-started/accessing-the-platform/){:target="_blank"}

!!! Note

    "Virtual Assistant", "VA" and "Bot" refer to the same concept and are used interchangeably.


## Introduction

This article takes you through the major features you can access via the Dialog Builder.

The Dialog Builder is a key component of the Kore.ai XO Platform and you can use it to develop full conversations between your VA and your users – from design, to development, training and testing.

Providing Conversation, Logic and NLP based tools, the Dialog Builder gives you multiple opportunities to develop your conversational VA. You can Design, Build and Train from within a familiar interface, which improves development efficiency and enhances results.


## Benefits

The purpose of the Dialog Builder is to combine human interaction and business logic, to enable your organization to collaboratively implement standards, processes and practices into valuable Virtual Assistants.

Here are a few other ways in which the Dialog Builder can benefit your organization:

* Simplifies and streamlines VA development by providing access to tools and connecting to a wide variety of services.
* Facilitates the application of business processes to Conversational VA Development.
* Encourages innovation through clear, collaborative processes to Design, Build and Train AI-powered, Conversational Virtual Assistants.


## Explore Dialog Tasks 

You can access Dialog Tasks by going to: **Automation > USE CASES > Dialogs**.

<img src="../images/navigate-dialog.png" alt="Navigate to Dialogs" title="Navigate to Dialogs" style="border:1px solid gray; zoom:60%;">


## The Dialog Tasks List

The first page you see here is the list of existing Dialog Tasks. Let us now go through the features that you can access from this page.

* **See basic information about each dialog task**, at-a-glance. This includes the task name, description, last update date, and status.  
  
    !!! Note
    
        If a Dialog Task has been created using our legacy builder, then you will have the option to upgrade to the new, Conversation-Driven builder. In your list, such tasks come with an upgrade icon (an upward arrow inside a gear symbol).

* **Dialog Task Options** – When hovering over a task, you will see options to Edit, Clone or Delete the selected task. There is also a menu with more options, where you can View the task, configure Dialog Settings, Manage Interruptions or Amend Behavior.  
    
    <img src="../images/navigate-dialog-img2-dialog-task-options.png" alt="Dialog task options" title="Dialog task options" style="border:1px solid gray; zoom:60%;">

* **Search Dialog Tasks** – If you are looking for a specific task, you can type its name here.
* **Manage Components** – Use this button to reach the Dialog Components section, where you can manage entities, webhooks, messages, agent transfers, etc; that are in use within all Dialog Tasks within your VA. 
* **Create a new Dialog Task** – Use this button to create a new Dialog Task.  
  
    !!! Note
    
        Starting with version 9.0 of the Kore.ai XO Platform, newly created tasks will use the new, Conversation-Driven Builder.

* **Quick Start Guide** – If you are just getting started using the Kore.ai XO Platform, we recommend that you take a look at this guide, which will show you the basics of working with the Dialog Builder.
* **Test** – This is where you can easily test your VA, by simulating an interaction between a user and your VA.


## Dialog Task Options


### Clone

There are scenarios where you may need to create two similar dialog tasks with minor differences. You can achieve this with the **Clone** option available for each task, available on the Dialog Tasks page.

To clone a dialog task, follow the below steps:

* **Open the VA** in which you want to clone the dialog task.
* Select the **Automation** option from the left menu.
* From the left menu, click **USE CASES > Dialogs**.
* On the Dialog Tasks page, hover over the dialog you want to clone and click the **Clone** icon.  
  
    <img src="../images/clone-dialog-icon.png" alt="Clone Dialog" title="Clone Dialog" style="border:1px solid gray; zoom=60%;">

* On the **Clone a Dialog** window, enter a name in the **Intent Name** field.
* Optionally, you can add a **Description**.
* You can choose whether the cloned dialog will be available to the end customer **(Customer Use Case)** and/or in Agent Assist **(AgentAssist Use Case)**. 
* Under **Intent Settings**,set options for the task to be independent, a **Sub-intent dialog** or **Hide it from Help.**
* Under **Analytics - Containment type**, you can choose between **Abandonment as Self Service** and **Abandonment as Drop Off**.
* Also optionally, you can adjust **Conversation Context**, set **Intent Preconditions** or define **Context Output**.
* Click **Proceed**.  
  
    <img src="../images/clone-dialog-options.png" alt="Clone Dialog - Options" title="Clone Dialog - Options" style="border:1px solid gray; zoom=60%;">


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
2. Click the **Delete** icon.  
  
    <img src="../images/delete-dialog-icon.png" alt="Delete Dialog" title="Delete Dialog" style="border:1px solid gray; zoom=60%;">

3. If you are sure that you want to delete this task, then please click **Delete** in the confirmation window. Otherwise, please click **Cancel**.  
  
    <img src="../images/delete-dialog-confirmation.png" alt="Delete Dialog - Confirmation" title="Delete Dialog - Confirmation" style="border:1px solid gray; zoom=60%;">


### More Options

Please see the articles linked below for information on:

* [Dialog Settings](../using-the-dialog-builder-tool/#dialog-settings){:target="_blank"},
* [Manage Interruptions](../../../intelligence/conversation-management/manage-interruptions){:target="_blank"},
* [Manage Ammend Behavior.](../../../natural-language/nlu-configurations/amend-entities){:target="_blank"}


## Conversation Design, Logic Building & Training

The Dialog Builder is where you can design, build, train and test the conversations that your VA can have with your users.

You can access them by creating a new Dialog Task or by opening an existing one.

!!! Note

    This guide is applicable for the new, Conversation-Driven Dialog Builder. If your tasks are using the previous version, please consider upgrading.

You can build Dialogs by adding and configuring [nodes](../node-types/nodes-transitions/){:target="_blank"} in the required sequence as per business logic in the Dialog Builder.


### Design the Conversation Flow


#### The Top Menu

<img src="../images/dialog-top-menu.png" alt="Top menu" title="Top menu" style="border:1px solid gray; zoom:60%;">


The Dialog Design process occurs in the Conversation Designer. This comes with its specific top menu, where you can access the following features:

* **Exit the Dialog Task Builder and go back to the Dialog Tasks List**.
* **Add Bookmarks, Text and Comments**
* **Find** nodes, variables, sequesnces etc
* **Switch between Dialog Tasks** – Use this dropdown if you need to work on a different task. You don’t have to go back to the list to do so.
* **Test** to chat with the assistant in real-time to test recognition, performance, and flow as if it were a live session.
* **View Warnings**
* **Manage Zoom percentage and other visual settings**
* **More options**, where you can access Dialog Settings, Manage Interruptions, Manage Ammend behavior and view comments.


#### Build Business Logic - The Dialog Builder

The Dialog Builder is where you can build business logic into your conversations. Here you have access to the tools you need in order to integrate your conversation scenarios with your business logic. Here is an overview of the features it provides.

<img src="../images/navigate-dialog-builder-canvas.png" alt="Dialog builder" title="Dialog builder" style="border:1px solid gray; zoom:60%;">

* **The Canvas** – This represents the entire surface on which the components of your conversation are placed.
* **The Root Intent** – This is the first component of any conversation and will be displayed on your canvas by default, whenever you create a new Dialog Task.
* **Nodes** – These are the different points at which components of your conversation intersect. For details, please see [Node Types](../node-types/nodes-transitions/){:target="_blank"}.
* **Sequences** - These are placeholders for creating groups of nodes. Each sequence has one or more nodes added in logical sequences.
* **Assets Panel** – Here is where you can choose which Node Type to add and simply drag and drop it to the canvas, at the desired location. You can also add nodes using the ⨁ buttons within your flow.
* **Nodes panel** -  This tab has a list of sequences created in the current dialog.
* **Bookmarks panel** - This tab has the list of bookmarks added to sequences and nodes on the canvas.
* **Component Configuration Panel**– This panel is available when a component is selected, and can be minimized (as shown in the screenshot above).
* **Display Options Panel** – This panel is only available when no component is selected and allows you to configure Display and Zoom Options, to Auto-Arrange components or to turn the map on or off. The map allows you to see the general area where you are currently located within your flow.

Remember that the more you train your app and the more rigor you apply to the training data, the more effective it becomes.


#### Related Links

* [Using the Dialog Builder](../using-the-dialog-builder-tool){:target="_blank"}
* [Dialog Task – Legacy Builder](../dialog-task-legacy-builder){:target="_blank"}
* [Help and Learning Resources](https://developer.kore.ai/docs/bots/chatbot-overview/help/){:target="_blank"}