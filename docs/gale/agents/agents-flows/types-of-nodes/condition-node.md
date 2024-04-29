# Condition Node

This node is used to create branches in a workflow, where different actions or paths are taken depending on whether certain conditions are met or not. They help control the flow of execution within a process or application.

For example, if you are creating an app for a fitness industry you can create a flow using the conditions and then it could suggest different exercises based on whether someone is a beginner, intermediate, or advanced. For beginners, it might recommend simple workouts. Intermediate users might get suggestions for more varied workouts with basic equipment, and advanced users might receive high-intensity workouts tailored to their goals. This way, you can provide personalized fitness advice for everyone.


## Types of Conditions:

There are three types of available conditions:

* **If** – This condition is used to direct the flow on a specific path if specific criteria are met. The If condition lets you configure Entity, Context, and Value.

* **Else** – This condition allows you to set the node connection that will occur when no condition is met. The Else condition only allows you to configure the next node to connect to.

* **Else If** – This condition allows you to configure another set of criteria to be met by the flow when the criteria in the initial If condition are not met. The else if condition lets you configure Entity, Context, and Value.

For example, in our fitness industry example mentioned earlier in this article,

* The if statement checks if the user's fitness level is "beginner". If it is, it displays a suggestion for beginner-level exercises.
* The else if statement checks if the user's fitness level is "intermediate". If it is, it displays suggestions for intermediate-level exercises.
* Another else if statement checks if the user's fitness level is "advanced". If it is, it displays suggestions for advanced-level exercises.
* If the user enters a fitness level that doesn't match any of the specified options (i.e., neither "beginner", "intermediate", nor "advanced"), the else statement displays an error message indicating invalid input.

## Add a New Condition Node

**To add a Condition node, follow these steps**:

1. Open the required agent from the list of agents to create the flow.
2. Click **Agent flow** from the left navigation bar. The **Agent flow** page is displayed.
3. Click **Go to flow** to open the flow builder page.

    <img src="../images/go-to-flow-canvas.png" alt="Go to Flow Canvas" title="Go to Flow Canvas" style="border: 1px solid gray; zoom:80%;">

    The Agents Flow canvas is displayed, and you can start creating a new flow.

1. You can add a new node in 2 ways:

    * Click the down arrow corresponding to the node from the **Assets** section from the left navigation bar of the **Agents** page and then click **+New Condition**.

        Or

    * Click **Condition** from the bottom bar of the **Agents** page.

    <img src="../images/add-a-new-condition-node.png" alt="Add a New Condition Node" title="Add a New Condition Node" style="border: 1px solid gray; zoom:80%;">

The Condition node is created on the canvas and you can now define the node's properties by clicking on the node. You can drag and move a node to any location on the canvas.

!!! note

    The start node is displayed by default on the flow builder.

## Configure the Condition Node

This node helps you to trigger path flows based on the conditions you set.

**To configure the Condition node, follow these steps**:

1. Add a Condition node to the canvas.
2. Click the **Condition node** and the general properties dialog for the node is displayed on the right side of the page as shown in the following image.

    <img src="../images/configure-the-condition-node.png" alt="Configure the Condition Node" title="Configure the Condition Node" style="border: 1px solid gray; zoom:80%;">
    
1. Enter a **Custom Name** for the node.
2. Define the IF/ELSE-IF/ELSE conditions using context variables and the AND/OR operator.
3. In the **IF section** select the following:

    * Select the **Context** object you want to use. For example, {{context.steps.Start0001.xxxxxx}}.
 
    * Select an **Operator** from the drop-down list such as, exists, does not exist, equal to, greater than or equal to, less than or equal to, not equal to, greater than, less than, does not contain, and contains.

    * Enter a value in the **Value** field.

        <img src="../images/if-condition.png" alt="If Condition" title="If Condition" style="border: 1px solid gray; zoom:80%;">


    * In the **Then go to** dropdown, choose the node to connect to if the condition is met.

    * You can add an AND or an OR logical operator and click the corresponding button within the Context condition criterion. And / OR parameters work as follows:


        * **AND** – When using AND it means that you want both or all criteria to be met.


        * **OR** – When using OR it means that you want the condition to meet either one or another of the set criteria.

        <img src="../images/and-or-logic-in -if-condition.png" alt="And or Logic in If Condition" title="And or Logic in If Condition" style="border: 1px solid gray; zoom:80%;">

        !!! note

            You can add multiple AND/OR criteria by clicking +AND or +OR. If you start with AND condition then you can only add AND similarly if you add OR condition, then you can add only OR. You cannot add both in the same node. You can delete an existing AND/OR criterion by clicking the “-” sign on its left.


1. In the **Else section**, select the node you want to trigger if the If condition fails.

    <img src="../images/else-select-node-in-condition-node.png" alt="Else Select Node in Condition Node" title="Else Select Node in Condition Node" style="border: 1px solid gray; zoom:80%;">