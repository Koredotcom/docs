# Using the Dialog Builder

The Dialog Builder is where you can create your Dialog Tasks, from end-to-end. This is an in-depth article on how to use this tool.


## Create a Dialog Task

To create a dialog task, you must have already created an assistant to add a dialog task to. See [Create Your First Assistant](../../../building-a-virtual-assistant){:target="_blank"} for more information.

To add a dialog task, follow the steps below:



1. Open the assistant for which you want to create the dialog task.
2. Click the **Automation** icon on the left menu.
3. The Automation menu opens, and the **Dialogs** page is open by default.
4. On the Dialogs page, click the **Create Dialog** button.

    <img src="../images/using-dialog-builder-img1-create-dialog.png" alt="Dialogs" title="Dialogs" style="border:1px solid gray;zoom:60%;">

5. The **Create Dialog** window appears; from here you can choose to **Create a dialog from scratch**, **Use Generative AI** to create a dialog, or **Choose a pre built dialog template** with integrations to create a dialog.
6. Click on **Start From Scratch.**

    <img src="../images/using-dialog-builder-img2-create-dialog-scratch.png" alt="Start dialog building From Scratch" title="Start dialog building From Scratch" style="border:1px solid gray;zoom:60%;">

7. Provide an **Intent Name** (mandatory) and **Description** (Optional).
8. You can choose whether the new dialog will be available to the end customer **(Customer Use Case)** and/or in Agent Assist **(AgentAssist Use Case)**
9. Under **Intent Settings**,set options for the task to be independent, a **Sub-intent dialog** or **Hide it from Help.**
10. Under **Analytics - Containment type**, you can choose between **Abandonment as Self Service** and **Abandonment as Drop Off**.
11. Also optionally, you can adjust **Conversation Context**, set **Intent Preconditions** or define **Context Output**.
12. Click **Proceed**.

    <img src="../images/using-dialog-builder-img3-create-dialog-scratch-details.png" alt="Start dialog building From Scratch - Details" title="Start dialog building From Scratch - Details" style="border:1px solid gray;zoom:60%;">

This will open the Dialog Builder with the canvas containing the root intent displaying the Dialog Name and Description. Now, you are ready to add nodes and establish transitions between these nodes for your workflow.

<img src="../images/using-dialog-builder-img4-scratch-dialog-created.png" alt="Dialog Builder canvas with Root Intent" title="Dialog Builder canvas with Root Intent" style="border:1px solid gray;zoom:60%;">

[Click here to know about Nodes & Connections](../node-types/nodes-transitions/){:target="_blank"}.

## Auto-Generated Dialog Tasks 


### Introduction

This feature auto-generates dialog flows using the app’s purpose and intent description provided during task creation. The Platform uses **Generative AI** or **Pre Built Templates** to create suitable Dialog Tasks for Conversation Design, Logic Building, and Training by including the required nodes in the flow. This helps simplify and shorten the development process and suggests possible pathways that developers might not think otherwise.

The nodes and the flow for the Business Logic are automatically built for your conversation, and you only need to configure the flow transition.

The Platform auto-defines the _Entities, Prompts, Error Prompts, Bot Action nodes, Service Tasks, Request Definition_, and other parameters.


### Auto-Generate Dialog Tasks using Gen AI

You will see a **Conversation Preview** window right after creating your Dialog Task. In this window, you can see mock conversations and convert them into dialog flows for every intent. 

1. Click the **Gen Ai** option.

    <img src="../images/using-dialog-builder-img5-create-dialog-genai.png" alt="Select Gen Ai" title="Select Gen Ai" style="border:1px solid gray;zoom:60%;">

2. Provide **Intent Name** (mandatory) and a meaningful **Description** that states the purpose of the Dialog Task, and click **Generate**.

    <img src="../images/using-dialog-builder-img6-create-dialog-genai-generate.png" alt="Gen Ai - Generate" title="Gen Ai - Generate" style="border:1px solid gray;zoom:60%;">

3. You can see a Preview of the AI generated dialog flow.

    <img src="../images/using-dialog-builder-img7-create-dialog-genai-preview.png" alt="Preview of AI generated dialog" title="Preview of AI generated dialog" style="border:1px solid gray;zoom:60%;">

4. You can regenerate the dialog by changing the description and clicking **Regenerate**.

    !!! Note 
 
	    Providing a relevant description is reccommended. Dialog will be generated, but with **only the error prompt**, if no description is provided. 
 
    <img src="../images/using-dialog-builder-img8-create-dialog-genai-regenerate.png" alt="Regenerate AI generated dialog" title="Regenerate AI generated dialog" style="border:1px solid gray;zoom:60%;"> 

5. Click **Proceed** when you are satisfied with the preview.  
 
    <img src="../images/using-dialog-builder-img9-create-dialog-genai-proceed.png" alt="Gen Ai Dialog Preview - Proceed" title="Gen Ai Dialog Preview - Proceed" style="border:1px solid gray;zoom:60%;">  
 
The nodes and the flow for the Business Logic are automatically built for your conversation. The Platform auto-defines the _Entities, Prompts, Error Prompts, Bot Action nodes, Service Tasks, Request Definition_, and other parameters. You can customize the flow per your requirements by editing the generated nodes and adding your own. You can configure the generated Dialog Tasks just like any other dialog task. 
 
<img src="../images/using-dialog-builder-img10-create-dialog-genai-dialog-created.png" alt="Gen Ai Dialog created" title="Gen Ai Dialog created" style="border:1px solid gray;zoom:60%;">

### Auto-Generate Dialog Tasks using Pre Built Templates

This option lets you choose a suitable dialog template out of the list of ready-made templates targeting major industry verticals covering generic use cases related to the industry, as well as having the pre-established integration. User can update the description and generate usecases based on the purpose. Accelerates development by providing a starting point for common scenarios, ensuring consistency and efficiency.

You can either scroll through the entire list, or find the required template using the search box or Integrations dropdown. Out of the search results, click the template once you find one that suits your requirement. 
 
<img src="../images/using-dialog-builder-img11-create-dialog-template-search.png" alt="Template search" title="Template search" style="border:1px solid gray;zoom:60%;">

1. The **Create Dialog** window opens where you need to select the integration for getting a preview of the dialog. Click **Proceed** for the next step. 
 
    <img src="../images/using-dialog-builder-img12-create-dialog-template-preview.png" alt="Dialog using template - preview" title="Dialog using template - preview" style="border:1px solid gray;zoom:60%;"> 

2. You can edit the **Intent name, description, and customize the options** for the dialog, similar to **Create Dialog from Scratch**. After making the required changes, click **Proceed**.

    <img src="../images/using-dialog-builder-img13-create-dialog-template-edit-details.png" alt="Dialog using template - Edit details" title="Dialog using template - Edit details" style="border:1px solid gray;zoom:60%;"> 

3. The Dialog Builder now opens with the root intent component, and the nodes you saw in the preview. You can customize the flow per your requirements by editing the generated nodes and adding your own on the Dialog Builder canvas, as well as establish transition between the nodes.In other words, you can configure the generated Dialog Tasks just like any other dialog task. 
 
    <img src="../images/using-dialog-builder-img14-create-dialog-canvas.png" alt="Dialog using template - Dialog canvas" title="Dialog using template - Dialog Canvas" style="border:1px solid gray;zoom:60%;">

[Click here to know about Nodes & Connections](../node-types/nodes-transitions/){:target="_blank"}


## Dialog Task Builder Overview

Before moving on, here is an overview of the Dialog Task Builder. For details on navigating dialog tasks, please see [Navigating the Dialog Task Builder](../navigating-dialog-tasks/){:target="_blank"}.

<img src="../images/navigate-dialog-builder.png" alt="Dialog builder" title="Dialog builder" style="border:1px solid gray;zoom:70%;">

The Dialog Builder interface consists of:

 * [Tool Set](#the-tool-set)
 * [Index Panel](#the-index-panel)
 * [Canvas](#the-canvas)
 * [Node Panel](#the-node-panel)


### The Tool Set

<img src="../images/dialog-top-menu.png" alt="Tool Set" title="Tool Set" style="border:1px solid gray;zoom:60%;">

The Dialog Design process occurs in the Conversation Designer. This comes with its specific top menu, where you can access the following features:

* **Exit the Dialog Task Builder** and go back to the Dialog Tasks List - Click to exit the dialog builder and go back to the list of dialog tasks within the current app (Automation > Use Cases > Dialogs)
* Add **Bookmarks** -  You can bookmark frequently visited or crucial content in the canvas with relevant information. The added bookmarks can be seen in the **Bookmarks** tab of the **Index Panel**. They help you to navigate to the bookmarked content without having to search or browse extensively.
    <img src="../images/using-dialog-builder-add-bookmark.gif" alt="Add Bookmark" title="Add Bookmark" style="border:1px solid gray;zoom:70%;">

* Add **Text** - You can add text on any place on the canvas to keep a note of the logic being developed in a sequence or group of sequences, or other relevant nodes about the logic building for future reference.
    <img src="../images/using-dialog-builder-add-text.gif" alt="Add Text" title="Add Text" style="border:1px solid gray;zoom:70%;">

* Add **Comment** - In a comment you can tag other users to enhance communication through feedback, suggestions, and discussions on specific elements of the design, or if you need another user to pitch in and help you in the conversation design with their developmental or functional expertise.
    <img src="../images/using-dialog-builder-add-comment.gif" alt="Add Comment" title="Add Comment" style="border:1px solid gray;zoom:70%;">

* **Find** - You can find nodes, variables, sequences etc. Clicking this icon would open a window where you can perform a universal search, you will get a list of all the nodes, variables, sequences, API's etc grouped by type that contain the search string.

    <img src="../images/tool-set-search.gif" alt="Search" title="Search" style="border:1px solid gray;zoom:70%;">

* **Switch between Dialog Tasks** – The Builder comes with a dedicated task switcher, which you can use to easily change to working on a different task within your selected app. This option is located at the top of your canvas

    <img src="../images/using-dialog-builder-img23-task-switcher.png" alt="Task switcher" title="Task switcher" style="border:1px solid gray;zoom:60%;">

* **Test** -  You can chat with the app in real-time to test recognition, performance, and flow as if it were a live session.
* **View Warnings** - In the top navigation area, you will see a real-time set of errors and warnings, that might have occured as you define your dialog task, located on the top-right of the Dialog Builder. Click the information icon to display any errors or warnings as shown in the following illustration.

    <img src="../images/using-dialog-builder-img24-error-and-warnings.png" alt="Troubleshooting - Errors and Warnings" title="Troubleshooting - Errors and Warnings" style="border:1px solid gray;zoom:60%;">

* **Display Options** - You can use **Display Options** to better utilize screen real estate.

    <img src="../images/using-dialog-builder-img29-display-settings.png" alt="Display settings" title="Display serrings" style="border:1px solid gray;zoom:60%;">

    Display Options are used to:

    * **Fit to Screen** – Resizes Dialog Builder components and connections to fit within the display screen resolution for a single, non-scrolling page.
    * **Zoom Level** – is used to set the zoom level as per need.
    * **Zoom to Last Edited** – Takes you to the zoom level you have used to edit the dialog
    * **Hide/Show Mini Map** – To show or hide the mini map of the dialog.
    
* **More options**, where you can access Dialog Settings, Manage Interruptions, Manage Ammend behavior and View Comments. [Read more...](#the-more-options-menu)
* **Users in the dialog** - You can see bubbles containing names of all the users of the current dialog, like Bot Owner, Bot Developer, Conversation Designer etc.

### The Index Panel

<img src="../images/using-dialog-builder-index-panel.png" alt="Index Panel" title="Index Panel" style="border:1px solid gray;zoom:60%;">

The Index panel consists of a robust set of features within its dialog builder to enhance collaboration and organization. Here's a breakdown of the mentioned features:

* [Bookmarks](#bookmark) tab
* [Assets](#assets) tab
* [Nodes](#nodes) tab

You can add, edit, move or delete text, comments or bookmarks as per need. However, please note that deletion cannot be undone

#### Bookmark

Bookmarks offer the ability to organize and reference important information. You can bookmark frequently visited or crucial content in the canvas with relevant information. They help you to navigate to the bookmarked content without having to search or browse extensively. 

<img src="../images/using-dialog-builder-img22-bookmark-tab.png" alt="Bookmark tab" title="Bookmark tab" style="border:1px solid gray;zoom:60%;">

Here's how the ability to add bookmarks can be advantageous:

1. Navigation Efficiency:
    * Bookmarks provide a quick and efficient way to navigate through a complex dialog structure.
    * Users can jump directly to specific dialogs of interest without the need for extensive scrolling or searching.

2. Time Savings:
    * The feature saves time by eliminating the need for users to manually search for specific dialogs within a complex structure.
    * Users can efficiently locate and revisit dialogs, reducing the overall time spent on navigation.
    * Users have greater control over their navigation, contributing to a more intuitive and efficient design process.

In summary, bookmarks offer a practical solution to the challenges associated with navigating complex dialog designs. They empower users to personalize their experience and focus on key components within the context of intricate dialog structures.

The inclusion of a dedicated Bookmark tab in the left-hand side panel further enhances the usability of the bookmark feature. The Bookmark tab on the left-hand side panel not only provides a structured and organized way to manage bookmarks but also contributes to a user-friendly interface, making it easier to navigate and interact with the bookmarked dialogs.

You can perform a textual search for bookmarks as well, that would show you the bookmarks that match the search text.

#### Assets

The **Assets** tab contains all the node types as expandable lists, upon expanding them you can see an option to add a new node of that type to the canvas, as well as all the nodes of that type that are created for the current app, irrespective of whether they are added to any dialog.

<img src="../images/using-dialog-builder-assets-tab.gif" alt="Assets tab" title="Assets tab" style="border:1px solid gray;zoom:60%;">

All the created nodes you see in this tab are **reusable**. You can drag and drop them or add them using the **"+" (Connector)** before, after or between existing [sequences](#sequences).

You can perform a textual search for nodes as well, that would show you the nodes in the current app that match the search text, along with the node type.

#### Nodes

On this tab, you can see a list of **all the sequences present in the Current Dialog**. Upon clicking the sequence name, you see all the nodes present in that sequence. Hence, please note that here, you see only the nodes that are added to the canvas for the current dialog.

<img src="../images/using-dialog-builder-nodes-tab.gif" alt="Nodes tab" title="Nodes tab" style="border:1px solid gray;zoom:60%;">

You can perform a textual search for nodes and sequences as well, that would show you the nodes/sequences in the current dialog that match the search text.

### The Canvas

The Canvas is where you can integrate your conversation scenarios with your business logic.

<img src="../images/navigate-dialog-builder-canvas.png" alt="Dialog builder - Canvas" title="Dialog builder - Canvas" style="border:1px solid gray;zoom:60%;">

The canvas would typically contain:

#### The Root Intent

This is the first component of any conversation and will be automatically placed on your canvas by default, whenever you create a new Dialog Task.

You would note that the display name and description of the root intent are same as the Dialog's. Please note that the Root Intent will be an independent node, and will not be a part of any sequence.

Like any other dialog, you can configure the component, NLP and Connection properties of Root Intent. While configuring the connection properties, you should know that:

* Only one, **default** connection is available for the Root Intent.
* You can connect a Root Intent to any node present in the canvas, but not a sequence. The node to connect can be any node, and not necessarily the first node of a sequence.
* Creating If-Else connection paths is not possible for the Root Intent.

#### Sequences

These are placeholders for creating groups of nodes. Each sequence has one or more nodes added in logical sequences.

<img src="../images/using-dialog-builder-sequence.png" alt="Sequence" title="Sequence" style="border:1px solid gray;zoom:60%;">

The task being designed in a dialog can be broken down into several sub-tasks. For example, if you are developing a dialog to send money from one account to another, you may break the tasks into sub-tasks like gathering account owner's details, gathering recipient account's details, transfer the money, success scenario, failure scenario etc. You can have a sequence each for each sub-task.

Each sequence contains one or more nodes placed in a logical sequence, and a **Transition** section in the end, through which you can either continue the flow of dialog to the next sequence, or split the flow into two or more paths based on [conditions](#add-if-else-node-connections).

You can set connections between two sequences; Drag the connector <img src="../images/using-dialog-builder-img17-nodes-connector.png">
 from the source sequence to the required destination sequence. Please note that by default, the connection will be from the **bottommost node of the source sequence** to the **topmost node on the destination sequence**.

Connections can be set or changed either on the canvas by **dragging the transition arrow**, or through **Connections** settings on the **Component Properties panel**. 

You can also add  a sequence **in-between two existing sequences**. Below are the steps to do that:

* Add the new node directly to the canvas, a new sequence will get created containing the newly added node.
* Set the connection between the source sequence to the new sequence.
* Set the connection between the new sequence to the Destination sequence.

<img src="../images/using-dialog-builder-sequence-connection.gif" alt="Sequence connection" title="Sequence connection" style="border:1px solid gray;zoom:60%;">

You can delete a sequence by right clicking on it and selecting **Delete** from the menu.

!!! Warning

	This action cannot be undone.

<img src="../images/using-dialog-builder-img15-node-delete.png" alt="Delete sequence" title="Delete sequence" style="border:1px solid gray;zoom:60%;">


#### Nodes

Nodes are the different points at which components of your conversation intersect. Each kind of node has a set of discinct features and can be used to funfill a specific purpose, like displaying a text message, provide user a digital form to provide data, gather a specific piece of data from the user, accessing data file etc.

For details, please see [Node Types](../node-types/nodes-transitions/){:target="_blank"}.

You can add nodes inside or outside sequences. Also, you can drag and drop nodes, or add them using the connector next to a sequence. Adding a node using connector will automatically create a new sequence containing the new node and Transition. [Read more.](#add-node-to-dialog)

You can delete a node by right clicking on it and selecting **Delete** from the menu.

!!! Warning

	This action cannot be undone. However, the deleted node will still be available in the **Assets** tab of the **Index panel**.


#### Text, Comments and Bookmarks

UXO provides features like Text, Comments and Bookmarks to keep notes and establish collaboration between app users.

You can add **Text** in order to make notes, for example, you can place texts on strategic points on the canvas and write down the introduction od the dialog, list of sun-tasks, purpuse of each sub-task on them.

Using **Bookmarks** you can create navigation points in a dialog with complex structure, so that you can quickly navigate to the bookmarked points without having to manually search the entire design. You can mention the specific point of the dialog flow in the bookmarks as easy reference for other users.

<img src="../images/navigate-dialog-builder-text-bookmark.png" alt="Text and Bookmark" title="Text and Bookmark" style="border:1px solid gray;zoom:70%;">

**Comments** are effective to create collaborative environment. Often, in the course of development, at some point you may need help and inputs from other bot users, for example you need them to pitch in with their knowledge about the business logic or functional expertise, or need clarifications in order to proceed. In such situations you can place a comment wherein you can tag the respective user and mention your need. Note that unlike Text and Bookmarks, you can add your response to a comment.

<img src="../images/using-dialog-builder-comment-response.png" alt="Comment and Response" title="Comment and Response" style="border:1px solid gray;zoom:70%;">

#### Mini map

It is a miniature representation of the visual appearance of the dialog design.

### The Nodes Panel

The **Nodes panel** is a streamlined, user-friendly categorization provided at the bottom of the canvas. Click on a group to see the node types within it, and drag and drop the nodes too add them to the dialog. The nodes added from this panel will get added as reusable assets to the **Assets** tab of the **Index panel**.

<img src="../images/using-dialog-builder-node-panel.png" alt="Node panel" title="Node panel" style="border:1px solid gray;zoom:60%;">

The groups are:

* **Inform** - Contains the nodes that can be used to provide information to the user. Eg: Message node.
* **Ask** - Contains the nodes that can be used to get input from user. Eg: Confirmation, Entity.
* **Action** - Contains nodes can be used for any action that the app is expected to perform without interaction with the user. Eg: Script, Service, Process, Agent Transfer
* **GenAI** - Contains nodes that can be used to leverage the full potential of LLMs and Generative AI models to quickly build conversations that involve complex flows and also provide human-like experiences. Eg: GenAI Node, GenAI Prompt.


## Add node to dialog

There are two ways to add a node:

1. Drag and drop nodes from the panel onto the dialog builder, [see below](#use-drag-and-drop).
2. Using the options on the Dialog Builder Canvas using Connector, [see below](#use-the-dialog-canvas).

### Use Drag and Drop

You can add nodes within the dialog task, by dragging the node from the Index panel on the left, or the Node panel at the bottom, to the designated place in the dialog task, on the canvas. You can drop the node within an existing sequence, or outside the sequences; in this case a new sequence will get created automatically, containing the newly added node.


<img src="../images/using-dialog-builder-add-nodes-drag-drop.gif" alt="Adding nodes by drag and drop" title="Adding nodes by drag and drop" style="border:1px solid gray;zoom:60%;">

You can also add a node directly on the canvas, in which case a new sequence gets created. You can then drag and drop the node to an existing sequence, if that is how you wish to place it.


### Use the Dialog Canvas

Click the <img src="../images/using-dialog-builder-img17-nodes-connector.png"> button in the **Transition** node of the sequence after which you want to add another node. You will see a list of all the nodes that have been created in the current app along with the node type, and an option to create and add a new node, and can select any of these to add.

<img src="../images/using-dialog-builder-add-nodes-on-canvas.gif" alt="Adding nodes by connector" title="Adding nodes by connector" style="border:1px solid gray;zoom:60%;">

### Add If-Else Connections

You can add conditions to the sequence by adding **If-Else connection** in the **Transition** section of the sequence. This is where you can set the execution path based on the condition.

To do this, hover over the **Transitions** section and click **Add New.** [Learn more](../node-connections/nodes-conditions/){:target="_blank"}.

<img src="../images/using-dialog-builder-img16-nodes-transition.png" alt="Transitions - Add New" title="Transitions - Add New" style="border:1px solid gray;zoom:60%;">

You can also set connections through the **Connection Properties**.

<img src="../images/using-dialog-builder-connection-properties-if-else.png" alt="Transitions - Add New connection through Connection Properties" title="Transitions - Add New connection through Connection Properties" style="border:1px solid gray;zoom:60%;">


## Node Properties

Clicking on a node will open its Properties panel, which includes specific features, depending on the type of node you are working with. Please consult the documentation on [Node Types](../node-types/nodes-transitions/){:target="_blank"} to learn more about what is included with each. So, noting that some nodes may not come with some features, here is a general overview of what is available within this panel:

* **Component Properties** such as name, type, and component-specific properties.
* **Instance Properties** can be customized for the selected node for the current dialog.
* **Connection Properties** can be used for configuring transition conditions. (Only available for the bottommost node in a node)
* **NLP Properties** for intent and entity recognition.
* **Voice Call Properties** for IVR channels (available for certain nodes only after [IVR integration](../node-types/voice-call-properties/){:target="_blank"}).

<img src="../images/using-dialog-builder-img20-asset-properties.png" alt="Node properties" title="Node properties" style="border:1px solid gray;zoom:60%;">

## Node Groups (Planned for Phase 2)

You can group nodes to improve the user experience with follow-ups, digressions, and amending entity values. When including nodes into a group, they need to be located next to each other on the Dialog Builder Canvas.

To create a group of nodes, press and hold the **Ctrl / Command** key on your keyboard, and simultaneously use **your mouse cursor to select** the canvas area where you have located the nodes to be grouped. Once grouped, the nodes will be displayed together on a separate, light yellow background. Below is a quick demo of how to do this.

<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.gif). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image26.gif "image_tooltip")


You can rename the group using the **Edit** option next to the name.

<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image27.png "image_tooltip")


You can delete the group using the **Delete** icon on the right, that becomes visible once you hover over the group.

<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image28.png "image_tooltip")


If you are using the group to set up a Subintent, you can also configure it, using the **Configure**/ Gear icon, that becomes visible once you hover over the group. For additional information, please see [Grouping Nodes as Subintents](../node-connections/grouping-nodes/){:target="_blank"}.

<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image29.png "image_tooltip")


## The ‘More Options’ Menu

The More options menu, accessible at the top right of the Dialog Builder, is where you can find shortcuts to dialog settings, manage interruptions, amend behavior, and view all comments.

<img src="../images/using-dialog-builder-img25-more-options.png" alt="More options" title="More options" style="border:1px solid gray;zoom:60%;">


### Dialog Settings

The **Dialog Settings** panel allows you to modify the dialog task basic settings, and if desired, set the visibility of a dialog to create a hidden dialog task that is available for use, but not shown as a task. You can access Dialog Settings using the More Options Menu. 

<img src="../images/using-dialog-builder-img26-dialog-settings.png" alt="Dialog settings" title="Dialog settings" style="border:1px solid gray;zoom:60%;">

Add or modify the following settings for your dialog:

* **Name** – The name of your dialog task, usually the main user intent. For example, _Book Ticket._
* **Description** – An optional description of your dialog task displayed in the XO Platform.
* **More Options** – Specify the behavior of this dialog task to the end-user:
    * **Availability of Use Case** for end customer and/or in AgentAssist
    * **Intent Settings:**
        * **Sub intent only dialog** – The task is invoked only as a sub-task when another task is in progress. It is not presented as a task when the user requests help.
        * **Hide from help** – The task is not presented as a task when the user requests help. Users can invoke this task anytime while talking to the assistant. 
            
            !!! Note
            
                This option is selected automatically when the previous option is selected. You can manually deselect it.

    * **Analytics - Containment Type**(Any one option can be selected):
        * **Abundance as Self Service:** User can abandon the conversation while executing the dialog.
        * **Abundance as Drop Off:** Conversations can be abandoned by users or due to any failure during execution of the dialog.
    * **Follow-up Task** – The follow-up task array contains all the intents detected from user utterances from this dialog. You can either:
        * Handle the follow-up tasks as part of node connections (default setting), or
        * Let the user select the follow-up task.
    * **Task Execution Failure** – Define the assistant’s behavior when there is an error in task execution. It can be set as either:
        * Same as the Bot Level behavior
        * Specific to this task – initiate a task, run script, or show a message.


### Manage Interruptions

The **Manage Interruptions** options allow you to select if and how a user can switch to another task, as well as the exit strategies. It can be set up at the VA, task, and node levels to ensure the configurations are layered to suit your various business requirements. You can also add conditional exceptions between tasks with the ability to pass contextual data between them.

<img src="../images/using-dialog-builder-img27-manage-interruptions.png" alt="Manage Interruptions" title="Manage Interruptions" style="border:1px solid gray;zoom:60%;">

Click here to [learn more](../../../intelligence/conversation-management/manage-interruptions/#dialog-level-settings){:target="_blank"}.


### Manage Ammend Behavior

Using **Amend Entity,** you can allow the users to amend entity values and also control the post-amendment dialog behavior.

<img src="../images/using-dialog-builder-img28-manage-ammend-behavior.png" alt="Manage Ammend behavior" title="Manage Ammend behavior" style="border:1px solid gray;zoom:60%;">

Click here to [learn more.](../../../natural-language/nlu-configurations/amend-entities/#task-level){:target="_blank"}

### View All Comments

Through this option you can view all the [comments](#text-comments-and-bookmarks) added to the current dialog.

<img src="../images/using-dialog-builder-view-all-comments.gif" alt="View all comments" title="View all comments" style="border:1px solid gray;zoom:60%;">