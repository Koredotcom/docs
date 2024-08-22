# Process Nodes

Process nodes are used to connect a Dialog Task to a Process App that has been created within the XO Platform. 

In this article you will learn about working with the Process Node within a Dialog Task. Please see the [Process Assistant documentation](https://developer.kore.ai/process-assistants/){:target="_blank"} to learn more about working with this component of the XO Platform.

The setup of a Process node in a Dialog Task involves the following steps:


## Add the Node

To add a Process node, please follow the steps below:

1. **Select the Virtual Assistant** that you want to work with.
2. **Open the Dialog Task** to which you want to add the node. 
3. **Add the Process node**. The node configuration panel will open automatically, with the **Component Properties** tab selected.

    <img src="../images/process-node.png" alt="Process node" title="Process node" style="border:1px solid gray;zoom:70%;">


## Configure the Node

### Component Properties

!!! Note

    Any changes in this tab will affect all instances of this process. Proceed with caution.

The Component Properties tab lets you modify configurations of this process across all instances in all dialogs as follows:

1. Enter a **Name and Display Name** for the Process node. Node names cannot have spaces.
2. **Select a Type**. You can choose one of the following: 
    1. **Trigger**: The node will trigger the Process App.
    2. **Send Bot Response to Process App**: The node sends the Bot Response to the Process App, which can then use it to complete other configured tasks. 
    3. **Get Process Tasks**: The node retrieves process tasks from within the Process App, then includes these tasks within the current Dialog Task. 
3. **Choose a Process App** to connect the node to. 
4. In the **Variable Namespaces** section, associate the variable namespaces to execute this node and its transitions. This option is visible only when the variable namespace is enabled for the bot. You can go with the task level settings or customize it for this node. For more information, refer to [Managing Namespaces](../../../../../app-settings/managing-namespace){:target="_blank"}.

<img src="../images/process-node-component-properties.png" alt="Process node - Component properties" title="Process node - Component Properties" style="border:1px solid gray;zoom:70%;">
    
### Connection Properties

You can write conditional statements based on the values of any Entity or Context Objects in the dialog task, or you can use Intents for transitions. 

!!! Note

    * Connection properties can be seen and accessed only if this is the bottommost node of a sequence.
    * The conditions configured here are applicable only for this instance and will not affect this node when being used in any other dialog.

To set up node connection conditions, please follow the steps outlined in [Adding IF-Else Conditions to Node Connections](../../node-connections/nodes-conditions){:target="_blank"}.

<img src="../images/process-node-connection-properties.png" alt="Process node - Connection properties" title="Process node - Connection Properties" style="border:1px solid gray;zoom:70%;">