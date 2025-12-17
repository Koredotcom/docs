# By Dialog Task Metric

The By Dialog Task metric helps to determine how consistently agents follow predefined scripts, workflows, or behavioral steps during customer interactions. These playbooks are designed to enforce best practices, ensure compliance, and drive high-quality outcomes in customer service and support environments. 

## Why Use Dialog Task Metric

By configuring and monitoring **Playbook Adherence** metrics, you can:

* Audit performance at the entire playbook level or drill down into specific steps.

* Set adherence thresholds to flag unacceptable variances.

* Improve both agent performance and customer experience continuously.

* Assess whether agents are following key process steps as designed.

* Identify training or coaching needs based on non-compliance behaviors.

* Improve consistency across interactions, regardless of the agent or communication channels.

* Ensure regulatory and procedural compliance, especially in highly regulated industries.

* Configure time-bound windows for evaluation to ensure timely and relevant feedback.

## Use Cases

* **Compliance Monitoring**: Evaluate whether agents are following mandatory process steps in regulated industries (for example, finance, telecom).

* **Onboarding and Escalation Flows**: Ensure new agents follow onboarding scripts or escalation workflows accurately.

* **Quality Assurance Reviews**: Use metrics to audit specific parts of the conversation, such as greetings, disclaimers, or closings.

* **Training Needs Analysis**: Identify which agents or teams frequently deviate from prescribed scripts, and offer targeted training.

* **Performance Benchmarking**: Compare adherence scores across agents, shifts, or teams to establish performance benchmarks.

* **Customer Experience Improvement**: Detect deviations that may negatively affect customer satisfaction and correct them proactively.

### Prerequisites

Before configuring or using Dialog Task metrics, ensure the following:

1. **Playbooks or Dialog Tasks Must Exist**

    You must have defined dialog tasks or playbooks for agents to adhere to. These form the basis of the evaluation.

2. **Access Rights to Configure Evaluation Metrics**
    
    You must have the appropriate permissions to access **Quality AI** > **Configure** > **Evaluation Metrics**.

3. **Evaluation Forms Should Be Defined Separately**
    
    If you plan to use metrics in evaluation forms, ensure the forms are configured beforehand.

4. **No Active Dependencies for Deletion**

    * Cannot delete any metrics if any of the metrics are actively linked to evaluation forms or attributes.

    * Reassign or remove dependencies before attempting to delete a metric.

5. Clear Understanding of Evaluation Criteria

    * Choose the appropriate Measurement Type (for example, **Entire Conversation** or **Time Bound**).

    * For time-bound analysis, define clear boundaries in seconds (**Voice**) or message counts (**Chat**).

## Configure By Dialog Task Metric

This configures a metric based on adherence to the execution of dialog tasks.

Configure the following settings:

1. Select an **Evaluation Metrics Measurement Type** from the dropdown.
<img src="../images/by-dialog-task-dropdown.png" alt="Edit Warning" title="Edit Warning" style="border: 1px solid gray; zoom:60%;"> 

2. Enter a descriptive **Name** for future reference of the metrics.
<img src="../images/add-new-metrics-by-dialog-task.png" alt="Edit Warning" title="Edit Warning" style="border: 1px solid gray; zoom:60%;">    
 
3. Select a **Dialog Agent** from the dropdown.  

4. Select a **Count Type** from the dropdown. This has the following two options.

    * **Entire Conversation**: This allows you to check the adherence throughout the entire conversation.

    * **Time Bound**: This allows you to check adherence within a certain time range of the interaction.

        * **Parameter**: Select the section of the interaction to evaluate for this metric. If you choose the **First Part of Conversation** or the **Last Part of Conversation**, enter the relevant subsection details provided.

        * **Voice**: Enter the number of seconds from the start or end of the interaction to evaluate this metric.

        * **Chat**: Enter the number of messages from the start or end of the interaction to evaluate this metric.

5. Click **Create** to save the new metric configuration.

## Managing By Dialog Task Metric

### Edit or Delete By Dialog Task Metric

Steps to edit any existing **By Dialog Task** metrics:

1. Right-click on a desired evaluation metric name **By Dialog Task** metrics category.       
<img src="../images/by-dialog-task-edit.png" alt="Edit Warning" title="Edit Warning" style="border: 1px solid gray; zoom:60%;">   

2. Choose an option:

    * Click **Edit** to modify the selected metric details.      
    <img src="../images/edit-dialog-task.png" alt="Edit Warning" title="Edit Warning" style="border: 1px solid gray; zoom:60%;">  

    * Click **Delete** to remove the selected metric.

3. Click **Update** to save the changes.

#### Deletion Warnings

This section describes the warnings and prerequisites you must address before deleting a metric.

* If the metric is used in any evaluation form, the system displays a warning message.

* Remove the metric from all associated evaluation forms before you delete it.

* If any attributes are linked to the metric, assign a different metric to those attributes before proceeding with deletion.

* The system allows you to delete the metric only after resolving all dependencies.  
<img src="../images/by-dialog-task-delete-warning.png" alt="Delete Warnings" title="Delete Warnings" style="border: 1px solid gray; zoom:70%;">
