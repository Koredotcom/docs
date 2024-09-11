# Manage Input and Output

Agent flows in GALE allow you to define input and output variables, which become accessible as context objects throughout the execution of the flow.

* Input Variables: The input variables provide initial data to the agent flow. 
* Output Variables: The output variables store and make accessible the derived values from the flow. You must define output variables to capture results you want to return from the agent.

Once the input and output variables are defined, you can access these variables using the context object syntax, and can be utilized throughout the flow:

* Input variables are available immediately after the Start node.
* Output variables can be set in any node and are collected at the End node.

You can initiate a fresh agent flow and specify the inputs required to initialize the process. Within the Start node, essential variables necessary for the flow's execution are received from the front end through API requests. Correspondingly, the End node gathers outputs from the preceding nodes and transmits them for utilization by the front end as an API.


**Steps to manage input variables**:

1. On the top of the canvas of the Agents page, click the **Manage I/O** button.

    The **Manage Input & Output** dialog is displayed.

    <img src="../images/manage-input-output-variables.png" alt="Manage Input Output Variables" title="Manage Input Output Variables" style="border: 1px solid gray; zoom:80%;">

1. On the **Input** tab, click the **+ Add input variable** button.

    The **Enter input variable** dialog is displayed.

    <img src="../images/enter-input-variable.png" alt="Enter Input Variable" title="Enter Input Variable" style="border: 1px solid gray; zoom:50%;">

1. In the **Name(key)** field, provide a name for the input variable. For example, Product_ID.
2. In the **Type** field, select a data type from the drop-down list. 
The options are Text, Number, Boolean, and Remote file. 
If you want to make the data type mandatory, then enable the **Mandatory** toggle.
    *  If you select the **Text**, **Number**, or **Boolean** data types, the **Default value** field appears.
        * You can enable the **Default value** field to set a default value for the input variable. For example, 9393JAS.
    
    *  If you select the **Remote file** data type, the **File url timeout** field appears.
        *  Enter the File URL timeout duration in minutes.
            
            !!! note

                The default File URL timeout is 5 minutes. You can set it to anywhere between 5 minutes and 7 days (10080 minutes).
                          
         <img src="../images/url-timeout.png" alt="File URL timeout" title="File URL timeout" style="border: 1px solid gray; zoom:80%;">


3. Click **Save**.

The input variable is displayed under the Input tab of the **Manage Input & Output** dialog.

**Steps to manage output variables**:

1. On the top of the canvas of the Agents page, click the **Manage I/O** button.

    The **Manage Input & Output** dialog is displayed.

1. On the **Output** tab, click the **+ Add output variable** button.

    The **Enter output variable** dialog is displayed.

    <img src="../images/enter-output-variable.png" alt="Enter Output Variable" title="Enter Output Variable" style="border: 1px solid gray; zoom:80%;">

1. In the **Name(key)** field, provide a name for the output variable.
2. In the **Type** field, select a data type from the drop-down list.
The options are String, Number, and Boolean.
3. Click **Save**. 
The output variable is displayed under the Output tab of the **Manage Input & Output** dialog.

!!! note

    You can create multiple input and output variables based on your use case.

