# Evaluation Metrics

This phase is entirely based on individual questions. Based on the required criteria for evaluation, users can create Evaluation Metrics from the Evaluation Forms section of the Quality Management using different measurement types.

The users can access the Evaluation Metrics by going to **Contact Center AI** > **Quality Management** > **Configure** > **Evaluation Forms** > **Evaluation Metrics**.  
<img src="../images/eva-metrics.png" alt="Evaluation Metrics" title="Evaluation Metrics" style="border: 1px solid gray; zoom:70%;">

The Evaluation Metrics has the following options:

* **Name**: Shows the name of the Evaluation Metrics.
* **Metric Type**: Shows the Evaluation Metrics Type (Measurement Type) selected.
* **Evaluation Forms**: Shows the Evaluation Forms used for configuring and assigning the evaluation metrics to different channels and queues.
* **Edit**: Allows you to edit or update the existing Evaluation Metrics.
* **Delete**: Allows you to select and delete any Evaluation Metrics shown on the Evaluation Forms page.
* **Ascend**/**Descend Order**: Provides a quick ascending and descending arrow mark view option for all the existing and newly added Channels and Queues of Evaluation Metrics (Configure and Assign).
* **Search**: Provides a quick search option to view and update the Evaluation Metrics by name only.

## Add New Evaluation Metrics

The users can access the Evaluation Metrics by going to **Contact Center AI** > **Quality Management** > **Configure** > **Evaluation Metrics** > **New Evaluation Metrics**.  
<img src="../images/add-new-eva-metrics.png" alt="Add NEw Evaluation Metrics" title="Add New Evaluation Metrics" style="border: 1px solid gray; zoom:70%;">

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
   <img src="../images/adherence-type.png" alt="Metrics" title="Metrics" style="border: 1px solid gray; zoom:80%;">
   <br>
   <img src="../images/trigger.png" alt="Metrics" title="Metrics" style="border: 1px solid gray; zoom:80%;">
   </td>
   <td>Provides the following two types of adherences:

<ul>

<li><strong>Static</strong>: Evaluates agent adherence across all conversations where no conditional check-in is required.

    To get the agent's answers, you set up different acceptable utterances for a particular queue and then configure the extent of similarities expected against the set-up utterances. 
<ul>

<li><strong>Dynamic</strong>: Evaluates agent adherence only if the configured trigger is detected. Based on the evaluation trigger, the agent and customer option is selected.

    This allows the conditional check-in. It is a trigger-based detection, in which you set up a trigger either for a customer or an agent utterance and then configure the answers appropriate to that scenario.

    For example, Greetings and Etiquette use cases have a lower adherence Similarity, which is close to 60% (Yellow), but for Policy Privacy or Disclaimer, the adherence Similarity must be close to 100% (Green) because this is critical for the user to follow depending on the use cases.
<ul>

<li><strong>Trigger: </strong>Provides the following two options to select based on the trigger created by Agent Utterance or Customer Utterance for evaluation. You can add more than one Trigger utterance and Answers for each utterance and delete them if it is not required.  
<ul>

<li><strong>Customer Utterance</strong>: Select the Customer Utterance that triggers the adherence check. You can enter or select more than one utterance using generative AI Assistants that are similar utterances with the same meaning.
      
<ul>

<li><strong>Agent Utterance</strong>: Select the Agent Utterance if it is triggered by the agent. Enter the utterances using generative AI Assistants suggestions that have similar utterances with the same meaning.

You can add multiple utterances for the Customer and Agent and delete them.
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Answer</strong>
   <img src="../images/answers.png" alt="Answer" title="Answer" style="border: 1px solid gray; zoom:80%;">
   </td>
   <td>Provides the expected answers relevant to your question (a few different utterances) entered with the help of generative AI suggestions, which have similar utterances with the same meaning and reduce the set up time.
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
   <td><strong>Count Type </strong>
   <img src="../images/time-bound.png" alt="Time Bound" title="Time Bound" style="border: 1px solid gray; zoom:80%;">
   <br>
   <img src="../images/voice.png" alt="Voice" title="Voice" style="border: 1px solid gray; zoom:80%;">
   </td>
   <td>Provides the following two options based on the Adherence Type is selected:
<ul>

<li><strong>Entire Conversation</strong>: This allows you to check for adherence at different points of conversation. It does not matter where the agent wants to check adherence throughout the conversation.
<ul>

<li><strong>Time Bound</strong>: This allows you to check adherence within a certain time range of the interaction, either for a specific number of seconds or a number of messages for chat at the start or end of the conversation.
<ul>

<li><strong>Parameter:  </strong>In this field, select the section of the interaction that has to be evaluated for this metric.

        If you select the <strong>First Part of Conversation </strong>or the <strong>Last  Part of Conversation</strong>, then enter the following subsection details provided:  
<ul>
  
<li><strong>Voice</strong>: Enter the seconds from the start or end of the interaction within which this metric should be evaluated.  
<ul>
  
<li><strong>Chat</strong>: Enter the number of messages from the start or end of the interaction within which this metric should be evaluated.
</li>  
</ul>
</li>  
</ul>
</li>  
</ul>
</li>  
</ul>
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
   <td colspan="2" ><strong>By Speech: </strong><strong>Configures a metric based on speech attributes like dead air and speaking rate. </strong>
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
   <img src="../images/speech-type.png" alt="Speech Type" title="Speech Type" style="border: 1px solid gray; zoom:80%;">
   <br>
   <img src="../images/avg-speaking-rate.png" alt="Avg Speaking Rate" title="Avg Speaking Rate" style="border: 1px solid gray; zoom:80%;">
   </td>
   <td>Provides the following Speech Type options to select:
<ul>

<li><strong>Cross Talk</strong>: If the Speech Type is Cross Talk, enter the maximum acceptable Number of instances. If the number of instances exceeds the configured count, this configured metric will fail.
<ul>

<li><strong>Dead Air</strong>: Defines the period of silence during a contact center interaction when neither the customer nor the agent is interacting. For example, the minimum dead air time is 1 second, with a maximum limit of 300 seconds.

    In the <strong>No of Instances</strong> field, enter the maximum allowed dead air instances per interaction.
<ul>

<li><strong>Avg. Speaking Rate</strong>: This displays the average number of conversation sessions per day and comparison analysis for the selected period.
<ul>
 
<li>In the <strong>Words Per Minute (WPM)</strong> field, select the expected speaking rate; failure to adhere to this configured rate results in failure for this configured metric.
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
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
   <img src="../images/entire-conv.png" alt="Count Type" title="Count Type" style="border: 1px solid gray; zoom:80%;">
   </td>
   <td>Provides the following two options based on the Count Type selected.
<ul>

<li><strong>Entire Conversation</strong>: Allows you to check the adherence throughout the entire conversation.

<li><strong>Time Bound</strong>: Allows you to check adherence within a certain time range of the interaction.
<ul>

<li><strong>Parameter: </strong>In this field, select the section of the interaction that has to be evaluated for this metric.
<p>

        If you select the <strong>First Part of Conversation</strong> or the <strong>Last  Part of Conversation</strong>, then enter the following subsection details provided:  
<ul>
  
<li><strong>Voice</strong>: Enter the seconds from the start or end of the interaction within which this metric should get evaluated.  
<ul>
  
<li><strong>Chat</strong>: Enter the number of messages from the start or end of the interaction within which this metric should get evaluated.
</li>  
</ul>
</li>  
</ul>
</li>  
</ul>
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
  </tr>
  <tr>
   <td><strong>Adherence Type</strong>
   <img src="../images/name.png" alt="Adherence Type" title="Adherence Type" style="border: 1px solid gray; zoom:80%;">
   <br>
   <img src="../images/entire-playbook.png" alt="Entire Playbook" title="Entire Playbook" style="border: 1px solid gray; zoom:80%;">
   <br>
   <img src="../images/steps.png" alt="Steps" title="Steps" style="border: 1px solid gray; zoom:80%;">
   </td>
   <td>Provides the following two options to choose the Adherence Type:
<ul>

<li>Select<strong> Entire Playbook</strong> if you want to evaluate adherence across the entire playbook. 
<ul>

<li><strong>Avg. Speaking Rate</strong>: This displays the average number of conversation sessions per day and comparison analysis for the selected period.
<ul>
 
<li>In the <strong>Adherence Percentage</strong> field, enter the minimum expected adherence percentage to the playbook. If adherence falls below the configured percentage, this metric will fail.
<ul>

<li>Select<strong> Steps</strong> if you want to evaluate adherence to specific steps of the playbook.  
<ul>

<li>In the <strong>Stage</strong> field, select the stage under which the desired step for evaluation is configured.
<ul>

<li>In the <strong>Step </strong>field, select the desired step for adherence evaluation.
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
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