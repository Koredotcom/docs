# Evaluation

This evaluation phase streamlines the Quality AI evaluation process to drive better customer experience where the QA manager sets up the evaluation criteria for users or agents. Each QA and contact center has different operation procedures based on logical or functional groupings.

For better handling of the evaluation criteria, this evaluation stage is divided into the following two sections:

* Evaluation Forms
* Evaluation Metrics

## Evaluation Forms

The Evaluation Forms are designed to check adherence to individual questions. They are a collection of metrics that let you score, audit, and interact (for Conversation Intelligence and Auto QA Scoring). Once these forms are created, you can assign them to the QM auditors as assessments for review compliance.

The Evaluation Form includes chosen metrics with customizable weights totaling 100%. The Evaluation Forms are configured and assigned to respective Channels and Queues for audit. Each queue in the Chat and Voice channels can host only one evaluation form.

You can access the Evaluation Forms by navigating to **Contact Center AI** > **Quality AI** > **Configure** > **Evaluation Forms**.  

<img src="../evaluation-criteria/evaluation-forms/images/add-new-evaluation-forms.png" alt="Evaluation Forms Page" title="Evaluation Forms Page" style="border: 1px solid gray; zoom:80%;">

The Evaluation Forms has the following options:

* **Name**: Shows the name of the Evaluation Form.
* **Description**: Shows a short description of the form.
* **Queues**: Shows the forms assigned and not assigned in the queue.
* **Channel**: Shows the assigned form channel mode: Voice or Chat interaction. Only one form is allowed for the audit. 
* **Created By**: Shows the form creator's name.
* **Pass Score**: Shows the pass score percentage for the selected assigned forms and channels. The pass score is the minimum score that the agents must achieve.
* **Status**: Allows you to enable or disable the scoring for the individual Evaluation Form.  
* **Search**: Provides a quick search option to view and update the Evaluation Forms by name only.

!!! note     
        
    To create and configure evaluation forms, the **Auto QA** setting must be enabled first.

### Add New Evaluation Form

You can access the Evaluation Metrics by navigating to **Contact Center AI** > **Quality AI** > **Configure** > **Evaluation Forms** > **New Evaluation Forms**.  
<img src="../evaluation-criteria/evaluation-forms/images/add-new-evaluation-form.png" alt="Add New Evaluation Form" title="Add New Evaluation Form" style="border: 1px solid gray; zoom:80%;">  

Steps to create a new Evaluation Form:  

1. Click the **+New Evaluation Form** button in the upper-right corner to configure the most commonly used evaluation form. The following screen appears, allowing you to add a new evaluation form details.    
<img src="../evaluation-criteria/evaluation-forms/images/add-new-evaluation-forms-settings.png" alt="New Evaluation Form" title="New Evaluation Form" style="border: 1px solid gray; zoom:80%;">   

!!! note     
        
    It is mandatory for the agents to attain the minimum pass score set by the Supervisor. If the pass score is not met for a given interaction, it will be evaluated as Fail.

The following table describes the Evaluation Forms details:

<table>
  <tr>
   <td><strong>Add New Evaluation Form</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Settings: </strong>This section allows you to<strong> </strong>configure the settings for the New Evaluation Form.
   </td>
  </tr>
  <tr>
   <td><strong>Name</strong>
   </td>
   <td>Enter the name<strong> </strong>for the new evaluation form.
   </td>
  </tr>
  <tr>
   <td><strong>Description</strong>
   </td>
   <td>Enter a short description for the form, which is optional.
   </td>
  </tr>
  <tr>
   <td><strong>Language</strong>
   </td>
   <td>Select a language from the drop-down list.
   <br>
   
<strong>Note</strong>: Evaluation Metrics available for selection is based on the form language selected. For example, if you choose English and Dutch, only metrics supported for both languages get displayed. If a metric is not available for a specific language, then it does not appear. 
   </td>
  </tr>
   <td><strong>Select Channel</strong>
   </td>
   <td>Select a Channel mode (Voice or Chat).
   </td>
  </tr>
  <tr>
   <td><strong>Define Pass Score</strong>
   </td>
   <td>Set the minimum pass score percentage for the agent.
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Evaluation Metrics: </strong>This section allows you to add the evaluation metrics that are already configured and can be assigned to Evaluation Forms for the queue.
   </td>
  </tr>
  <tr>
   <td><strong>Add Evaluation Metrics</strong>  
   </td>
   <td>It allows you to search and add evaluation metrics and weightage against them based on the metrics.  

For example, if there is more than one Evaluation Metric, the total percentage must be set to 100% for all the evaluation metrics based on their weightage.
<br>

<strong>Note:</strong> If the channel selected is Chat, only metrics relevant to the Chat channel will be displayed. Metrics related to Speech and Playbook metrics with playbook channels set as Voice will not be shown.
   </td>
  </tr>
  <tr>
   <td colspan="2" ><strong>Assignments: </strong>This section allows you to add the assignment queues for the respective Evaluation Forms.
   </td>
  </tr>
  <tr>
   <td><strong>Queues</strong>
   </td>
   <td>Allows you to search and add required assignment queues for the Evaluation Forms that you can access.
   <br>
<strong>Note</strong>: Each Queue can only have one Evaluation Form per channel.
   </td>
  </tr>
</table>

2. Click **Create** to **Add New Evaluation Form** to the queue for review.
<img src="../evaluation-criteria/evaluation-forms/images/add-forms-to-queue.png" alt="Edit Evaluation Form Settings" title="Edit Evaluation Form Settings" style="border: 1px solid gray; zoom:70%;">

3. In case, if you are changing the existing channel mode from Voice to Chat or vice-versa which is already added, then the following dialog box appears.  
      <img src="../evaluation-criteria/evaluation-forms/images/channel-update.png" alt="Channel Update Confirmation" title="Channel Update Confirmation" style="border: 1px solid gray; zoom:70%;">
    
    !!! Note

        Upon changing any of the existing Channel modes like Voice to Chat or vice versa, will delete the earlier existing speech-based metrics in the Evaluation Form, which has to be updated again across the remaining metrics along with weights. 

4. Click **Confirm** to update the Channel.

### Edit Evaluation Form

Steps to edit the existing Evaluation Forms:

1. Right-click to select any of the existing **Evaluation Form** (Name). The following screen appears to edit the required fields.  
<img src="../evaluation-criteria/evaluation-forms/images/edit-evaluation-form.png" alt="Edit Evaluation Form" title="Edit Evaluation Form" style="border: 1px solid gray; zoom:70%;">

2. Click **Edit** to update the Evaluation Form dialog box fields. The following dialog box appears to update the required fields.  
<img src="../evaluation-criteria/evaluation-forms/images/edit-evaluation-form_settings.png" alt="Edit Evaluation Form Settings" title="Edit Evaluation Form Settings" style="border: 1px solid gray; zoom:70%;">

3. Edit the required fields that you want to update.
4. Click **Update** to save the changes.