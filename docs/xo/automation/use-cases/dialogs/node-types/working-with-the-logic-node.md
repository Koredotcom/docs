# Logic Node

The Logic Node provides a simpler experience to developers, facilitating the use of context variables and the definition of complex transition conditions. Its two primary features are:

1. Ability to manage variables and values of variables in the context object.
2. Ability to define nested transition conditions.

This article shows you how to add and configure the Logic node. 


## Add the Node

Logic Nodes can only be added as part of a Bot Action node. Therefore, before you can add a Logic Node, you need to add a Bot Action node. [Read more about Bot Action Nodes](../bot-action-node/){:target="_blank"}.

Keeping this in mind, the setup of a logic node in a dialog task involves the following steps:

1. Open the dialog task to which you want to add the Logic node.
2. Add and/or expand a **Bot Action** Node.
3. Add the Logic node in the designated place. For steps on adding nodes, [refer here](../../using-the-dialog-builder-tool/#add-nodes){:target="_blank"}.
4. The Logic node is displayed with the **Component Properties** tab selected by default.

    <p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.gif). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image1.gif "image_tooltip")


## Configure the Node

### Component Properties

!!! Note

    All changes made to the Component Properties tab will affect all instances of the Logic node, across Dialog Tasks. 


To configure the Component Properties tab, please follow the steps below:

1. On the **Component Properties** tab, under the **General Settings** section, you can modify the **Name** and **Display Name**.
2. In the **Variable Namespaces** section (v8.0), associate the variable namespaces to execute this node and its transitions. This option is visible only when the variable namespace is enabled for the assistant. You can go with the task level settings or customize it for this node. For more information, refer to [Managing Namespace](../../../../../app-settings/managing-namespace){:target="_blank"}.
3. Use the **Manage Context Variables** section to set the context variables by entering a key-value pair. Use the full path of the variable in the _key_ field i.e. <code><em>context.BotUserSession.&lt;variable_name>.</em></code>

    <p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image2.png "image_tooltip")


### Instance Properties

!!! Note

    The settings in the Instance Properties tab are specific to the current dialog task and do not reflect in other dialog tasks that use this node.

Use the Instance Properties to define any user tags that you want to set.

1. On the Logic node properties panel, click the **Instance Properties** tab.
2. Under the **Custom Tags** section, add tags to build custom profiles of your VA’s conversations. [Click here for more](../../../../../analytics/automation/custom-dashboard/custom-meta-tags){:target="_blank"}.

    <p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

    ![alt_text](images/image3.png "image_tooltip")


### Connections Properties

Since they are contained within Bot Action nodes, Logic nodes cannot be connected on their own to any other nodes outside the Bot Action node to which they belong. Connections can only be made with nodes contained within the same Bot Action node. 

From the node’s Connection Properties tab, you can configure the following:

* **Logic Node Connections**: The node within the Bot Action to execute next, after the Logic node runs. 
* **Bot Action Connections**, where you can update the node to trigger after the Bot Action group is executed. Updates made here will apply to all nodes within the same Bot Action. Please read our article about the Bot Action Node to learn more.

For both connection types you can write conditional statements based on the values of any Entity or Context Objects in the dialog task, or you can use Intents for transitions. 

!!! Note
    
    The conditions configured here are applicable only for this instance and will not affect this node when being used in any other dialog.

To set up node connection conditions, please follow the steps outlined in [Adding IF-Else Conditions to Node Connections. ](../../node-connections/nodes-conditions/){:target="_blank"}

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>

![alt_text](images/image4.png "image_tooltip")