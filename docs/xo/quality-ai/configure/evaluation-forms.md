# Evaluation Overview

The Evaluation phase in Quality AI enables QA Managers to create standardized assessments for Voice and Chat interactions. Evaluation forms align scoring with operational goals and promote consistent, compliant evaluations.

Each queue supports one Evaluation Form per channel. Manual Evaluation lets QA Managers mark specific metrics for manual scoring and exclude them from agent attributes and scorecard calculations.

## Key Features and Capabilities

* **Multi-language Support**: Delivers evaluations to different languages with relevant, localized metrics for accurate global team assessments.

* **Flexible Scoring Types**: Supports percentage-based scoring for simpler forms and points-based scoring for complex evaluations.

* **Advanced Scoring Options**: Enables negative scoring, fatal criteria, and pass-score thresholds to refine evaluations and highlight critical issues.

* **Channel-Specific Configuration**: Supports customization of evaluation settings for Voice and Chat channels.
Queue and Channel Assignment: Assigns evaluation forms to specific queues and channels.

* **AutoQA and Manual Audits**: Enables AutoQA scoring alongside manual audit-based assessments for comprehensive coverage.

## Evaluation Forms Structure

Quality AI divides evaluation configuration into two core components: 

* **Evaluation Forms**: Defines the overall scoring structure, scoring type, language, channel, pass threshold, and queue assignments.

* **Evaluation Metrics**: Defines the individual quality parameters used to measure agent performance.

### How It Works 

QA Managers create evaluation forms with weighted metrics totaling 100% to measure agent performance objectively. The system assigns these forms to specific queues and channels for auditing and AutoQA scoring.

This alignment ensures consistent audits, clear insights, and improved customer experience.


## Access Evaluation Forms

Navigate to **Quality AI** > **CONFIGURE** > **Evaluation Forms** to view and manage evaluation forms.    
<img src="../evaluation-criteria/evaluation-forms/images/evaluation-forms.png" alt="Evaluation Forms Tab" title="Evaluation Forms Tab" style="border: 1px solid gray; zoom:80%;">

## Evaluation Forms Elements 

The Evaluation Forms displays the following elements:

* **Name**: Shows the name of the evaluation form.

* **Description**: Shows a short description of the form.

* **Queues**: Shows the forms assigned and not assigned in the queue.

* **Channel**: Shows the assigned form channel mode (voice or chat interaction).  

* **Created By**: Shows the form creator's name.

* **Pass Score**: Shows the minimum score that an agent needs to pass for the specified assigned forms and channels. 

* **Status**: Enables or disables scoring for the individual Evaluation Form (You must enable the form to start scoring). 

* **Search**: Provides a quick search option to view and update the Evaluation Forms by name. 

    !!! Note

        Enable Auto QA in the Quality AI Settings before creating evaluation forms.

## Create a New Evaluation Form

Steps to create a new evaluation form:  

1. Select the **Evaluation Forms** tab.   

2. Select the **+ New Evaluation Forms** displayed in the upper-right corner.    
   <img src="../evaluation-criteria/evaluation-forms/images/new-eva-form-selection.png" alt="New Evaluation Forms" title="New Evaluation Forms" style="border: 1px solid gray; zoom:80%;">

### General Settings Configuration

This section configures the general settings for the New Evaluation Form. 

Steps to configure general settings:

1. Enter a **Name** and **Description** (optional).

3. Select a **Language** and a **Channel** type (**Voice** or **Chat**). The selected channel determines which metrics are available (Voice or Chat-specific).  

   * **Chat**: Displays only **Chat-relevant** metrics. Excludes speech-based and Voice-specific Playbook metrics.

   * **Voice**: Displays all applicable **Voice-related** metrics, including speech and Playbook metrics.    
    <img src="../evaluation-criteria/evaluation-forms/images/add-new-eva-forms2.png" alt="General Settings" title="General Settings" style="border: 1px solid gray; zoom:50%;">

5. Choose a **Scoring Type**: 

    **Percentage-Based Scoring**: Use the traditional weighted scoring, with metrics totaling 100%. Best for forms with fewer than 20 metrics.

    **Points-Based Scoring**: Use the flexible point allocation with no upper limit on positive points. Ideal for complex forms with 20+ metrics, avoiding fractional weights (for example, 2.5%) across numerous criteria.
 
6. Set the minimum **Pass Score** percentage for the agent.    

 6. Select **Next**.   
     <img src="../evaluation-criteria/evaluation-forms/images/add-new-eva-forms2.png" alt="General Settings Page2" title="General Settings Page2" style="border: 1px solid gray; zoom:50%;">

    
    !!! Note

        To view **Agent Scorecards** and **Agent Attributes**, you must enable the **Agent Scorecards** toggle in **Quality AI** >**Settings**. 
        
        * Supports multi-language selection for evaluation forms. 
        
        * Shows only **By‑Question** metrics that are configured for all selected languages. 
        
        * Applies an **AND** condition across selected languages, ensuring that only metrics supporting every configured language appear in the dropdown (for example, when **English** and **Dutch** are selected, only metrics available in both languages are shown).

### Assignments Configuration

This section lets you select available queues to assign them to the evaluation form.       

Steps to configure assignments:

1. From the search list, select a queue available for assignment.

2. Select the required queues, then select **Add Queues** to assign the assignment.
<img src="../evaluation-criteria/evaluation-forms/images/queue-selection.png" alt="Queues Selection" title="Queues Selection" style="border: 1px solid gray; zoom:60%;">
3. Add or remove the listed queue assignments if required.

**Queue Metrics by Source**

   * **CCAI**: Ingests conversation data from CCAI.

   * **Agent AI**: Processes interactions from Agent AI.    
      <img src="../evaluation-criteria/evaluation-forms/images/config-queues.png" alt="Add Queues" title="Add Queues" style="border: 1px solid gray; zoom:60%;">


**Form Assignments Rules**
   
* Each queue can have only one Evaluation Form per channel (Voice or Chat).

* The system automatically scores interactions when agents handle customer conversations.

* Calculates scores based on metric outcomes and configured weights.

* You must enable the form to start scoring.

    !!! Note

        You can assign only one evaluation form to each queue in the **Chat** and **Voice** channels.
   
    
### Evaluation Metrics Configuration

This section lets you add and create evaluation metrics for each attribute configured and assigned to evaluation forms for the queue, interactions, and agents.    
<img src="../evaluation-criteria/evaluation-forms/images/eva-settings-metrics.png" alt="Evaluation Metrics Configuration" title="Evaluation Metrics Configuration" style="border: 1px solid gray; zoom:70%;">

 Steps to configure evaluation metrics:

1. Using the **Search** option, select the required evaluation metrics from the available options.   
   <img src="../evaluation-criteria/evaluation-forms/images/forms-search-metrics.png" alt="Search Metrics" title="Search Metrics" style="border: 1px solid gray; zoom:80%;">

2. Choose the **Evaluation Metrics** to assign to the corresponding queues and sources:

* For **CCAI** and **Agent AI** queues, all metrics are available. 

* The system supports only **By Question** and **By Speech** metrics for **Quality AI Express** queues, whether used alone or with CCAI or Agent AI.

3. Select **Edit** to assign weight to each agent attribute based on importance.    
<img src="../evaluation-criteria/evaluation-forms/images/add-new-eva-forms-edit.png" alt="Edit Metrics" title="Edit Metrics" style="border: 1px solid gray; zoom:80%;">

**Metric Type Validations by Conversation Source**

* Enables evaluation forms to include queue assignments and validate metric types for the selected conversation source.

* Enables reordering of metrics after addition to control their display sequence in the **AI-Assisted Manual Audit** screen.

!!! Note

    The metrics list displays only metrics configured for all selected form languages or chosen channels.

4. Choose the **Correct Response** to identify the correct answer for validation. 

   * Enable validation of assigned weight based on the expected response:

      * If **Yes** is the correct response; use positive weight.
      
      * If **No** is the correct response; use zero or negative weight.    
      <img src="../evaluation-criteria/evaluation-forms/images/outcome-weight-response.png" alt="Correct Response" title="Correct Response" style="border: 1px solid gray; zoom:80%;">

5. Assign the **Weightage** percentage based on the correct response validation.

   * **Total Positive Weightage**: The sum of all positive metric weight. 

   * **Total Negative Weightage**: The sum of all negative metric weight. 

6. Indicates whether the agent’s response or behavior matches the expected standard defined by each metric. 

    * **Outcome**:

        * **Yes**: When the agent’s response (such as greeting a customer) matches the correct response, the system assigns positive weight to that metric. 

        * **No**: When the agent’s response (such as a rude response) doesn't match the correct response, the system assigns zero or negative weight accordingly.	

7. Toggle the **Fatal Error** if the metric is fatal and considered a critical failure in the response.    
   <img src="../evaluation-criteria/evaluation-forms/images/add-new-eva-forms-fatal-error.png" alt="Fatal Error" title="Fatal Error" style="border: 1px solid gray; zoom:80%;">
       
8. Select **Create** to finalize the form creation. 

## Advanced Configuration

### Scoring Logic     

The system evaluates forms using the weighted metrics assigned to agents. If the total score meets or exceeds the configured pass percentage, the form receives a Pass status. Otherwise, it receives a Fail status. The system calculates the pass score based on the weighted metrics and the priority level assigned to each form by the supervisor.

### Configuration Logic 

The form-level configuration logic determines how the system applies weight validation. It supports both training-based and generation-based adherence detection methods, and the system enforces validation automatically based on the designated Correct Response.

#### Logic Rules

**Positive Metrics** (**Correct Response** = **Yes**)

* **Yes**: Used for metrics where **Yes** represents successful adherence

* **Example**: Did the agent greet the customer?

* **Validation**: Only positive weights allowed for "Yes" responses

* **Scoring**: When agent greets customer = positive contribution to score

**Negative Metrics** (**Correct Response** = **No**)

* **No**: Used for metrics where **No** represents the desired behavior

* **Example**: Was the agent rude to the customer?

* **Validation**: Only positive weights allowed for **No** responses; zero or negative weights for **Yes** responses

* **Scoring**: When agent isn't rude = positive contribution to score

#### Correct Response

The Correct Response configuration specifies the expected outcome for each metric and determines how the system validates and applies weights. It supports both positive and negative metrics, enabling flexible scoring logic.

**Purpose**: The system uses Correct Response to validate adherence in training-based scenarios. This ensures scoring aligns with business goals, whether tracking desired or undesired behaviors.

### Weightage Validation Rules

* If **Correct Response** = **Yes**: You can only assign positive weights to **Yes** outcomes, zero or negative weights to **No** outcomes.
   
* If **Correct Response** = **No**: You can only assign positive weights to **No** outcomes, zero or negative weights to **Yes** outcomes.

#### Weightage Configuration

When editing evaluation metrics, assign weights using either percentage-based or points-based scoring. The scoring system, selected during form creation, determines how the system calculates metric importance.

**Positive Weightage Requirements**

* Total positive weights across all metrics must equal 100%.

* Individual metrics can have positive values up to 100%.

* Distributed based on metric importance to overall evaluation.

**Negative Weightage Guidelines**

* No upper limit validation for negative weightages in configuration.

* Individual metrics can exceed 100 in setup. 

* Negative weights can collectively exceed 100 across all metrics.

* Final conversation scores are automatically capped at 100 minimum.

#### Scoring Calculation

The system calculates conversation scores using weighted metrics. If a score goes less than 100, the system caps at 100 to keep scoring consistent.

## Error Handling and Logic Enforcement

### Fatal Error Configuration

Fatal Error configuration identifies metrics that are crucial to compliance or functional requirements. When enabled, these metrics can override the entire conversation score regardless of other metric performance.

#### Fatal Error Criteria 

The system marks a conversation as a fatal error if any of the following conditions occur:

* The agent fails to follow the configured process throughout the conversation.

* The agent behaves harshly or unprofessionally during the entire interaction.

* The agent skips any safety-critical or mandatory steps.

* The agent fails to meet a metric designated as a fatal error.

Example: Did the agent provide the mandatory disclaimer in the conversation?

If a required disclaimer is missing, the system marks the chosen metric as a fatal error (No) and flags the entire conversation as a fatal error. The conversation score becomes zero, even if all other evaluation metrics pass.

**Use Cases**: Compliance requirements, disclaimer delivery, critical functional requirements.

### Managing Existing Evaluation Forms

This section guides you through the process of updating (editing or deleting) an existing evaluation form.

#### Edit Existing Evaluation Forms

Steps to edit the existing evaluation forms:

1. Select a target evaluation form, and choose any existing forms.   
   <img src="../evaluation-criteria/evaluation-forms/images/update-evaluation-form.png" alt="Update Evaluation Form" title="Update Evaluation Form" style="border: 1px solid gray; zoom:80%;">

2. Select **Edit** to modify the selected form details.   
      <img src="../evaluation-criteria/evaluation-forms/images/edit-evaluation-form.png" alt="Edit Evaluation Form" title="Edit Evaluation Form" style="border: 1px solid gray; zoom:80%;">

3. Modify the required fields.   
   <img src="../evaluation-criteria/evaluation-forms/images/edit-eva-form-field-details.png" alt="Modify Evaluation Form" title="Modify Evaluation Form" style="border: 1px solid gray; zoom:70%;">

4. Select **Next** to update the required evaluation metrics fields.

5. Select **Next** to update the required assignments fields.

6. Select **Update** to save the modified fields.

#### Deleting Existing Evaluation Metrics

Steps to delete an evaluation metric:

1. Search and select evaluation metrics.    
   <img src="../evaluation-criteria/evaluation-forms/images/eva-metrics-delete.png" alt="Dead Air Warning" title="Dead Air Warning" style="border: 1px solid gray; zoom:50%;">   

2. Select **Delete** to display a warning dialog box prompting you to update the weights for the remaining metrics.     
   <img src="../evaluation-criteria/evaluation-forms/images/delete-eva-metric.png" alt="Delete Metrics" title="Delete Metrics" style="border: 1px solid gray; zoom:80%;">

3. Update the required metric weights as prompted.

4. Select **Next**.

    !!! Note

        Deleting a form results in the irreversible loss of all associated data.

## Warnings and Error Messages

### Language Configuration Warnings

This section describes the rules, warnings, and error messages related to adding or removing any languages in the evaluation form based on their metric and form level configurations.

#### Unsupported Language Error (Form-Level)

* If a form supports English and Dutch, and its associated metrics support only these languages, adding Hindi triggers a warning. This occurs because the child (By-Question) metrics don't support Hindi. Before adding a new language, make sure that all metrics in the form support it.

To resolve this, perform the following actions:

* Review the metric-level configuration for the new language (for example, Hindi). 

* Update all metrics used in the form to support the new language.

* Add the new language to each metric used in the form.

* After all metrics support the language, add the language to the form.    
   <img src="../evaluation-criteria/evaluation-forms/images/edit-lang-config.png" alt="Language Configuration Error" title="Language Configuration Error" style="border: 1px solid gray; zoom:80%;">

#### Language Limitation on Adding New Language 

* This warning appears when you use metrics in a form that don't support a language configured at the form level. For example, the form includes Hindi, but some metrics added or updated don't support Hindi.

To resolve this, do the following:

* **Option 1**: Configure the required language (for example, Hindi) for the selected metrics at the metric level.

* **Option 2**: Choose metrics that support the required language. 

### Channel Mode Change Warning

* When you switch to any existing or preconfigured channel modes between **Voice** and **Chat**, a warning message appears related to the specific channel's associated metrics.

* The system automatically deletes speech-based metrics when you switch the channel from **Voice** to **Chat** or **Chat to Voice**. 

    To resolve this, perform the following actions:

    * You must update the remaining metrics and adjust their corresponding weights to correct proper evaluation.
    
    * Select **Update** to save the evaluation form after you complete all changes.       
      <img src="../evaluation-criteria/evaluation-forms/images/channel-update-error.png" alt="Channel Update Error" title="Channel Update Error" style="border: 1px solid gray; zoom:70%;">   

#### Speech Metric Addition Limitation

Evaluation forms support only one speech metric per subtype: **Crosstalk**, **Dead Air**, and **Speaking Rate**. Selecting a duplicate subtype in the Evaluation Metrics checkbox triggers an error message. 

!!! Note

    * Only one metric of each type you can add at a time.  
        
    * You must remove or delete the existing metric of that type to proceed.

