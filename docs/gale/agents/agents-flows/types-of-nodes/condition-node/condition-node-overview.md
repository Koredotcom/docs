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