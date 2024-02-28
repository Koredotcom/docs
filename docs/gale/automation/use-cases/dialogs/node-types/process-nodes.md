# Process Nodes

Process nodes are used to connect a Dialog Task to a Process App that has been created within the XO Platform. 

In this article you will learn about working with the Process Node within a Dialog Task. Please see the [Process Assistant documentation](https://developer.kore.ai/process-assistants/){:target="_blank"} to learn more about working with this component of the XO Platform.

Process nodes can only be added as part of a Bot Action node. Therefore, before you can add a Process node, you need to add a Bot Action node. [Read more about Bot Action Nodes.](../bot-action-node/){:target="_blank"}

Keeping this in mind, the setup of a Process node in a Dialog Task involves the following steps:


## Add the Node

To add a Process node, please follow the steps below:

1. **Select the Virtual Assistant** that you want to work with.
2. **Open the Dialog Task** to which you want to add the node. 
3. **Add or expand a Bot Action node**.

    <p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image1.png "image_tooltip")

4. **Add the Process node**. The node configuration panel will open automatically, with the **Component Properties** tab selected.

    <p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image2.png "image_tooltip")


## Configure the Node


### Component Properties

!!! Note

    Any changes in this tab will affect all instances of this process. Proceed with caution.

The Component Properties tab lets you modify configurations of this process across all instances in all dialogs. as follows:

1. Under the **General Settings** section, enter a **Name and Display Name** for the Process node. Node names cannot have spaces.
2. **Select a Type**. You can choose one of the following: 
    1. **Trigger**: The node will trigger the Process App.
    2. **Send Bot Response to Process App**: The node sends the Bot Response to the Process App, which can then use it to complete other configured tasks. 
    3. **Get Process Tasks**: The node retrieves process tasks from within the Process App, then includes these tasks within the current Dialog Task. 
3. **Choose a Process App** to connect the node to. 
4. In the **Variable Namespaces** section, associate the variable namespaces to execute this node and its transitions. This option is visible only when the variable namespace is enabled for the bot. You can go with the task level settings or customize it for this node. For more information, refer to [Managing Namespaces](../../../../../app-settings/managing-namespace){:target="_blank"}.

    <p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image3.png "image_tooltip")

### Connection Properties

Since they are contained within Bot Action nodes, Process nodes cannot be connected on their own to any other nodes outside the Bot Action node to which they belong. Connections can only be made with nodes contained within the same Bot Action node.  

From the node’s **Connection Properties** tab, you can configure the following:

1. **Process Node Connections**: The node within the Bot Action to execute next, after the Process node runs. 
2. **Bot Action Connections**, where you can update the node to trigger after the Bot Action group is executed. Updates made here will apply to all nodes within the same Bot Action. 

For both connection types you can write conditional statements based on the values of any Entity or Context Objects in the dialog task, or you can use Intents for transitions. 

!!! Note

    The conditions configured here are applicable only for this instance and will not affect this node when being used in any other dialog.

To set up node connection conditions, please follow the steps outlined in [Adding IF-Else Conditions to Node Connections](../../node-connections/nodes-conditions){:target="_blank"}.

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image4.png "image_tooltip")