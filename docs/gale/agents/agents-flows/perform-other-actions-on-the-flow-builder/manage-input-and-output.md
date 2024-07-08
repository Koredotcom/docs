# Manage Input and Output

You can initiate a fresh agent flow and specify the inputs required to initialize the process. Within the starting node, essential variables necessary for the flow's execution are received from the front end through API requests. Correspondingly, the end node gathers outputs from the preceding nodes and transmits them for utilization by the front end as an API.

 Once the input and output variables have been defined, they become accessible within the context objects and can be utilized throughout the flow's progression.

**To manage input variables, follow these steps**:

1. Click the **Manage I/O** button on the top of the canvas of the Agents page.

    The **Manage Input & Output** dialog is displayed.

    <img src="../images/manage-input-output-variables.png" alt="Manage Input Output Variables" title="Manage Input Output Variables" style="border: 1px solid gray; zoom:80%;">

1. Click the **+ Add input variable** button under the **Input** tab.

    The **Enter input variable** dialog is displayed. 

    <img src="../images/enter-input-variable.png" alt="Enter Input Variable" title="Enter Input Variable" style="border: 1px solid gray; zoom:50%;">

1. Enter a **Name(key)** to the input variable. For example, Product_ID.
2. Select a data type from the **Type** drop-down list. If you want to make the data type mandatory, then move the **Mandatory** toggle button.
    *  If you select data **Type** as **Text** or **Number** or **Boolean**, the **Default value** field appears.
        * You can Enable the **Default value** toggle to add a Default value for the input variable. You can set a default value for this input variable. If the value is not provided, then the flow automatically selects this default value. For example, Default Value - 9393JAS.
    
    *  If you select data **Type** as **Remote file**, the **File URL timeout** field appears.
        <img src="../images/url-timeout.png" alt="File URL timeout" title="File URL timeout" style="border: 1px solid gray; zoom:80%;">
        *  Enter the File URL timeout duration in minutes.
            
            !!! note

                The default File URL timeout is 5 minutes. You can set it to anywhere between 5 minutes and 7 days (10080 minutes).
                   
 
3. Click **Save**. The Input variable is displayed in the list on the **Manage Input & Output** dialog.

**To manage output variables, follow these steps**:

1. Click the **Manage I/O** button on the top of the canvas of the Agents page.

    The **Manage Input & Output** dialog is displayed.

1. Click the **+ Add output variable** button under the **Output** tab.

    The **Enter output variable** dialog is displayed.

    <img src="../images/enter-output-variable.png" alt="Enter Output Variable" title="Enter Output Variable" style="border: 1px solid gray; zoom:80%;">

1. Enter a **Name(key)** to the input variable.
2. Select a data type from the **Type** drop-down list.
3. Click **Save**. The Output variable is displayed in the list on the **Manage Input & Output** dialog.

!!! note

    You can create multiple input as well as output variables based on your use case.

