# Run the Flow

You can run a flow and test it to see how it works. Once you click the Run, a debug log opens and a context object is generated. Every node in the flow has a context temporary storage where you can view what is the context object at each node level.

The output shows the start, end, elapsed time taken to run the flow, and if any unresolved issues are displayed.

**To run the flow, follow these steps**:

1. Click the **Run** icon on the right side of the top navigation bar of your agents page.

    <img src="../images/run-the-flow.png" alt="Run the Flow" title="Run the Flow" style="border: 1px solid gray; zoom:80%;">

    The debug log is opened and output results are started.

1. Click the **Debug** icon on the top of the output dialog to open the **Debug** log as shown in the following image.

    <img src="../images/debug-icon.png" alt="Debug Icon" title="Debug Icon" style="border: 1px solid gray; zoom:80%;">

    The following are the details you can view:


    * All the values that you provided in the flow are displayed in this section.


    * The flow level log details are displayed.


    * For each flow initiation, end, and node level details will be displayed.


    * For each node’s success or failure, an info link is displayed. If you click the Info the details are displayed for your reference.


    * If you expand the node, metrics at each node such as Initiated on, Executed on, Total time taken, and Tokens (available only for AI node) are displayed.


    * In case a flow is successful, the copy icon is available to copy the output, and the overall run-time flow is displayed.


    * In case of any errors in the flow, an error message is displayed and the output key in the JSON format displayed is empty as shown in the image.

        <img src="../images/error-in-the-debug-report.png" alt="Error in the Debug Report" title="Error in the Debug Report" style="border: 1px solid gray; zoom:80%;">

!!! note

    You can stop the flow in the middle of a flow and restart the execution by clicking the **Run** icon again.
