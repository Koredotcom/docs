# AI-Assisted Manual Audit

The AI-Assisted Manual Audit feature provides supervisors and quality assurance teams with an intelligent platform to evaluate agent-customer interactions across voice and chat channels. This combines artificial intelligence capabilities with manual oversight to streamline performance assessments, ensure compliance with quality standards, and enable data-driven coaching for continuous improvement. It combines AI-powered analysis with manual oversight to streamline quality assessments and enable targeted coaching.

Key features of the AI-Assisted Audit system include:

* **Conversation Insights**: Quick summary of key moments and outcomes.

* **Multi-language Support**: Evaluate interactions in multiple languages.

* **Topics & Intents**: Highlights what the conversation was about and the customer’s purpose.

* **Emotion Analysis**: Track emotional shifts and customer satisfaction throughout conversations.

* **Automated Quality Assurance**: Evaluate interactions against predefined quality parameters.

* **Comprehensive Audit Logs**: Maintain detailed logs of all evaluation activities.

## Prerequisites

Before using AI-Assisted Manual Audit, ensure you have:

* **AutoQA Permission**: Required to update metric type settings under Quality AI General Settings.

* **QA Access**: Needed for self-assignment and auditing capabilities.

* **Role-Based Access**: Appropriate permissions are assigned based on your organizational role.

## AI-Assisted Manual Audit Access 

You can access AI-Assisted Manual Audit by navigating to **Quality AI** > **Analyze** > **Conversation Mining** > **Audit Allocations**.  
<img src="../ai-assist-manual-edit/images/audit-allocations.png/" alt="AI Assited Manual Audit Page" title="AI Assited Manual Audit Page" style="border: 1px solid gray; zoom:80%;">

## Interface overview

Supervisors can access the audit screen in the following ways:

* **From Conversation Mining**: You can view all their queue conversations.

* **From Audit Allocation**: You can view all the conversations specifically assigned for evaluation.

This Audit screen comprises three primary tabs:

* **Audit**: Main evaluation workspace with transcript and metrics.

* **Conversation Details**: Interaction metadata and audit information.

* **Logs**: Comprehensive audit trail and activity records.   
<img src="../ai-assist-manual-edit/images/audit-screen-general.png/" alt="Audit Screen" title="Audit Screen" style="border: 1px solid gray; zoom:80%;">

## Audit

The audit screen displays the selected metrics as tabs and allows input where applicable. Supervisor scores reflect these audits, and the agent views changes based on the audit status. The system also updates the audio playback visualizer to match the new design. 

The audit screen is divided into two main sections: 

* **Transcript**: Displays detailed agent conversation information, including the full dialogue from the interaction, enabling thorough review and verification. 

* **Audit Evaluation: Displays the configured metrics related to the audit, providing a high-level summary and insights derived from AI analysis.

    * **AI Overview**: Enables users with AutoQA permissions to select which metric types (for example, By Speech or By Playbook) to audit, while "By Question" and "By Value" remain always enabled. 

### Audit Evaluation

Provides the main evaluation interface with AI-driven components for efficient assessment across all metric types. This supports six distinct metric evaluation types.

#### By Question

The **By Question** section in the audit interface evaluates agent performance on specific inquiry types using configurable evaluation forms. Each criterion is scored individually, supported by AI-powered quality assurance, which ensures precision and consistency. This question-level approach supports targeted feedback and continuous process improvement. 

The By Question metrics features include the following:

* **Audit Progress Bar**

  * Located at the top right of the panel.

  * Shows completion percentage based on answered audit questions (completion status).

  * Reflects the total number of By Question metrics configured in the form.  
  <img src="../ai-assist-manual-edit/images/audit-progress-bar.png/" alt="Audit Progress Bar" title="Audit Progress Bar" style="border: 1px solid gray; zoom:80%;">

* **Metric Cards**

  * Display configurations for each question metric.

  * Show configured similarity percentage (top right).

  * Indicate assigned weightage (bottom left).

  * Present the Kore Evaluation result.

* **Evaluation Outcome**

  * **Yes**: Adhered.

  * **No**: Indicates non-adherence.

  * **N/A**: Placement varies based on trigger detection and agent adherence.

  * **Auto QA (Quality Assurance)**: Detected outcome of the system.

    * AI transcript analysis.

    * Similarity matching between expected vs. actual behavior.

    * Predefined rules and configured thresholds.

    * Automatically scores agent performance against audit questions across interactions.

* **AI Justification**

    When using GenAI for agent response detection in evaluations, display the following fields to justify AI-generated decisions:

    * Provide clear reasoning explaining the AI’s Yes/No outcome for agent answer detection.
    * Include evidence of trigger presence or absence for dynamic adherence types.
    * Highlight specific agent behaviors that influenced the metric outcome.
    * Show timestamps for all relevant conversation segments to support transparency.
* **View Chat Navigation**
    * Navigates to the transcript and recording where adherence is detected.

        

<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")


* **Submission**
    * The submit button is enabled only for interactions assigned to the user.
    * All By Question metrics must be answered before submission.	

**Conversation Filter**


    This feature allows supervisors or administrators to filter and sort compliance or adherence questions and their responses based on predefined metrics, facilitating detailed analysis and reporting.

**Adherence Status**



* **Adhered**: The response fully meets the compliance requirement.
* **Not Adhered**: The response does not meet the compliance requirement.
* **Not Applicable**: The question is not relevant to the specific context.	

**Adherence Functionality**



* **Filtering**: Questions are filtered based on adherence status to focus on specific areas of compliance.

        

<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")



How to audit and review?

**Self-Assignment for Audit**

QA users (auditors or supervisors) can self-assign unclaimed interactions for auditing during the conversation review process. Interactions that are already audited, completed, or assigned to another user are not eligible for self-assignment. Once a QA user self-assigns an interaction, it is labeled as “Self-Assigned”, and no other user can reassign it.

**Assign to me**

Steps to Self-Assign an Interaction for Audit:



1. Navigate to the **Conversation Mining** page, where interactions are listed.
2. Select any agent interactions that is not audited or assigned.
3. Click the **Assign to Me **button. A success message confirms the audit allocation.

    **Note**: Only users with QA permission can add their feedback comments at any point in the conversation, regardless of the evaluation metrics.

4. The interaction is marked as **Self-Assigned** on the **Audit Allocations** page and becomes unavailable for reassignment by other users.

    **Note:** Only unassigned and unaudited interactions are available for self-assignment.


**Message-Level Comments**

At the message level, users with QA functionality access permissions can view a comment icon when hovering over individual messages.

**Commenting on Interactions**



1. Upon clicking the comment icon, a **Comment **icon appears when hovering over any message in the **Transcript** section. 

    

<p id="gdcalert6" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image6.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert7">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image6.png "image_tooltip")


2. Click the Comment icon to add a comment title **(Name)** and **Comment **text (both are mandatory).

    

<p id="gdcalert7" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image7.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert8">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image7.png "image_tooltip")


3. Users can add or delete their submitted comments before submission.
4. Click **Send **to publish the added comment.
5. After submitting a comment, a **success message** appears.

    

<p id="gdcalert8" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image8.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert9">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image8.png "image_tooltip")



**Note:** Only users with QA permissions can add feedback comments.

Once submitted, message-level comments are displayed:



* Inline within the **Transcript**, linked to the corresponding message.
* In the **Comments **tab, with both the comment title and text, along with commenter details (visibility based on privacy settings).

**Agent Scored Interactions**

Based on the **Agent Access to Scored Interactions **settings, the agents can view the following interaction types:



* **Only manually audited interactions:** Shows only **Supervisor Audit Score **interactions with Date & Time and Queues.

<p id="gdcalert9" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image9.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert10">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image9.png "image_tooltip")

* **Manually audited and Auto QA scored interactions: **Shows **Kore Evaluation Score **(Auto QA), **Supervisor Audited Score **interactions, including Date & Time and Queues.

    

<p id="gdcalert10" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image10.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert11">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image10.png "image_tooltip")



Each row lists a terminated interaction (by an agent), with columns:



* Date & Time
* Queues
* Auto QA Score (if Auto QA and manually audited interactions are accessible)
* Audit Score
* **Hide Auditor Details for Agent**
    * When toggled on, auditor details are anonymized in the audit screen. 

        

<p id="gdcalert11" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image11.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert12">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image11.png "image_tooltip")


    * When toggled off, auditor details are visible in the audit screen.

<p id="gdcalert12" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image12.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert13">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image12.png "image_tooltip")


        **Note**: Only the supervisors can view the auditor details. The agents are restricted from viewing the auditor details.


**Click-Through Navigation for Comments**

All users, including agents without QA permissions, can:



* Click on a comment to navigate directly to the related message.
* The system centers the commented message in the **Transcript **window.
* Enables fast access to feedback from Supervisors and QA auditors.

    

<p id="gdcalert13" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image13.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert14">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image13.png "image_tooltip")



    Enables to view and navigate through message-level comments is available to all users, regardless of QA access permissions. This ensures that agents can benefit from comments added by QAs or Supervisors for learning and improvement.


**Review Near-Miss Scenarios (deterministic adherence)**

Near‑miss evaluations use predefined similarity thresholds to flag responses or utterances that closely resemble, but do not fully meet adherence standards. Auditors review these “near‑miss” cases: situations where an agent’s performance was almost at the expected level but did not fully meet.

**How Near-Miss Works:**



* Evaluated only in Deterministic Adherence mode.
* System uses predefined similarity thresholds to flag potential near-misses.
* When the **View **button is clicked:
    * The evaluation is marked **Yes **(highlighted in green).
    * The corresponding customer response is highlighted with the relevant context.

    

<p id="gdcalert14" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image14.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert15">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image14.png "image_tooltip")



The system selects **By Question** metrics by default and prevents you from deselecting them. This default metric evaluates agent behavior question-by-question.

**Note: **



* Auditors can only audit the selected types.
* Supervisor score calculation includes all enabled metric types.

**Audit Submission Process**

When the evaluation form includes all the required metrics in the **Audit **page, the **Submit** button is enabled to complete and submit the audit. 



1. If By Question/By Value/By AI Agent metrics are present, you must: \

    * Select appropriate responses for all required audit questions to enable submit button.
    * Ensure the adherence percentage totals 100%.
2. Click **Submit **to assign the Interactions to others or themselves.
3. Once the Interaction is assigned, the corresponding Interaction is marked as **Self-Assigned **on the **Audit Allocations** page**.**
    1. The audited Interactions become unavailable for reassignment by other users on the **Interactions **page. 
    2. Once an interaction is fully evaluated and submitted, you cannot re-audit.
    3. Only the Interactions that are not assigned to others or already audited are available.

    

<p id="gdcalert15" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image15.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert16">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image15.png "image_tooltip")



**Evaluation Marking (Yes/No/N/A):** 

Auditors can check and review the following near-miss scenarios on the audit screen:

The form is evaluated based on the agent (customer service representative) performance and actions taken during a customer conversation. 

“Yes” is marked, when:



* The agent clearly performed the required action.
* Evidence exists in the conversation/chat log.
* The requirement is fully met according to standards specified.
* Example: Agent said "Good morning, how can I help you today?" → YES for greeting.

“No” is marked, when:



* The agent failed to perform the required action.
* The action is taken but not adequate (close to but not fully meeting standard).
* Required information is not provided or incomplete.
* Example: Agent didn't ask for mobile number at all → NO.

“N/A” is marked, when:



* The situation didn't arise or isn’t applicable.
* Customer didn't request the specific information.
* The requirement couldn't be fulfilled due to circumstances.
* Example: When customer never asked about interest rates → N/A for "Did agent inform interest rate values?"


#### **Omission**

This section highlights instances where the agent failed to follow configured or compliance elements, such as playbook steps or dialog tasks, during the interaction. It specifically identifies:



* Omitted playbook steps (for playbook metrics)
* Omitted dialog tasks (for dialog metrics)
* Only shown if relevant metrics exist

If no playbook or task-type metrics are configured for the interaction and evaluation form, the omissions section is not displayed. It helps evaluators quickly identify critical steps or tasks that were missed during the customer interaction.


#### **Violations **

The Violations section highlights speech metric violations with timestamps that occurred during the call. Examples include Cross Talk, Dead Air, and Speaking Rate Violation.

Each violation is displayed with a timestamp, allowing you to navigate directly to the point in the recording where the violation occurred. It enables quick identification and review of problematic areas in the interaction. Controls the visibility and availability of speech analytics within manual audit evaluations.

**Note**: 



* Users can audit **Speech **and **Violations **metrics once the following **Settings **audit options are enabled.
    * Audit Speech Metrics
    * Audit Playbook Metrics
* If the audit **Speech **and **Violations **metrics are not enabled from the **Settings**, the metrics remain only for view mode.
* Violations apply only to Voice channel interactions, not Chat.

	

<p id="gdcalert16" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image16.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert17">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image16.png "image_tooltip")


**Common Violation Types:**



* **Cross Talk**: Instances where the agent and the customer speak simultaneously
* **Dead Air**: Periods of silence exceeding configured thresholds
* **Speaking Rate**: Speech too fast or too slow based on optimal communication standards


#### **By Speech**

You can only view the following metric types:



* Cross Talk
* Dead Air
* Speaking Rate

**Note: **Users can audit **Speech **metrics once the following **Settings **audit option is enabled.



    * Audit Speech Metrics

**Note**: Speech quality metrics are view-only if not enabled in the **Audit Settings**. Applicable only for **Voice** interactions. 


#### **By Dialog**

The Dialog section provides a comprehensive breakdown of conversation flow and structure analysis. This feature examines the natural progression of the interaction and identifies patterns in communication dynamics.

**Note:**



* Users can audit **Dialogs **metrics once the following **Settings **audit option is enabled.
    * **Manual Audit > Audit Playbook Metrics**
* If the audit **Speech **and **Dialogs **metrics are not enabled from the **Settings**, the metrics remain only for view mode.


#### **By Playbook**

The Playbook section of the interaction audit screen enables evaluators to assess adherence to configured playbook metrics. It displays:



* Each playbook metric with the **Entire Playbook** configuration
* Configured minimum adherence for each metric
* Observed adherence within the interaction
* Missing steps (Playbook steps not completed during the interaction)
* Displays expected vs. observed steps

This comprehensive view is presented in a dropdown format, providing evaluators full visibility of playbook adherence. It helps identify gaps between expected and actual performance, facilitating targeted feedback and improvement.



* The user can audit **Speech **and **Playbook **metrics once the following **Settings **audit options are enabled.
    * Audit Speech Metrics
    * Audit Playbook Metrics
* If the audit **Speech **and **Playbook **metrics are not enabled from the **Settings**, the metrics remain only for view mode.



<p id="gdcalert17" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image17.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert18">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image17.png "image_tooltip")



#### **By Value**

This section tracks value-related metrics and activities during interaction evaluations. It enables advanced insights into agent behavior beyond predefined scripts. Follow the same requirements as specified for the **By Question** metrics.

It also tracks AI sentiment and emotion using GenAI and leverages Agent AI models for:



* Sentiment analysis
* Identifying key emotional moments
* Predictive analytics 


##### **Agent Adherence**

Display the following fields:



* **Source System Value: **Value obtained from the source system
* **Agent Mentioned Value: **Value mentioned by the agent during the conversation
* **AI Justification**
* **GenAI-based adherence:** Combine business rule validation with tolerance range analysis.
* **Custom script adherence:** Include the agent-mentioned value and business rule justification.


#### **By Agent AI**

Delivers advanced sentiment analysis through GenAI features, enabling the **Post-Interaction Sentiment Analytics and Key Emotion Moments** option. This feature enhances post-interaction insights by analyzing agent conversations for deeper emotional and sentiment context. With the integration of **GenAI Copilot, **it leverages Quality AI with LLMs to generate detailed post-interaction sentiment analysis and highlight key emotional moments within conversations.

**Key Capabilities:**



* Real-time AI-driven analysis
* Sentiment and emotion detection
* Topic modeling and intent recognition
* Predictive analytics for improved foresight

    

<p id="gdcalert18" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image18.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert19">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image18.png "image_tooltip")




#### **Comments**

This section displays all feedback provided by auditors during the evaluation process. It provides a comprehensive list of auditor-submitted notes for each interaction. All the submitted comments appear both in the Conversation **Transcript **and in the **Comments **tab, with commenter details shown based on privacy settings (For example, Hide Auditor Details).

**Comment Types:**

Auditors or reviewers can provide two types of comments during the audit process:



* **Metric Comments**: These are added to specific evaluation criteria, such as By Question, By Value, or AI Agent metrics.

    

<p id="gdcalert19" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image19.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert20">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image19.png "image_tooltip")


* **Message Comments**: These are contextual comments added at the message level within the **Transcript **section of the **Audit **page. These comments support click-through navigation for quick review.

     

<p id="gdcalert20" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image20.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert21">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image20.png "image_tooltip")



**View Chat**

The **View Chat** functionality enhances the efficiency of the quality assurance process by allowing users to:



* Highlight the related question metric for added context.
* Instantly navigate to the relevant portion of the transcript and call recording.
* Correlate auditor feedback with specific moments in the interaction, enabling faster and more effective QA/auditor reviews.



<p id="gdcalert21" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image21.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert22">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image21.png "image_tooltip")


By default, this option is disabled unless the interaction is assigned for audit through Audit Allocations. Once the Supervisor or Auditor clicks Submit, the Supervisor’s responses for the interaction’s evaluations are recorded, and the audit score is computed based on the Supervisor’s responses. The Submit button is enabled when an Interaction is assigned, and all mandatory metrics are evaluated.

**Note**: Once an interaction is manually evaluated (all responses are selected and submitted) and finalized, you cannot re-audit the same interaction. 


## **Emotions**

Provides AI-powered conversation summaries with key insights, sentiment analysis, and performance indicators. It enables supervisors to quickly grasp interaction quality and outcomes through automated extraction of critical information, emotional patterns, and performance metrics.

This Overview pane includes the following tabs:



* **Overview**: A general summary of the call conversation with AI-generated insights.
* **By Question**: Aggregated analysis grouped by the specific questions asked.
* **Omissions**: Highlights important content or prompts that were missed or omitted.
* **Playbook**: Matches agent responses to the appropriate playbook or scripting guide.
* **By Value**: Segments call data by predefined value categories (for example, compliance, balance check).
* **By AI Agent**: Compares performance and outcomes across AI agents & models.
* **Comments**: Allows supervisors to add annotations, feedback, or corrective notes.

    

<p id="gdcalert22" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image22.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert23">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image22.png "image_tooltip")



This ranks the agent and customer emotions analysis with timeline visualization. Provides emotional states (anger, frustration, satisfaction) detected during a customer-agent interaction. 

Each emotion is presented with: 



* Separate emotion timelines for agent and customer.
* Each emotion’s percentage of total call duration.
* Emotions rank from highest to lowest by duration percentage.
* Emoticon indicators tooltips showing emotion details.


### **Transcript **

The Transcript section presents a unified timeline spanning the duration of both chat and voice interactions, visualizing both agents’ and customers' behavior events and their emotions. It supports real-time navigation to relevant audio with transcript details. 


#### **Decision Process**



1. **Auto QA**: AI/automated system reviews chat transcripts for keywords, phrases, patterns.
2. **Manual Review**: Auditors listen to calls or read chats for evaluation.
3. **View Chat:** Allows reviewers to check the actual conversation.
4. **AI Justification:** Provides reasoning for automated decisions.

**Audio Playback and Timeline Visualization**

An integrated playback system with visual timeline markers that enables synchronized audio listening and transcript reading (for analyzing call recordings or voice interactions), improving evaluation accuracy and efficiency by highlighting key moments. 

This has the following components:



* Volume Control
* Play (Backward, Forward, and Pause) Button
* Playback Speed Control 
* Timestamp (current position)
* Download

    

<p id="gdcalert23" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image23.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert24">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image23.png "image_tooltip")




#### **Timeline Visualization:**

Both chat and voice have the following three prime timelines of Adherence/Agent/Customer:



* Visual representation of the entire conversation
* Clickable timeline for navigation to specific moments
* Waveform intensity indicates speaking volume and activity


##### **AdherenceTimeline**


##### Provides following three distinct timeline tracking adherence for quick identification of policy compliance issues. 



* **Green**: Indicates successful adherence to guidelines.
* Yellow: Indicates 
* **Red**: Indicates policy violations or missed opportunities
* **Grey**: Indicates Trigger points for dynamic metrics.

    

<p id="gdcalert24" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image24.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert25">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image24.png "image_tooltip")




##### **Emotion Timeline**

The Emotion Timeline displays agent and customer emotions using emoticons. Hovering over an emoticon reveals the emotion name, and clicking it navigates to the corresponding message within the audio and transcript views.



* **Agent Emotions**: Tracks anger, fear, confusion, happiness, empathy, and patience levels. 

    

<p id="gdcalert25" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image25.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert26">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image25.png "image_tooltip")


* **Customer Emotions**: Monitors anger, fear, confusion, sadness, happiness, escalation, and churn risk.

    

<p id="gdcalert26" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image26.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert27">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image26.png "image_tooltip")


* **Interactive Navigation:** Click the corresponding emotions to jump to relevant conversation segments.

**Note:  **Administrators can configure (add or remove) moment types and adjust detection criteria to meet evolving quality and compliance needs. 


###### **Agent Top Emotions**

This provides a percentage breakdown of the emotional interactions of both the agent and the customer during the conversation. It lists only the top three emotions for each party. The report shows the percentage and ranking of emotions (for example, empathy, happiness, patience) detected in their voices, offering insights into their emotional states and communication styles.

<p id="gdcalert27" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image27.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert28">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image27.png "image_tooltip")



###### **Customer Top Emotions**

Shows the percentage and ranking of emotions detected in the customer's voice throughout the interaction..



<p id="gdcalert28" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image28.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert29">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image28.png "image_tooltip")


**Note**: To access and view the customer and agent-based emotion key moments in the **Conversation Overview** tab, you must enable the following GenAI features at the app level:



* Post-Interaction Sentiment Analytics and Key Emotion Moments
* Topic Modelling
* AI-generated emotions and sentiment insights (**Settings **> **Audit Settings)**

## 
    

<p id="gdcalert29" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image29.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert30">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image29.png "image_tooltip")



    Once you enable the Copilot setting from the **GenAI Features**, the following emotion and sentiment components are available to view: 

* Agent Emotion Timeline
* Customer Emotion Timeline
* Call phase level sentiment trend
* Sentiment pattern analysis
* Advanced Topic Identification


#### **Topics**

Displays a list of all topics identified in the conversation (for example, Customer Support Process). . This helps to assess conversation complexity and track topic trends. If no topic is detected, the widget shows blank (no message). 



<p id="gdcalert30" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image30.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert31">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image30.png "image_tooltip")



#### **Intents**

Displays a list of all intents identified in the conversation (for example, Request Assistance). This helps to understand and optimize customer needs. Each intent appears as an individual chip. If no intents are detected, the widget remains blank. By analyzing interactions (context, phrasing, and patterns).



<p id="gdcalert31" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image31.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert32">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image31.png "image_tooltip")



#### **Sentiment Analysis and Key Emotion Moments**


##### **Post-Interaction Phase-level Sentiment Trend**

This feature analyzes customer and agent sentiment across the entire interaction, providing phase-level tracking (opening, development, and closing) with clear pattern recognition. This detects key emotional moments and trends, classifies sentiment patterns (for example, success, risk, stable), and delivers resolution-aware scoring that emphasizes end-of-call sentiment. It generates actionable insights to support agent coaching and process improvement through emotional flow analysis.

It delivers phase-level trends, overall interaction scores (1–10 scale), and sentiment ratio analysis using weighted algorithms prioritizing final customer sentiment. The system identifies different sentiment patterns from negative-to-positive success to negative-to-negative risk, enabling proactive coaching and targeted intervention.



<p id="gdcalert32" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image32.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert33">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image32.png "image_tooltip")


This **Sentiment **is classified into the following three categories and is tracked at the message level across the call stages:



    * **Call Opening:** From agent transfer to issue identification: 
        * Customer describes support context or problem (support context).
        * Agent initiates product presentation (sales context).

            

<p id="gdcalert33" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image33.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert34">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image33.png "image_tooltip")


    * **Development:** From issue identification to resolution discussion.
        * Problem-solving and information gathering.
        * Solution presentation and explanation.

        If the call is not identified, what would be the case?


            

<p id="gdcalert34" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image34.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert35">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image34.png "image_tooltip")


    * **Call Closing:** From resolution discussion to call termination.
        * Solution confirmation and wrap-up.
        * Final customer satisfaction verification.

            

<p id="gdcalert35" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image35.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert36">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image35.png "image_tooltip")


    * **Pattern A**: *Negative *→ *Positive *
        * Customer starts frustrated but ends satisfied
        * Successful issue resolution, customer satisfaction recovery

            

<p id="gdcalert36" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image36.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert37">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image36.png "image_tooltip")


    * **Pattern B**: *Positive → Positive *
        * Customer stays happy throughout the conversation
        * Consistent positive experience throughout interaction

            

<p id="gdcalert37" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image37.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert38">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image37.png "image_tooltip")


    * **Pattern C**: *Neutral → Positive *
        * Customer conversation begins at the calm stage and ends in a positive mood
        * Effective positive experience creation

            

<p id="gdcalert38" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image38.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert39">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image38.png "image_tooltip")




###### **Risk Patterns**



    * **Pattern D**: *Positive → Negative *
        * The customer is happy at first, but becomes upset later
        * Service degradation requiring immediate attention
    * **Pattern E**: Neutral → Negative 
        * The customer call starts neutral and turns to negative at the end
        * Missed opportunities or service failures
    * **Pattern F**: Negative → Negative 
        * The customer remains dissatisfied throughout the conversation
        * Persistent dissatisfaction requiring escalation

        

<p id="gdcalert39" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image39.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert40">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image39.png "image_tooltip")




###### **Stable Patterns**



    * **Pattern G**: *Positive → Neutral *
        * The customer starts the conversation feeling positive, but their mood turns neutral by the end.
        * Adequate but not exceptional service delivery.

        

<p id="gdcalert40" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image40.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert41">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image40.png "image_tooltip")


    * **Pattern H**: *Negative → Neutral *
        * Customer's mood improves from negative to neutral
        * Partial improvement, opportunity for enhancement
    * **Pattern I**: *Neutral → Neutral *
        * Conversation remains steady and neutral, without significant emotional changes throughout.
        * Steady interaction without significant emotional impact

            

<p id="gdcalert41" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image41.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert42">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image41.png "image_tooltip")




###### **Overall Interaction-level Sentiment Score**

Shows an overall resolution-aware sentiment score, which is generated using a weighted aggregation of message-level sentiment across the call phases. 



    * Greater weight is assigned to the **closing phase**, ensuring the score reflects final customer sentiment. 
    * Output is a numerical score (for example, on a 1–10 scale, where 5 = Neutral, 7 = Positive).

Scoring Logic


###### **Resolution-Aware Scoring**

Uses a weighted scoring algorithm that prioritizes final customer sentiment to better predict satisfaction and retention.



* Prioritizes final customer sentiment to better predict satisfaction and retention.
* Applies exponential weighting to recent messages (higher impact).
* Generates numerical scores (1-10 scale: 5=Neutral, 7=Positive).
* Classifies final interaction outcome as Positive, Neutral, or Negative.
* Provides actionable feedback for coaching and process improvement.
* Reflects the overall emotional conclusion rather than the initial sentiment.
* Focuses on the closing phase of conversations to capture the customer’s final emotional state.


##### **Sentiment Ratio Analysis**

The **Conversation Insights** displays talk ratios, silence percentages, and speaking rates for voice interactions. It also shows sentiment distribution throughout the conversation, helping to identify whether the interaction improved or deteriorated over time. This allows for the quantification of emotional flow (in percentage) during a call.

For example, Positive 100%, Neutral 100%, and Negative 100%. 

Define the criteria of the conditions?



* **Positive **(Percentage of interaction with positive sentiment)

    

<p id="gdcalert42" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image42.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert43">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image42.png "image_tooltip")


* **Negative **(Percentage of interaction with negative sentiment)

    

<p id="gdcalert43" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image43.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert44">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image43.png "image_tooltip")


* **Neutral **(Percentage of interaction with neutral sentiment)

	

<p id="gdcalert44" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image44.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert45">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image44.png "image_tooltip")



#### **Conversation Insights (Interaction Metrics)**

This feature uses AI to give supervisors quick overviews of customer interactions by summarizing key events, outcomes, and important details without reviewing full transcripts or recordings. GenAI helps in identifying key issues, resolutions, and agent performance for quicker coaching and review. It also shows voice call metrics like talk ratios, silence time, and speaking rates to help assess engagement and call dynamics.



* **Customer Talk Ratio**: The percentage of total call duration during which the customer is speaking. 

    

<p id="gdcalert45" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image45.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert46">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image45.png "image_tooltip")


* **Agent Talk Ratio**: The percentage of total call duration during which the agent is speaking. 

    

<p id="gdcalert46" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image46.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert47">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image46.png "image_tooltip")


* **Silence**: Percentage of the call where neither party is speaking. 
    * Only includes periods of silence when both the agent and the customer are connected. 
    * Does not include the time when the customer is placed on hold.

        

<p id="gdcalert47" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image47.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert48">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image47.png "image_tooltip")


* **Speaking Rate**: Measures the agent’s speech rate (calculated in words per minute).
    * Agent’s speech speed based on voice interaction only
    * Calculated by the total number of spoken words divided by the time in minutes (Words Per Minute (WPM)

        

<p id="gdcalert48" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image48.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert49">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image48.png "image_tooltip")



        **Note**: This option appears only for voice interactions.



#### **Agent Speech Insights**

This provides the speech analysis data metrics. 



* **Speaking Rate**: Shows the speaking rate value (Words Per Minute).
* **Crutch Words: **Shows the value of filler words such as "um," "uh," or "like."
* **Empathy Score**: Shows the agent’s utterance value (whether the agent is empathetic or not).

    

<p id="gdcalert49" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image49.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert50">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image49.png "image_tooltip")




#### **Bookmarks**

This allows you to tag the agent interaction with different bookmarks for grouping and quick reference. Bookmarks help to tag or group similar interactions together. You can bookmark interactions from various places, including Interactions, Audit Allocations, and Settings, making it easy to add an interaction to a configured bookmark.

**Note**: 



* Make sure all the bookmarks are enabled and created in the **Settings**. You can only view the tagged bookmarks list. 
* Bookmarks are user-specific (you cannot access a bookmark created by another user).
* You can tag the Interactions for quick reference.

    

<p id="gdcalert50" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image50.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert51">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image50.png "image_tooltip")




#### **Search**

This section provides a keyword search option across the entire transcript. You can quickly locate specific information or topics within the interaction by entering relevant keywords, such as compliance issues, customer concerns, resolution confirmations, and training opportunities within interaction records to support diverse investigation and review needs. 



<p id="gdcalert51" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image51.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert52">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image51.png "image_tooltip")



## **Conversation Details**

This page shows how to view the conversation history to evaluate interactions:



* Conversation Details, such as Start Time and End Time, Agent name, Queue, and Customer Phone number. 
* Audit Details, such as Auditor Name, Audit Date, Audit Score, and Kore Evaluation Score.
* Identifiers of the Agent, such as Call ID, Session ID, Channel User ID, Call Conversation ID, and Agent Conversation ID.

Logs
This tab provides a comprehensive audit trail for tracking the interaction-evaluation process. It records request and response data for each GenAI-based adherence metric. This interface displays detailed activity logs of agent interactions, including system events, user actions, outcome status for each metric, and evaluation progress.














## Details

This section displays key information about the agent and the interaction:

* Conversation Details, such as Start Time and End Time, Agent name, Queue, and Customer Phone number.
* Audit Details, such as Auditor Name, Audit Date, Audit Score, and Kore Evaluation Score.
* Identifiers of the Agent, such as Call ID, Session ID, Channel User ID, Call Conversation ID, and Agent Conversation ID.   
<img src="../ai-assist-manual-edit/images/ai-assist-conv-detail.png" alt="Details" title="Details" style="border: 1px solid gray; zoom:80%;">

## Violations

This section highlights speech metric violations that occurred during the call. Examples include Cross Talk, Dead Air, and Speaking Rate Violation.

Each violation is displayed with a timestamp, allowing you to navigate directly to the point in the recording where the violation occurred. It enables quick identification and review of problematic areas in the interaction.  
<img src="../ai-assist-manual-edit/images/ai-assist-violation.png" alt="Violations" title="Violations" style="border: 1px solid gray; zoom:30%;">

!!! Note

    Violations are applicable only for voice channel interactions, not chat.

## Omission

This section highlights instances where the agent failed to follow configured playbook steps or dialog tasks during the interaction. It specifically identifies:

* Omitted playbook steps (for playbook metrics)
* Omitted dialog tasks (for dialog metrics)

If no playbook or task-type metrics are configured for the interaction and evaluation form, the omissions section will not be displayed. It helps evaluators quickly identify critical steps or tasks that were missed during the customer interaction.  
<img src="../ai-assist-manual-edit/images/ai-assist-omission.png" alt="Omission" title="Omission" style="border: 1px solid gray; zoom:80%;">

## Playbook

This section of the interaction audit screen enables evaluators to assess adherence to configured playbook metrics. It displays:

* Each playbook metric with entire Playbook configuration
* Configured minimum adherence for each metric
* Observed adherence within the interaction
* Missing steps (Playbook steps not completed during the interaction)

This comprehensive view is presented in a drop-down format, providing evaluators full visibility of playbook adherence. It helps identify gaps between expected and actual performance, facilitating targeted feedback and improvement.  
<img src="../ai-assist-manual-edit/images/ai-assist-playbook.png" alt="Playbook" title="Playbook" style="border: 1px solid gray; zoom:50%;">

## Comments

This section displays all comments created by an auditor during the evaluation process. It provides a comprehensive list of auditor feedback for the interaction.

Each comment entry is clickable. When a comment is selected, the system automatically highlights the corresponding question metric, providing context for the feedback.

Clicking a comment also navigates the user directly to the relevant part of the transcript and recording. It enables quick review and easy correlation between auditor comments and specific moments in the interaction, significantly enhancing the efficiency of the quality assurance process.  
<img src="../ai-assist-manual-edit/images/ai-assist-comments.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:80%;">

## Search

This section provides a keyword search option across the entire transcript. You can quickly locate specific information or topics within the interaction by entering relevant keywords. It allows evaluators to efficiently find and assess particular points of interest in the conversation.  
<img src="../ai-assist-manual-edit/images/ai-assist-search.png" alt="Search" title="Search" style="border: 1px solid gray; zoom:80%;">

## Audit

This section (right panel) displays the By Question metrics configured for the evaluation form.

Key features include:

**Audit Progress Bar**

   * Located at the top right.
   * Shows percentage completion based on answered questions.
   * Reflects total number of By Question metrics in the form.

**Metric Cards**

  * Display configurations for each question metric.
  * Show configured similarity percentage (top right).
  * Indicate assigned weightage (bottom left).
  * Present Kore Evaluation result.

**Kore Evaluation**

  * **Yes**: Badge appears next to 'Yes' response with observed similarity percentage.
  * **No**: Badge appears next to 'No', indicating non-adherence.
  * **NA**: Badge placement varies based on trigger detection and agent adherence.

**Navigation**

  * Clicking 'Yes' evaluation cards navigates to the transcript and recording where adherence was detected.

**Submission**

  * Submit button is enabled only for interactions assigned to the user.
  * All By Question metrics must be answered before submission.

This comprehensive audit panel facilitates efficient evaluation and ensures thorough review of each interaction.  
<img src="../ai-assist-manual-edit/images/ai-assist-audit.png" alt="Audit" title="Audit" style="border: 1px solid gray; zoom:80%;">

In the Chat History - Audit section, the evaluation form items determine performance levels through assigned scores, each with specific weights for the questions. The supervisor or auditor's role is to evaluate each question (using the options available in the evaluation form: **Yes/No/NA**). This process enables clear identification of strengths and areas for improvement, facilitating better coaching. Additionally, auditors can review the conversation for each question.

### Scoring Triggers

* **Adherence Detected (Yes)**: If the adherence percentage meets the threshold configured by the supervisor or admin, the evaluation form item is highlighted in green with a “Kore Evaluation” Badge with the configured percentage. This indicates that the agent meets the expected question and answer. If the scores marked as "Yes" are usually associated with positive indicators or compliance with standards to pass. Sometimes if the answer is not met, it leads to negative scoring based on the by question configuration (metric type).

  For example, 

  * **Yes**: if the threshold is 60% and the agent meets 60% or above, it will be marked as YES and the question badge indicates green color.
* **Adherence Not Detected (No)**: If the adherence percentage falls below the configured threshold, the evaluation form item is highlighted in red “Kore Evaluation” Badge, showing the scored percentage. If the percentage is not met the configured threshold, then it is considered as NO (non-adherence).
    * In some cases, the percentage may meet similar answers with a configured threshold which shows the percentage.
    * If it is not adhered to the configured threshold percentage.

  For example, 

  **No**: If the threshold is 60% and the agent meets below 60% or similar, it will be marked as NO, and the question badge indicates red color.

* **Trigger Not Detected (N/A)**: If the adherence percentage is not detected,  and dynamic by question, then it is considered as not applicable.

  For example, 

  **N/A**: If the threshold is 60% and the agent has not met the configured threshold, it will be marked as N/A, and the question badge indicates gray color.  
  <img src="../ai-assist-manual-edit/images/ai-assist-score-metrics.png" alt="Audit" title="Audit" style="border: 1px solid gray; zoom:80%;">

## Bookmarks

This section allows you to tag the agent interaction with different bookmarks. Bookmarks help to tag or group similar interactions together. Bookmarks are user-specific (a bookmark created by one user cannot be accessed by another) and must be enabled and created in the Settings section. Users can bookmark interactions from various places, including Interactions, Audit Allocations, and Settings, making it easy to add an interaction to a configured bookmark.  
<img src="../ai-assist-manual-edit/images/ai-assist-bookmarks.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:80%;">

## Submit

By default, this option is disabled unless the interaction is assigned for audit through Audit Allocations. Once the Supervisor or Auditor clicks **Submit**, the Supervisor’s responses for the interaction’s evaluations are recorded, and the audit score is computed based on the Supervisor’s responses.

For more information, see [Audit Allocation](../quality-ai/analyze/conversation-mining-audit-allocations.md).    
<img src="../ai-assist-manual-edit/images/ai-assist-submit.png" alt="Submit" title="Submit" style="border: 1px solid gray; zoom:80%;">