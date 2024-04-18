# Manage Input and Output

You can initiate a fresh agent flow and specify the inputs required to initialize the process. Within the starting node, essential variables necessary for the flow's execution are received from the front end through API requests. Correspondingly, the end node gathers outputs from the preceding nodes and transmits them for utilization by the front end as an API.

 Once the input and output variables have been defined, they become accessible within the context objects and can be utilized throughout the flow's progression.

**To manage input variables, follow these steps**:

1. Click the **Manage I/O** button on the top of the canvas of the Agents page.

    The **Manage Input & Output** dialog is displayed.

    <img src="../images/manage-input-output-variables.png" alt="Manage Input Output Variables" title="Manage Input Output Variables" style="border: 1px solid gray; zoom:80%;">

1. Click the **+ Add input variable** button under the **Input** tab.

    The **Enter input variable** dialog is displayed.

    <img src="../images/enter-input-variable.png" alt="Enter Input Variable" title="Enter Input Variable" style="border: 1px solid gray; zoom:80%;">

1. Enter a **Name(key)** to the input variable.
2. Select a data type from the **Type** drop-down list. If you want to make the data type mandatory, then move the **Mandatory** toggle button.
3. You can Enable the **Default value** toggle button to add a Default value for the input variable. You can set a default value for this input variable. If the value is not provided, then the flow automatically selects this default value.
4. Click **Save**. The Input variable is displayed in the list on the **Manage Input & Output** dialog.

**To manage output variables, follow these steps**:

1. Click the **Manage I/O** button on the top of the canvas of the Agents page.

    The **Manage Input & Output** dialog is displayed.

1. Click the **+ Add output variable** button under the **Output** tab.

    The **Enter Output variable** dialog is displayed.

    <img src="../images/enter-output-variable.png" alt="Enter Output Variable" title="Enter Output Variable" style="border: 1px solid gray; zoom:80%;">

1. Enter a **Name(key)** to the input variable.
2. Select a data type from the **Type** drop-down list.
3. Click **Save**. The Output variable is displayed in the list on the **Manage Input & Output** dialog.

!!! note

    You can create multiple output variables based on your use case.

