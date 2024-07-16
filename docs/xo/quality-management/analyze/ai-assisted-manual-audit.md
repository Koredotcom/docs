# AI-Assisted Manual Audit

This feature allows you to cut down on the time taken to evaluate interactions by breaking down the entire interaction into the three key areas of interest for an evaluator which are  moments of adherence, moments of violation, and the omissions in that call.

The users can access AI-Assisted Manual Audit by going to **Contact Center AI** > **Quality Management** > **Analyze** > **Conversation Mining** > **Interactions**.  
<img src="../images/ai-assist-manual-audit-default.png" alt="AI Assited Manual Audit Page" title="AI Assited Manual Audit Page" style="border: 1px solid gray; zoom:80%;">

## Details

Shows the following details of the agent:

* Conversation Details, such as Start Time and End Time, Agent name, Queue, and Customer Phone number.
* Audit Details, such as Auditor Name, Audit Date, Audit Score, and Kore Evaluation Score.
* Identifiers of the Agent, such as Call ID, Session ID, Channel User ID, Call Conversation ID, and Agent Conversation ID.  
<img src="../images/ai-assist-detail.png" alt="Details" title="Details" style="border: 1px solid gray; zoom:80%;">

## Violations

Shows the speech metrics related violations that took place within the call for example, dead air or cross talk For example, Crosstalk, Speaking Rate Violation, and Dead Air. The violations are displayed with timestamps to navigate the user to the point in the recording where the violation occurred.

!!! Note

    Violations are applicable only for voice channel interactions, not chat.

<img src="../images/ai-assist-violation.png" alt="Violations" title="Violations" style="border: 1px solid gray; zoom:80%;">

## Omission

Highlights omissions in playbook steps or dialog tasks when the agent has failed to follow for that interaction, specifically the configured playbook step (for playbook metrics) configured dialog task (for dialog metrics).  
<img src="../images/ai-assist-omission.png" alt="Omissions" title="Omissions" style="border: 1px solid gray; zoom:80%;">

## Comments

Displays all comments created by an auditor. Clicking on a comment highlights the corresponding question metric and takes the user to the relevant part of the transcript and recording.  
<img src="../images/ai-assist-comments.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:80%;">

## Search

Provides keyword search option across the entire transcript.  
<img src="../images/ai-assist-search.png" alt="Search" title="Search" style="border: 1px solid gray; zoom:80%;">

## Audit

The panel on the right displays the - By Question metrics that were configured for the evaluation form.  
<img src="../images/ai-assist-audit.png" alt="Audit" title="Audit" style="border: 1px solid gray; zoom:80%;">

The audit progress bar on the top right displays % completion of the audit based on which questions have responses and the total number of by question metrics part of the form.

Each card displays the configurations for that question metrics as follows:

* The Percentage on the top right of the card displays the configured similarity % for that by question metrics.
* The Weightage displayed in the bottom left signifies the weightage assigned to this metric for the evaluation form.
* The Kore Evaluation signifies the system evaluation for that metric.
    * In case of ‘Yes’, the Kore Evaluation badge will be against the ‘Yes’ response, and a percentage is displayed before the kore evaluation badge, which is the observed similarity for the agent utterance that has adhered to this metric.
    * In case of ‘No’, the Kore Evaluation badge will be against ‘No’ implying that the agent has not adhered to this metric.
    * In case of ‘NA’ the following applies:
        * If the Kore Evaluation badge is against ‘NA’, it implies that the trigger configured for this metric has not been detected within the interaction, and this metric was not taken into account for score calculation.
        * If the Kore Evaluation badge is against ‘NO’, it implies that the trigger has been detected and the agent has not adhered (meaning the agent was penalized for non compliance).
        * If the Kore Evaluation badge is against ‘Yes’, it implies that the trigger has been detected, and the agent has adhered to the configured metrics.
* Clicking on any card for which the system evaluation is ‘Yes’, will navigate the user to the point of the transcript, and timestamp of the recording where adherence was detected. This allows users to easily evaluate and select a response based on the user’s discretion.
* The Submit button will be enabled only if the given interaction is assigned to the user for audit
* The user has to respond to all - By Question metrics on the right panel before submitting in case the interaction is assigned to them for audit.

## Bookmarks

Allows you to tag the agent interaction with different bookmarks.  
<img src="../images/ai-assist-bookmarks.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:80%;">

## Submit

By default, this option remains in disable mode unless the interaction has been assigned for audit to the user through Audit Allocations. For more information, refer to [Audit Allocation](../analyze/conversation-mining.md#audit-allocations).  
<img src="../images/ai-assist-submit.png" alt="Submit" title="Submit" style="border: 1px solid gray; zoom:80%;">