# Function Node

Function nodes allow you to write custom scripts using JavaScript or Python to process context variables or other variables used in building the experience flow.

## Add and Configure a Function Node

Setting up a Function node in an Agent Flow involves adding the node at the appropriate location in the flow and configuring various node properties, as explained below.

Steps to add and configure the node:

1. On the **Agents** tab, click the name of the agent to which you want to add the node. The Agent Flow page is displayed. 

2. Click the **Go to flow** button for the in-development version of the flow for editing.

3. In the flow builder, click the “**+**” icon on any existing node on the canvas and select **Function** from the pop-up menu. (Alternatively, you can drag the **Function** node from the Assets panel onto the canvas.)

4. Click the added node to open its properties dialog box. The General Settings for the node are displayed.  
<img src="../images/configure-function-node.png" alt="Configure Function Node" title="Configure Function Node" style="border: 1px solid gray; zoom:80%;">

5. Enter or select the following information:
    
    * **Custom Name**: Enter an appropriate name for the node.
    
    * **Define a Script**: You can define a script using Javascript or Python to process/parse the given input or the output of the previous node. Click anywhere in the **Define a Script** field to open the **Script Editor** dialog box.  
    <img src="../images/function-node-script-editor.png" alt="Configure Function Node" title="Configure Function Node" style="border: 1px solid gray; zoom:80%;">

        1. In the top-left corner, choose the appropriate scripting language - **Javascript** or **Python**. Enter the script in the box. You can use variables or context variables in the Script Editor. For example:
            
            To read an input variable:
            ~~~
            context.<variable-name> = context.steps.<startNode-Name>.<inputVariable-name>
            ~~~
            To call a function:
            ~~~
            context.<UserDefined-Variable-Name>= UserDefined-Function-Name(context.steps.<startNode-Name>.<inputVariable-name>)
            ~~~

            !!! note
                You cannot import packages in the Function node. However, you can use pre-existing libraries such as pandas or  NumPy. [Learn more](../types-of-nodes/script-libraries.md).

        2.  You can use the Context input/output feature to use a variable from the previous node or when testing a function.
            * **Context Input**: Add the required variable; also, dummy input values can be given to test the defined function.
            * **Context Output**: Shows the results of the function from the given input.
            * **Log**: Monitor the state of the function and view the values.
        
        3. Click the **Run** button to test the script. Once the script is resolved successfully, the results are displayed in the Log section.
        4. Close the Script Editor.

6. Click the **Connections** icon in the left navigation and select the **Go to Node** for both success and failure conditions.  
<img src="../images/function-node-connections.png" alt="Configure Connection Settings" title="Configure Connection Settings" style="border: 1px solid gray; zoom:80%;">
    1. **On Success** > **Go to Node**: After the current node is successfully executed, go to a selected node in the flow to execute next. For example, you can go to a Gen AI node to use the processed data from the Function node. 
    2. **On Failure** > **Go to Node**: If the execution of the current node fails, go to an appropriate node having a custom error message configured for this node.

7. Finally, test the flow and fix any issues found: Click the **Run Flow** button at the top-right corner of the flow builder.

!!! failure "Standard Errors"

    You can see compilation and runtime errors, if any, during the execution of the script/node.

