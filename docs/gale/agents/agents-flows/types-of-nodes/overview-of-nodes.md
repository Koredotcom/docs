# Overview of Nodes

In the flow builder, nodes serve as connector stages that, when positioned appropriately, enable you to execute complete end-to-end use cases. Each node functions as a fundamental building block for the agents, contributing to its overall functionality and structure.

Nodes contribute to constructing a framework that enhances comprehension, while transitions imbue this framework with logic. The synergy between nodes and transitions enables the development of agents capable of automating diverse tasks seamlessly, without compromising the user experience.

You can use the following types of nodes, based on your requirements:

* **Gen AI node**: This node contains the desired model for you. It serves as the core or one of the cores of your application's internal intelligence. For more information, see Gen AI node.
* **API node**: This node lets you make requests using SOAP or REST API calls. You can query or get information from an external system by defining a service request that includes configuring the APIs and passing the parameters. This data is necessary for the prompt or application to operate effectively. Additionally, this node features a processing function that enables you to manipulate the data to meet your specific requirements. For more information, see API node.
* **Function node**: This node allows you to define a script for processing any context variables or other variables that are used in building the experience flow. You can use a JavaScript or Python editor to develop the script. For more information, see Function node.
* **Condition node**: This node is used to create branches in a workflow, where different actions or paths are taken depending on whether certain conditions are met or not. They help control the flow of execution within a process or application. For more information, see Condition node.
* **End node**: This node allows you to define the message displayed to the user when the experience flow ends. This node allows you to map the outputs sent out of the flow or the agent. For more information, see End node.