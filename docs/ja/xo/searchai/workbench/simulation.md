# Workbench Simulator

The Workbench comes with a built-in simulator that provides an interactive preview of how a stage affects a document and data manipulations before it’s indexed. This simulator serves as a valuable tool to test Workbench stages' behavior and fine-tune outputs according to requirements before deploying the application.

## Features

* The simulator allows you to test and verify the output of individual stages.
* If multiple stages are configured, the simulator enables testing the cumulative effect of all stages on the result.
* You can test changes on any type of data source, ensuring versatility in testing scenarios.

Click the **Simulate** button at any point to test the changes made to the source data due to the workbench stages. 

![Simulator](../images/simulate-option.png "Simulator")


The simulation is performed on a sample set of documents. The output of the simulator is in JSON format as shown below. 

![Simulator Output](../images/simulator-output.png "Simulator Output")


The simulator shows the changes made to the source data through various stages of Workbench in the order in which they are listed, starting from the first stage. When you click the Simulate option on a particular stage, the simulator shows the changes made through the workbench pipeline till that stage. For example, if there are three stages in the Workbench pipeline and you click the **Simulate** button while on the second stage, the simulation will show the cumulative effect of changes made through Stage one and Stage two. 

You can also **test individual stages** of the pipeline by disabling the other stages temporarily.
