# Dialog Task – Legacy Builder

In a bid to improve useability and user experience, the dialog builder was given a makeover. You are given a choice to upgrade to the new builder or continue with the legacy builder, though we encourage you to go for the upgrade.

!!! Tip ""

    This document deals with using the legacy dialog builder to build dialog tasks, for the new improved version, [refer here](../using-the-dialog-builder-tool/){:target="_blank"}.


## Legacy Dialog Builder Tool

This topic describes the user interface for creating a conversational flow between a user and a Bot in a dialog task using the Dialog Builder tool in Kore.ai Bot Builder.

<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image1.png "image_tooltip")

In the **Search** field, you can search component titles for any letters or words using find-as-you-type. Search matches are highlighted in the component titles.


## Adding Dialog Task Components

When you create a dialog task, by default the first component created and displayed is the **user intent node** or **user intent component** of the dialog task. The user intent is how the dialog task is identified by the end-user, for example, _Search for a Flight_, or _Create a Ticket_.

**Additional components** in the dialog task need to be added to perform the intent requested by the end-user. For example, for the _Search for a Flight_ dialog, you should add additional components to query the user for the departure airport, arrival airport, and date.

To add a component, click either of the **Add Component** <img src="../images/add-component-icon.png"> icons as shown in the following illustration:


<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")

From the list displayed, select one of the **component types**, and then either select an existing component or create a new component as shown in the following example of creating a **new entity node**.


<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")


When create new is selected, the component is added to the dialog task with default properties that can be modified from the **Properties Panel**.



<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")


From the Properties Panel you can set:



* **Component Properties** like name, type and component specific properties;
* **Instance Properties** can be customized for the selected node for the current dialog;
* **Connection Properties** can be used for setting the transition conditions;
* **NLP Properties** for intent and entity recognition;
* **IVR Properties** for IVR channels (available for certain nodes only after [IVR integration](../../../../channels/IVR-integration){:target="_blank"}).

Depending on the type of component added, you will need to define various settings in the **Properties** panel. For more information, see the corresponding component types of documentation.


## Color-Coded Connections

The conditions or transitions from one component to another are labeled by a colored arrow showing the path to the next node based on the connection condition defined. In the following color chart, the order of connection color assignment is shown.

<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image6.png "image_tooltip")


When multiple conditions are defined with multiple connection options to other components, the colored arrows help you visualize the flow as shown in the following illustration.

<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image7.png "image_tooltip")


## About the Options Menu

The **Options** menu is your access to Dialog Builder tool settings and commands such as view settings, dialog task settings, and dialog import and export. To access the commands on the **Options** menu, click the **Ellipses**<img src="../images/ellipses-icon.png"> icon located on the upper rightmost side of Dialog Builder as shown in the following illustration. If Variable Namespace is enabled for the bot, then you would see an additional Manage Variable Namespaces option too.

<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image9.png "image_tooltip")


### Using Display Options

You can use **Display Options** to reduce unnecessary node information and better utilize screen real estate.  

You can show or hide some or all of node type, node details, or connection details displayed in the Dialog Builder. For example, all details are shown in the following illustration for **Show All**.

<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image10.png "image_tooltip")

Click **Hide Node Type** to removed the node name.

<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image11.png "image_tooltip")

Click **Hide Node Details** to remove node descriptions.

<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image12.png "image_tooltip")

Click **Hide Connection Details** to remove conditional transition details.

<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image13.png "image_tooltip")

Click **Hide All** to show only basic node information with color coding.

<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image14.png "image_tooltip")


### Using Zoom Controls

**Zoom Options** can be used to:

* **Fit to page** – Resizes Dialog Builder components and connections to fit within the display screen resolution for a single, non-scrolling page.
* **Reset Zoom** – Resets zoom settings to actual size.

Additional **Zoom Option** controls are available in the lower leftmost side of the Dialog Task builder shown in the following illustration.

<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image15.png "image_tooltip")


### Dialog Settings

The **Dialog Task Settings** dialog allows you to modify the dialog task basic settings, and if desired, set the visibility of a dialog to create a hidden dialog task that is available for use, but not shown as a bot task.

<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image16.png "image_tooltip")

Add or modify the following settings for each dialog:

* **Name** – The **Name** of your dialog task, usually the main user intent, for example, _Pay Bills._
* **Description** – An optional description of your dialog task displayed in Bot Builder.
* **Options** – Specify the behavior of this dialog task to the end-user:
    * **Sub intent only dialog** – Task can be invoked only as a sub-task when another task is in progress. The task will not be presented as a bot task when the user requests for help.
    * **Hide from help** – Task will not be presented as a bot task when the user requests for help. Users can invoke this task anytime while talking to the bot. Note this option will be selected automatically when the previous option is selected.

* **Follow-up Task** – Follow-up task array will contain all the intents detected from user utterances from this dialog. You can either:
    * handle the follow-up tasks as part of node connections (default setting), or
    * let the user select the follow-up task.

* **Task Execution Failure** – Define bot behavior when there is any error in task execution. It can be set as either:
    * same as the Bot Level behavior
    * specific to this task – initiate a task, run script or show a message


## Troubleshooting Your Dialog Task

A real-time set of errors and warnings is available as you define your dialog task located in the upper rightmost corner of Dialog Builder. Click the information icon to display any errors or warnings as shown in the following illustration.


<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image17.png "image_tooltip")

In addition, you can view the flow of your dialog task from the start of the root intent to a selected component by using the **Show Trace** <img src="../images/show-trace-icon.png"> icon as shown in the following illustration.


<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image19.png "image_tooltip")

In the previous illustration, any components of the dialog task that are not directly in the dialog flow for the selected component are grayed out. Using the trace feature you can look for a broken flow or conditional transition issues. Click **ShowTrace** again to remove the trace.
