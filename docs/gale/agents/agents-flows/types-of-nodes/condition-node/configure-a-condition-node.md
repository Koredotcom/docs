# Configure the Condition Node

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
