# Condition Node

Condition nodes let you create branches in a workflow, directing actions based on whether certain conditions are met. This helps control the flow’s execution.

The node can handle three types of conditions:

* **If**: It directs the flow to a specific path if criteria (Node, Context, or Value) are met.
* **Else**: It sets the node connection when no condition is met, allowing you to configure the next node to connect to.
* **Else If**: It allows you to configure another set of criteria (Node, Context, or Value) to be met when the initial 'If' condition is not satisfied.

!!! note
    
    Due to security reasons, a condition can be called a maximum of 10 times in a tool flow. Exceeding this limit will result in an error.


## Add and Configure a Condition Node

Setting up a Condition node in a tool flow involves adding the node at the appropriate location in the flow and configuring various node properties.

Steps to add and configure the node:

1. On the **Tools** tab, click the name of the tool to which you want to add the node. The Tool flow page is displayed. 

2. Click **Go to flow** to edit the in-development version of the flow.

3. In the flow builder, click the “**+**” icon on any existing node on the canvas and select **Condition** from the pop-up menu. (Alternatively, drag the **Condition** node from the Assets panel onto the canvas.)

4. Click the added node to open its properties dialog box. The General Settings for the node are displayed.  
<img src="../images/condition-node-settings-to-be-filled.png" alt="Condition Node Settings" title="Condition Node Settings" style="border: 1px solid gray; zoom:60%;">

5. Enter or select the following information:
    
    * **Custom Name**: Enter an appropriate name for the node.
    * **If/Else Condition**: Define the IF ELSE/ELSE IF conditions using context variables and the AND/OR operator. You can use Node, Context, or Value.
        1. In the **IF** section, select the context variable you want to use - enter "{{context." and select the node/variable from the list and then close the braces with "}}".  
        <img src="../images/if-condition-context-variable-selection.png" alt="Using Context Variable" title="Using Context Variable" style="border: 1px solid gray; zoom:80%;">
        
            Example: `{{context.ambiguous_sub_categories}}`
        
        2. Select an appropriate Operator from the drop-down list. For example, **Contains**.

        3. Enter the value for the condition. If you want to use a context variable, start entering "{{context." and then select the node or variable, and then close the braces with "}}".
            
            Example: `{{context.steps.Sub_Category_Detection.output}}`   
                  
        4. Additionally, you can use an **AND**/**OR** logical operator to add more criteria to the condition.

        5. In the **Then Go To** drop-down list, select the node to connect if the condition is met.

        6. In the **ELSE** section, select the node you want to trigger if the IF condition fails.  
        <img src="../images/condition-node-settings-filled.png" alt="Condition Node's Settings" title="Condition Node's Settings" style="border: 1px solid gray; zoom:60%;">

6. Finally, test the flow and fix any issues found. Click the **Run Flow** button at the top-right corner of the flow builder and follow the onscreen instructions.

!!! failure "Standard Error"

    If a condition is true or false but has no connected node, the following error message is displayed: "Path not defined. Please check the flow."

