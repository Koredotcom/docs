# Using the Dialog Builder

The Dialog Builder is where you can create your Dialog Tasks, from end-to-end. This is an in-depth article on how to use this tool.


## Create a Dialog Task

To create a dialog task, you must have already created an assistant to add a dialog task to. See [Create Your First Assistant](../../../building-a-virtual-assistant){:target="_blank"} for more information.

To add a dialog task, follow the steps below:



1. Open the assistant for which you want to create the dialog task.
2. Click the **Automation** icon on the left menu.
3. The Automation menu opens, and the **Dialogs** page is open by default.
4. On the Dialogs page, click the **Create Dialog** button.

    <img src="../images/using-dialog-builder-img1-create-dialog.png" alt="Dialogs" title="Dialogs" style="border:1px solid gray; zoon:60%;">

5. The **Create Dialog** window appears; from here you can choose to **Create a dialog from scratch**, **Use Generative AI** to create a dialog, or **Choose a pre built dialog template** with integrations to create a dialog.
6. Click on **Start From Scratch.**

    <img src="../images/using-dialog-builder-img2-create-dialog-scratch.png" alt="Start dialog building From Scratch" title="Start dialog building From Scratch" style="border:1px solid gray; zoon:60%;">

7. Provide an **Intent Name** (mandatory) and **Description** (Optional).
8. You can choose whether the new dialog will be available to the end customer **(Customer Use Case)** and/or in Agent Assist **(AgentAssist Use Case)**
9. Under **Intent Settings**,set options for the task to be independent, a **Sub-intent dialog** or **Hide it from Help.**
10. Under **Analytics - Containment type**, you can choose between **Abandonment as Self Service** and **Abandonment as Drop Off**.
11. Also optionally, you can adjust **Conversation Context**, set **Intent Preconditions** or define **Context Output**.
12. Click **Proceed**.

    <img src="../images/using-dialog-builder-img3-create-dialog-scratch-details.png" alt="Start dialog building From Scratch - Details" title="Start dialog building From Scratch - Details" style="border:1px solid gray; zoon:60%;">

This will open the Dialog Builder with the canvas containing the root intent displaying the Dialog Name and Description. Now, you are ready to add nodes and establish transitions between these nodes for your workflow.

<img src="../images/using-dialog-builder-img4-scratch-dialog-created.png" alt="Dialog Builder canvas with Root Intent" title="Dialog Builder canvas with Root Intent" style="border:1px solid gray; zoon:60%;">

[Click here to know about Nodes & Connections](../node-types/nodes-transitions/){:target="_blank"}.

## Auto-Generated Dialog Tasks 


### Introduction

This feature auto-generates dialog flows using the app’s purpose and intent description provided during task creation. The Platform uses **Generative AI** or **Pre Built Templates** to create suitable Dialog Tasks for Conversation Design, Logic Building, and Training by including the required nodes in the flow. This helps simplify and shorten the development process and suggests possible pathways that developers might not think otherwise.

The nodes and the flow for the Business Logic are automatically built for your conversation, and you only need to configure the flow transition.

The Platform auto-defines the _Entities, Prompts, Error Prompts, Bot Action nodes, Service Tasks, Request Definition_, and other parameters.


### Auto-Generate Dialog Tasks using Gen AI

You will see a **Conversation Preview** window right after creating your Dialog Task. In this window, you can see mock conversations and convert them into dialog flows for every intent. 

1. Click the **Gen Ai** option.

    <img src="../images/using-dialog-builder-img5-create-dialog-genai.png" alt="Select Gen Ai" title="Select Gen Ai" style="border:1px solid gray; zoon:60%;">

2. Provide **Intent Name** (mandatory) and a meaningful **Description** that states the purpose of the Dialog Task, and click **Generate**.

    <img src="../images/using-dialog-builder-img6-create-dialog-genai-generate.png" alt="Gen Ai - Generate" title="Gen Ai - Generate" style="border:1px solid gray; zoon:60%;">

3. You can see a Preview of the AI generated dialog flow.

    <img src="../images/using-dialog-builder-img7-create-dialog-genai-preview.png" alt="Preview of AI generated dialog" title="Preview of AI generated dialog" style="border:1px solid gray; zoon:60%;">

4. You can regenerate the dialog by changing the description and clicking **Regenerate**.

    !!! Note 
 
	    Providing a relevant description is reccommended. Dialog will be generated, but with **only the error prompt**, if no description is provided. 
 
    <img src="../images/using-dialog-builder-img8-create-dialog-genai-regenerate.png" alt="Regenerate AI generated dialog" title="Regenerate AI generated dialog" style="border:1px solid gray; zoon:60%;"> 

5. Click **Proceed** when you are satisfied with the preview.  
 
    <img src="../images/using-dialog-builder-img9-create-dialog-genai-proceed.png" alt="Gen Ai Dialog Preview - Proceed" title="Gen Ai Dialog Preview - Proceed" style="border:1px solid gray; zoon:60%;">  
 
The nodes and the flow for the Business Logic are automatically built for your conversation. The Platform auto-defines the _Entities, Prompts, Error Prompts, Bot Action nodes, Service Tasks, Request Definition_, and other parameters. You can customize the flow per your requirements by editing the generated nodes and adding your own. You can configure the generated Dialog Tasks just like any other dialog task. 
 
<img src="../images/using-dialog-builder-img10-create-dialog-genai-dialog-created.png" alt="Gen Ai Dialog created" title="Gen Ai Dialog created" style="border:1px solid gray; zoon:60%;">

### Auto-Generate Dialog Tasks using Pre Built Templates

This option lets you choose a suitable dialog template out of the list of ready-made templates targeting major industry verticals covering generic use cases related to the industry, as well as having the pre-established integration. User can update the description and generate usecases based on the purpose. Accelerates development by providing a starting point for common scenarios, ensuring consistency and efficiency.

You can either scroll through the entire list, or find the required template using the search box or Integrations dropdown. Out of the search results, click the template once you find one that suits your requirement. 
 
<img src="../images/using-dialog-builder-img11-create-dialog-template-search.png" alt="Template search" title="Template search" style="border:1px solid gray; zoon:60%;">

1. The **Create Dialog** window opens where you need to select the integration for getting a preview of the dialog. Click **Proceed** for the next step. 
 
    <img src="../images/using-dialog-builder-img12-create-dialog-template-preview.png" alt="Dialog using template - preview" title="Dialog using template - preview" style="border:1px solid gray; zoon:60%;"> 

2. You can edit the **Intent name, description, and customize the options** for the dialog, similar to **Create Dialog from Scratch**. After making the required changes, click **Proceed**.

    <img src="../images/using-dialog-builder-img13-create-dialog-template-edit-details.png" alt="Dialog using template - Edit details" title="Dialog using template - Edit details" style="border:1px solid gray; zoon:60%;"> 

3. The Dialog Builder now opens with the root intent component, and the nodes you saw in the preview. You can customize the flow per your requirements by editing the generated nodes and adding your own on the Dialog Builder canvas, as well as establish transition between the nodes.In other words, you can configure the generated Dialog Tasks just like any other dialog task. 
 
    <img src="../images/using-dialog-builder-img14-create-dialog-canvas.png" alt="Dialog using template - Dialog canvas" title="Dialog using template - Dialog Canvas" style="border:1px solid gray; zoon:60%;">

[Click here to know about Nodes & Connections](../node-types/nodes-transitions/){:target="_blank"}


## Dialog Task Builder Overview

Before moving on, here is an overview of the Dialog Task Builder. For details, please see [Navigating the Dialog Task Builder](../navigating-dialog-tasks/){:target="_blank"}.

<img src="../images/navigate-dialog-builder-canvas.png" alt="Dialog task builder" title="Dialog task builder" style="border:1px solid gray; zoon:60%;">

## Sequences

In UXO, a **Sequence** is a building block of a dialog that contains one or more nodes in the required sequence of execution.. You can divide the dialog into sequences based on sub tasks within the dialog.

**_[video of node creation]_**

You can set connections between two sequences; Drag the connector <img src="../images/using-dialog-builder-img17-nodes-connector.png">
 from the source sequence to the required destination sequence. Please note that by default, the connection will be from the **bottommost node of the source sequence** to the **topmost node on the destination sequence**.

Connections can be set or changed either on the canvas by **dragging the transition arrow**, or through **Connections** settings on the **Component Properties panel**. 

You can also add  a sequence **in-between two existing sequences**. Below are the steps to do that:

* Add the new node directly to the canvas, a new sequence will get created containing the newly added node.
* Set the connection between the source sequence to the new sequence.
* Set the connection between the new sequence to the Destination sequence.

**_[Video of connection]_**

All the sequences created can be seen on the **Nodes** tab in the left hand side menu.

<img src="../images/using-dialog-builder-img18-nodes-tab.png" alt="Nodes tab" title="Nodes tab" style="border:1px solid gray; zoon:60%;">

For example, in the flight booking dialog, you can have separate sequences for gathering passenger details, gathering trip details, generating pnr, etc. Each sequence contains one or more nodes grouped into coherent sequences. Align the nodes logically and provide clear, descriptive names for the sequences to facilitate future reference and comprehension. 

<img src="../images/using-dialog-builder-img19-assets-and-nodes.png" alt="Assets and Nodes" title="Assets and Nodes" style="border:1px solid gray; zoon:60%;">

You can delete a sequence by right clicking on it and selecting **Delete** from the menu.

!!! Warning

	This action cannot be undone.

<img src="../images/using-dialog-builder-img15-node-delete.png" alt="Delete node" title="Delete node" style="border:1px solid gray; zoon:60%;">


## Add node to dialog

There are two ways to add a node:

1. Drag and drop nodes from the panel onto the dialog builder, [see below](#use-drag-and-drop).
2. Using the options from the Dialog Builder Canvas, [see below](#use-the-dialog-canvas).

### Use Drag and Drop

You can add nodes within the dialog task, by dragging the node from the panel on the left to the designated place in the dialog task, on the canvas. You can drop the node within an existing node, or outside the nodes; in this case a sequence will get created automatically, containing the newly added node.

Additionally, a streamlined node panel with user-friendly categorization is provided at the bottom of the canvas. The categories, namely **Ask, Inform, Action, AI, and Integration** provide a clear organization for you to easily locate the required nodes. Nodes can be dragged and dropped from here too.

**_[VIDEO Drag Drop]_**


### Use the Dialog Canvas

Click the <img src="../images/using-dialog-builder-img17-nodes-connector.png"> button next to the sequence after which you want to add another node. You can either add a node directly on the canvas, in which case a new sequence gets created. You can then drag and drop the node to an existing sequence, if that is how you wish to place it.

**_[video of adding node on canvas]_**


### Add If-Else Node Connections

You can add conditions to the sequence by adding **If-Else connection** in the **Transition** section of the sequence. This is where you can set the execution path based on the condition.

To do this, hover over the **Transitions** section and click **Add New.** [Learn more](../node-connections/nodes-conditions/){:target="_blank"}.

<img src="../images/using-dialog-builder-img16-nodes-transition.png" alt="Transitions - Add New" title="Transitions - Add New" style="border:1px solid gray; zoon:60%;">

Sequence can be deleted by right clicking on it, and then clicking **Delete.**

<img src="../images/using-dialog-builder-delete-asset.png" alt="Delete node" title="Delete node" style="border:1px solid gray; zoon:60%;">


## Node Properties

Clicking on a node will open its Properties panel, which includes specific features, depending on the type of node you are working with. Please consult the documentation on [Node Types](../node-types/nodes-transitions/){:target="_blank"} to learn more about what is included with each. So, noting that some nodes may not come with some features, here is a general overview of what is available within this panel:

* **Component Properties** such as name, type, and component-specific properties.
* **Instance Properties** can be customized for the selected node for the current dialog.
* **Connection Properties** can be used for configuring transition conditions. (Only available for the bottommost node in a node)
* **NLP Properties** for intent and entity recognition.
* **Voice Call Properties** for IVR channels (available for certain nodes only after [IVR integration](../node-types/voice-call-properties/){:target="_blank"}).

<img src="../images/using-dialog-builder-img20-asset-properties.png" alt="Node properties" title="Node properties" style="border:1px solid gray; zoon:60%;">


## Adding Comments, Bookmarks and Text

UXO provides a robust set of features within its dialog builder to enhance collaboration and organization. Here's a breakdown of the mentioned features:

* Text
* Comments
* Bookmarks

You can add, edit, move or delete text, comments or bookmarks as per need. However, please note that deletion cannot be undone.

!!! Note

	You can add comments, texts or bookmarks on the canvas as well as within the sequences. (Available in Phase 2)

<img src="../images/using-dialog-builder-img21-text-bookmark-comment.png" alt="Text, comment, bookmark" title="Text, comment, bookmark" style="border:1px solid gray; zoon:60%;">

### Text

Adding text to a canvas as notes is a common practice in various design and collaboration tools. This allows users to provide communication and feedback, summarize information, additional context, explanations, or instructions directly on the canvas, making it a helpful reference for future work or collaboration. Here are some ways this can be beneficial:


1. Introduction to Modules:
    * Use text on the canvas to introduce the purpose and scope of different modules in your project.
    * Provide a brief overview of what each module is designed to achieve.
2. Flow Logic:
    * Use text annotations to describe the flow logic between different modules or components.
    * Highlight key decision points, inputs, and outputs within the overall flow.
3. Notes for Future Reference:
    * Include notes that provide insights or considerations for future work or modifications.
    * Document any design decisions, constraints, or important considerations.



By incorporating text annotations directly onto the canvas, you create a visual and contextual layer of information that can enhance collaboration, provide clarity, and serve as a valuable reference for anyone working on the project in the future. 

**_[Video - add Text]_**


### Comment

The purpose of a comment is similar to that of a text, however additionally,  in a comment you can tag other users. It enhances communication by providing a platform for feedback, suggestions, and discussions on specific elements of the design.

Tagging a user in a comment is a way to draw their attention to a specific part of a dialog, indicating that their input or design expertise is needed for that particular section. This facilitates smoother collaboration and enhances overall project efficiency by keeping communication focused and actionable.

If you're working with a team of designers or collaborators, you can use comments to provide specific instructions or guidelines for designing certain elements. You can also use text on the canvas to communicate ideas, suggestions, or questions directly within the design space.

**_[Video - Add Comment]_**


### Bookmark

Bookmarks offer the ability to organize and reference important information. You can bookmark frequently visited or crucial content in the canvas with relevant information. They help you to navigate to the bookmarked content without having to search or browse extensively. Here's how the ability to add bookmarks can be advantageous:

1. Navigation Efficiency:
    * Bookmarks provide a quick and efficient way to navigate through a complex dialog structure.
    * Users can jump directly to specific dialogs of interest without the need for extensive scrolling or searching.
2. Focus on Key Dialogs:
    * Users can mark and bookmark key or frequently referenced dialogs.
    * This helps in maintaining focus on critical sections of the conversation flow, enhancing productivity during the design and review process.
3. Project Organization:
    * Bookmarks contribute to better project organization by allowing users to create a personalized structure for quick access.
    * Users can categorize and group dialogs based on their relevance or importance, facilitating a more streamlined workflow.
4. Collaborative Work:
    * In collaborative environments, bookmarks can serve as visual indicators of significant points in the dialog flow.
    * This aids communication among team members by creating a shared understanding of which dialogs are crucial or require attention.
5. Time Savings:
    * The feature saves time by eliminating the need for users to manually search for specific dialogs within a complex structure.
    * Users can efficiently locate and revisit dialogs, reducing the overall time spent on navigation.
6. Enhanced User Experience:
    * Adding bookmarks enhances the overall user experience by providing a user-friendly and customizable way to interact with the dialog design interface.
    * Users have greater control over their navigation, contributing to a more intuitive and efficient design process. 


In summary, bookmarks offer a practical solution to the challenges associated with navigating complex dialog designs. They empower users to personalize their experience, focus on key components, and streamline collaboration within the context of intricate dialog structures.

**_[Video - Add Bookmark]_**

The inclusion of a dedicated Bookmark tab in the left-hand side panel further enhances the usability of the bookmark feature. The Bookmark tab on the left-hand side panel not only provides a structured and organized way to manage bookmarks but also contributes to a user-friendly interface, making it easier to navigate and interact with the bookmarked dialogs.

<img src="../images/using-dialog-builder-img22-bookmark-tab.png" alt="Bookmark tab" title="Bookmark tab" style="border:1px solid gray; zoon:60%;">


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



## Bot Action Nodes (Needed?)


Bot Action nodes include the following nodes, that need processing by the app without user interaction:

* [Service ](../node-types/working-with-the-service-node/){:target="_blank"}Asset
* [Script ](../node-types/working-with-the-script-node/){:target="_blank"}Asset
* [Logic](../node-types/working-with-the-logic-node/){:target="_blank"} Asset
* [Webhook](../node-types/working-with-the-web-hook-node/){:target="_blank"} Asset
* [Process](../node-types/process-nodes/){:target="_blank"} Asset

To access these nodes follow the steps below:

1. Add a **Bot Action** node to your dialog task canvas.
2. Click the **expand (+)** button next to the Bot Action node. The primary nodes panel will be replaced with the Bot Action nodes panel.
3. The Bot Action Node shows all of its containing nodes as a group. Add any node from here, using either the “+” sign or drag and drop. Bot Action Nodes provide the following options: On the left side of the node there is an **Expand (+)** button if the node is collapsed, and a **Collapse (-)** button if the node is expanded. Nodes can also be collapsed using the **Close (x)** button on the top right.
4. Nodes inside the bot action node cannot be connected directly to any node outside the bot action.
5. For the nodes inside the bot action node, the following connections can be configured:
    1. **Node Connections** – this option can be used to define the connection rules connecting to nodes within the bot action node. This can be configured to:
        1. **Any node within the corresponding bot action node**;
        2. **Not Connected**;
        3. **End of Bot Action** – this would take the bot flow to the node connected to the bot action node;
    2. **Bot Action Connections** – this option can be used to define the connection rules connecting to a node outside of the current Bot Action. These rules would be applied to the bot action node as a whole.



<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image30.gif). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image30.gif "image_tooltip")



## Switch Tasks

The Builder comes with a dedicated task switcher, which you can use to easily change to working on a different task within your selected app. This option is located at the top of your canvas

<img src="../images/using-dialog-builder-img23-task-switcher.png" alt="Task switcher" title="Task switcher" style="border:1px solid gray; zoon:60%;">


## Menu Options

<img src="../images/dialog-top-menu.png" alt="Top Menu" title="Top Menu" style="border:1px solid gray; zoon:60%;">

The top menu provides access to a variety of options which you can use while working on your Dialog Task. The following options are specific to the Logic-Driven Dialog Builder:

* **Errors and Warnings** – Any potential errors and warnings in your Dialog Task will be shown here. Click this area to access information about current errors and warnings.

    <img src="../images/using-dialog-builder-img24-error-and-warnings.png" alt="Errors and Warnings" title="Errors and Warnings" style="border:1px solid gray; zoon:60%;">

* **Find Nodes** – This search option will look for tasks containing your keywords and highlight them onto the canvas. 
 
**_[Video - Find Nodes]_**


### The ‘More Options’ Menu

The More options menu, accessible at the top right of the Dialog Builder, is where you can find shortcuts to dialog settings, manage interruptions, amend behavior, and view all comments.

<img src="../images/using-dialog-builder-img25-more-options.png" alt="More options" title="More options" style="border:1px solid gray; zoon:60%;">


#### Dialog Settings

The **Dialog Settings** panel allows you to modify the dialog task basic settings, and if desired, set the visibility of a dialog to create a hidden dialog task that is available for use, but not shown as a task. You can access Dialog Settings using the More Options Menu. 

<img src="../images/using-dialog-builder-img26-dialog-settings.png" alt="Dialog settings" title="Dialog settings" style="border:1px solid gray; zoon:60%;">

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


#### Manage Interruptions

The **Manage Interruptions** options allow you to select if and how a user can switch to another task, as well as the exit strategies. It can be set up at the VA, task, and node levels to ensure the configurations are layered to suit your various business requirements. You can also add conditional exceptions between tasks with the ability to pass contextual data between them.

<img src="../images/using-dialog-builder-img27-manage-interruptions.png" alt="Manage Interruptions" title="Manage Interruptions" style="border:1px solid gray; zoon:60%;">

Click here to [learn more](../../../intelligence/conversation-management/manage-interruptions/#dialog-level-settings){:target="_blank"}.


#### Manage Ammend Behavior

Using **Amend Entity,** you can allow the users to amend entity values and also control the post-amendment dialog behavior.

<img src="../images/using-dialog-builder-img28-manage-ammend-behavior.png" alt="Manage Ammend behavior" title="Manage Ammend behavior" style="border:1px solid gray; zoon:60%;">

Click here to [learn more.](../../../natural-language/nlu-configurations/amend-entities/#task-level){:target="_blank"}


### Display Options

You can use **Display Options** to better utilize screen real estate.

<img src="../images/using-dialog-builder-img29-display-settings.png" alt="Display settings" title="Display serrings" style="border:1px solid gray; zoon:60%;">

Display Options are used to:

* **Fit to Screen** – Resizes Dialog Builder components and connections to fit within the display screen resolution for a single, non-scrolling page.
* **Zoom Level** – is used to set the zoom level as per need.
* **Zoom to Last Edited** – Takes you to the zoom level you have used to edit the dialog
* **Hide/Show Mini Map** – To show or hide the mini map of the dialog.


## Troubleshooting

In the top navigation area, you will see a real-time set of errors and warnings are available as you define your dialog task located on the top-right of the Dialog Builder. Click the information icon to display any errors or warnings as shown in the following illustration.

<img src="../images/using-dialog-builder-img30-error-warning.png" alt="Troubleshooting - Errors and Warnings" title="Troubleshooting - Errors and Warnings" style="border:1px solid gray; zoon:60%;">