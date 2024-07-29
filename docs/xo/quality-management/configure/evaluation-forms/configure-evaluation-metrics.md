# Evaluation Metrics

This phase is entirely based on individual questions .  It allows you to create custom evaluation criteria across different measurement types. You can create Evaluation Metrics in the Evaluation Forms section utilizing these different measurement types.

You can access the Evaluation Metrics by going to **Contact Center AI** > **Quality Management** > **Configure** > **Evaluation Forms** > **Evaluation Metrics**.  
<img src="../images/eva-metrics.png" alt="Evaluation Metrics" title="Evaluation Metrics" style="border: 1px solid gray; zoom:70%;">

The Evaluation Metrics has the following options:

* **Name**: Shows the name of the Evaluation Metrics.
* **Metric Type**: Shows the Evaluation Metrics Type (Measurement Type) selected.
* **Evaluation Forms**: Shows the Evaluation Forms used for configuring and assigning the evaluation metrics to different channels and queues.
* **Edit**: Allows you to edit or update the existing Evaluation Metrics.
* **Delete**: Allows you to select and delete any Evaluation Metrics shown on the Evaluation Forms page.
* **Search**: Provides a quick search option to view and update the Evaluation Metrics by name only.

## Add New Evaluation Metrics


You can access the Evaluation Metrics by going to **Contact Center AI** > **Quality Management** > **Configure** > **Evaluation Metrics** > **New Evaluation Metrics**.  

Steps to create New Evaluation Metrics:

1. Click the **New Evaluation Metric** button in the upper-right corner to configure the most commonly used evaluation metrics. The following screen appears, allowing you to select a type of evaluation metrics measurement.  
<img src="../images/mtric-pane.png" alt="Metric Measurement Type" title="Metric Measurement Type" style="border: 1px solid gray; zoom:70%;">

2. Select the type of Evaluation Metrics Measurement, such as **By Question**, **By Speech**, **By Playbook Adherence**, and **By Dialog Task**.

The following table describes the Evaluation Metrics Measurement Types:

<table>
  <tr>
   <td><strong>Evaluation Metrics Measurement Types</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>By Question: </strong>Configures the metric and expected responses based on a specific question.
   </td>
  </tr>
  <tr>
   <td><strong>Name</strong>
   </td>
   <td>Enter a name for the future reference of the metrics.
   </td>
  </tr>
  <tr>
   <td><strong>Question</strong>
   </td>
   <td>Provides reference to the supervisor about audit and interaction evaluation. You enter a question for which adherence check is done.
   </td>
  </tr>
  <tr>
   <td><strong>Adherence Type</strong>
   </td>
   <td>Provides the following two types of adherences:

<ul>

<li><strong>Static</strong>: Evaluates agent adherence across all conversations where no conditional check-in is required.

To get the agent's answers, you set up different acceptable utterances for a particular queue and then configure the extent of similarities expected against the set-up utterances.</li>

<li><strong>Dynamic</strong>: Evaluates agent adherence only if the configured trigger is detected. Based on the evaluation trigger, the agent and customer option is selected.

This allows the conditional check-in. It is a trigger-based detection, in which you set up a trigger either for a customer or an agent utterance and then configure the answers appropriate to that scenario.

For example, Greetings and Etiquette use cases have a lower adherence Similarity, which is close to 60% (Yellow), but for Policy Privacy or Disclaimer, the adherence Similarity must be close to 100% (Green) because this is critical for the user to follow depending on the use cases.


<li><strong>Trigger:</strong>Provides the following two options to select based on the trigger created by Agent Utterance or Customer Utterance for evaluation. You can add more than one Trigger utterance and Answers for each utterance and delete them if it is not required.</li>

<ul><li><strong>Customer Utterance</strong>: Select the Customer Utterance that triggers the adherence check. You can enter or select more than one utterance using generative AI Assistants that are similar utterances with the same meaning.</ul></li>

<ul><li><strong>Agent Utterance</strong>: Select the Agent Utterance if it is triggered by the agent. Enter the utterances using generative AI Assistants suggestions that have similar utterances with the same meaning. You can add multiple utterances for the Customer and Agent and delete them.</ul></li>
</td>
  </tr>
  <tr>
   <td><strong>Answer</strong>
   <td><p>Provides the expected answers relevant to your question (a few different utterances) entered with the help of generative AI suggestions, which have similar utterances with the same meaning and reduce the set up time. </p>
   
   In this, you can enter or select more than one expected answer using generative AI having different utterances matching your question. In addition, you have the option to delete the added answers. 
   
   If it is Static, then you need to define a similar percentage for the metric based on the defined use case and attribute.
<ul>

<li><strong>Similarity</strong>: You can set the Similarity percentage for the desired Evaluation metrics. <em>Whether it is Static or Dynamic, you can configure the expected Similarity threshold.</em>

For example, Greetings and Etiquette use cases have a lower adherence Similarity, which is close to 60%, but for Policy Privacy or Disclaimer, the adherence Similarity must be close to 100% because it is critical for the user to follow the adherence depending on the use cases.

</li>
</ul>
   </td>
  </tr>
  <tr>
  <td><strong>Agent Attribute (Optional)</strong>
   </td>
   <td>Provides an evaluation metric, which you can assign to only one agent attribute.
   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Evaluation Metrics Measurement Types</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>By Speech</strong>: Configures a metric based on speech attributes like dead air and speaking rate. 
   </td>
  </tr>
  <tr>
   <td><strong>Name</strong>
   </td>
   <td>Enter a name for the future reference of the metrics.
   </td>
  </tr>
  <tr>
   <td><strong>Speech Type</strong>
   </td>
   <td>Provides the following Speech Type options to select:
<ul>

<li><strong>Cross Talk</strong>: If the Speech Type is Cross Talk, enter the maximum acceptable Number of instances. If the number of instances exceeds the configured count, this configured metric will fail. By default, the Cross Talk duration is two seconds. But you can customize the configuration instances limit and the Cross Talk duration combination. 

<li><p>In the <strong>No of Instances</strong> field, enter the minimum allowed Cross Talk instances per second.</p></li>

<p><strong>Cross Talk Metric Qualification</strong>: If the no. of Cross Talk instances, based on the configured Cross Talk duration is less than the configured no. of instances for that Evaluation Form, the metric is qualified (an occurrence is evaluated as Cross Talk, which must be equal to or exceed the configured Cross Talk duration).</p>

<p>Similarly, if the number of Cross Talk instances exceeds the no. of instances limit, it is considered a failure for that metric, and the agent will be penalized.</p>


<li><strong>Dead Air</strong>: This defines the period of silence during a contact center interaction when neither the customer nor the agent is interacting. By default, the minimum Dead Air time is one second, with a maximum limit of 300 seconds. However, you can customize the configuration instances limit and the Dead Air duration combination. 

<p><strong>Dead Air Metric Qualification</strong>: If the number of dead air instances is lesser than the number of acceptable instances in the metric configuration, the interaction will qualify the metric and will fail against the dead air metric if the no.of instances exceeds the configured limit (an instance will only be accounted as instance of dead air if it exceeds the configured dead air duration).</p>

<ul><li>In the <strong> No of Instances</strong> field, enter the maximum allowed dead air instances per interaction.</ul></li>

<li><strong>Avg. Speaking Rate</strong>: This displays the average number of conversation sessions per day and comparison analysis for the selected period.</li>
 
<ul><li>In the <strong>Words Per Minute (WPM)</strong> field, select the expected speaking rate; failure to adhere to this configured rate results in failure for this configured metric.</ul></li>

   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Evaluation Metrics Measurement Types</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>By Dialog Task: </strong>Configures a metric based on adherence to execution of dialog tasks.
   </td>
  </tr>
  <tr>
   <td><strong>Name</strong>
   </td>
   <td>Enter a name for the future reference of the metrics.
   </td>
  </tr>
  <tr>
   <td><strong>Select Dialog Task</strong>
   </td>
   <td>Select a Dialog Task from the drop-down list given.
   </td>
  </tr>
  <tr>
   <td><strong>Count Type</strong>
   </td>
   <td>Provides the following two options based on the Count Type selected.
<ul>

<li><strong>Entire Conversation</strong>: Allows you to check the adherence throughout the entire conversation.

<li><strong>Time Bound</strong>: Allows you to check adherence within a certain time range of the interaction.
<ul>

<li><strong>Parameter: </strong>In this field, select the section of the interaction that has to be evaluated for this metric. 

If you select the <strong>First Part of Conversation</strong> or the <strong>Last  Part of Conversation</strong>, then enter the following subsection details provided:
  
<li><strong>Voice</strong>: Enter the seconds from the start or end of the interaction within which this metric should get evaluated.
  
<li><strong>Chat</strong>: Enter the number of messages from the start or end of the interaction within which this metric should get evaluated.
</li>  
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Agent Attribute (Optional)</strong>
   </td>
   <td>Provides an evaluation metric, which you can assign to only one agent attribute.
   </td>
  </tr>
</table>

<table>
  <tr>
   <td><strong>Evaluation Metrics Measurement Types</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>By Playbook Adherence: </strong>Configures a metric based on adherence to a playbook or a specific playbook step.
   </td>
  </tr>
  <tr>
   <td><strong>Name</strong>
   </td>
   <td>Enter a name for the future reference of the metrics.
   </td>
  </tr>
  <tr>
   <td><strong>Playbook Name</strong>
   </td>
   <td>Select a Playbook Name from the drop-down list, from which the metric should evaluate adherence.
   </td>
  <tr>
   <td><strong>Adherence Type</strong>
   </td><td>
   
<p>From the <strong> Adherence Type</strong>, you can choose either <strong> Entire Playbook</strong> or <strong> Steps</strong> to do the following:</p>

<ul><li><strong> Entire Playbook</strong>: To evaluate adherence across the entire playbook.</li>

<li><strong>Adherence Percentage</strong>: To enter the minimum expected adherence percentage to the playbook. If adherence falls below the configured percentage, this metric will fail.</li>

<p>From the <strong> Adherence Type</strong>, if you select <strong>Steps</strong>, then you will get the following options:</p>

<li><strong> Steps</strong>: To evaluate adherence to specific steps of the playbook.

<li><strong>Stage</strong>: To select the stage under which the desired step for evaluation is configured.

<li><strong>Step </strong>: To select the desired step for adherence evaluation.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Agent Attribute (Optional)</strong>
   </td>
   <td>Provides an evaluation metric, which you can assign to only one agent attribute.
   </td>
  </tr>
</table>

## Edit Evaluation Metrics

Steps to edit existing Evaluation Metrics:

1. Right-click to select any of the existing **Evaluation Metrics** (Name). The following screen appears, allowing you to select a type of evaluation metrics measurement.  
<img src="../images/edit-metric.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;">

2. Click **Edit** to update the Evaluation Metrics dialog box fields. The following dialog box appears to update the required fields.  
<img src="../images/edit-metric-fields.png" alt="Edit Metric Fields" title="Edit Metric Fields" style="border: 1px solid gray; zoom:60%;">

3. Edit the required fields that you want to update.

    !!! Note

        All the fields are editable except the **Evaluation Metrics Measurement Type** and **Agent Attribute (Optional)**.

4. Click **Update** to save the changes.