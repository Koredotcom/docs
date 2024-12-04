# Run Agent Flows

You can run and test a flow to see how it works in real time. When you run a flow, it generates a context object and stores it temporarily at the node level, allowing you to monitor progress through the debug log.

The output includes key information such as the start and end times, the total time to run the flow, and any unresolved issues or errors that may have occurred during execution.


**Steps to run the flow**:

1. On the top right corner of the agent canvas, click the **Run flow** icon.

    <img src="../images/run-the-flow.png" alt="Run the Flow" title="Run the Flow" style="border: 1px solid gray; zoom:80%;">

    The Run dialog opens, displaying the Input, Flow log, and Output sections.

2. On the top of the Run dialog, click the **Debug** icon to open the **Debug** log.  
    The debug log starts showing the output results as the flow executes. For more information, see [Debug log overview](../perform-other-actions-on-the-flow-builder/debug-log-overview.md).


    <img src="../images/debug-icon.png" alt="Debug Icon" title="Debug Icon" style="border: 1px solid gray; zoom:80%;">

    
3. View flow success or failure:
    * Successful Flow: If the flow completes successfully, you can copy the output results using the Copy icon. The overall runtime flow, showing the total execution time, is also displayed for reference.
    * Flow Errors: If errors occur, an error message will be displayed. Additionally, the output key will appear empty, and the output will be shown in JSON format, indicating a failure within the flow.  

    <img src="../images/error-in-the-debug-report.png" alt="Error in the Debug Report" title="Error in the Debug Report" style="border: 1px solid gray; zoom:80%;">

!!! note

    You can stop the flow at any point during the execution and restart it by clicking the **Run flow** icon again.
