# Run the Flow

You can run a flow and test it to see how it works. Once you click the Run, a debug log opens and a context object is generated. Every node in the flow has a context temporary storage where you can view the context object at each node level.

The output shows the start, end, and elapsed time taken to run the flow, and if any unresolved issues are displayed.

**Steps to run the flow**:

1. On the top right corner of the navigation bar, click the **Run flow** icon.

    <img src="../images/run-the-flow.png" alt="Run the Flow" title="Run the Flow" style="border: 1px solid gray; zoom:80%;">

    The Run dialog opens with the Input, Flow log, and Output sections displayed.

1. On the top of the Run dialog, click the **Debug** icon to open the **Debug** log as shown in the following image.

    The debug log is opened and output results are started.

    <img src="../images/debug-icon.png" alt="Debug Icon" title="Debug Icon" style="border: 1px solid gray; zoom:80%;">

    You can view the following details:


    * The values that you provided in the flow.


    * The flow level log details.


    * The node level details for each flow initiation.


    * The info link for each node’s success or failure.


    * The metrics at each node such as Initiated on, Executed on, Total time taken, and Tokens (available only for AI node).


    * If the flow is successful, the copy icon is available to copy the output, and the overall run-time flow is displayed.


    * If there are any errors in the flow, an error message is displayed and the output key in the JSON format displayed will be empty, as shown in the image.

        <img src="../images/error-in-the-debug-report.png" alt="Error in the Debug Report" title="Error in the Debug Report" style="border: 1px solid gray; zoom:80%;">

    !!! note

        You can stop the flow at any point during the execution and restart it by clicking the **Run** icon again.
