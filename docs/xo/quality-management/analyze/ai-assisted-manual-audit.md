# AI-Assisted Manual Audit

The AI-Assisted Manual Audit feature streamlines interaction evaluation by automatically categorizing conversations into three key areas: moments of adherence, moments of violation, and omissions. By highlighting these critical elements, evaluators can quickly assess the quality of interactions, significantly reducing review time and improving efficiency in the quality assurance process.

You can access AI-Assisted Manual Audit by going to **Contact Center AI** > **Quality Management** > **Analyze** > **Conversation Mining** > **Interactions**.  
<img src="../images/ai-assist-manual-audit-default.png" alt="AI Assited Manual Audit Page" title="AI Assited Manual Audit Page" style="border: 1px solid gray; zoom:80%;">

## Details

This section displays key information about the agent and the interaction:

* Conversation Details, such as Start Time and End Time, Agent name, Queue, and Customer Phone number.
* Audit Details, such as Auditor Name, Audit Date, Audit Score, and Kore Evaluation Score.
* Identifiers of the Agent, such as Call ID, Session ID, Channel User ID, Call Conversation ID, and Agent Conversation ID.  
<img src="../images/ai-assist-detail.png" alt="Details" title="Details" style="border: 1px solid gray; zoom:80%;">

## Violations

The Violations section highlights speech metric violations that occurred during the call. Examples include Cross Talk, Dead Air, and Speaking Rate Violation.

Each violation is displayed with a timestamp, allowing you to navigate directly to the point in the recording where the violation occurred. It enables quick identification and review of problematic areas in the interaction.


!!! Note

    Violations are applicable only for voice channel interactions, not chat.

<img src="../images/ai-assist-violation.png" alt="Violations" title="Violations" style="border: 1px solid gray; zoom:30%;">

## Omission

This section highlights instances where the agent failed to follow configured playbook steps or dialog tasks during the interaction. It specifically identifies:

* Omitted playbook steps (for playbook metrics)
* Omitted dialog tasks (for dialog metrics)

If no playbook or task-type metrics are configured for the interaction and evaluation form, the omissions section will not be displayed. It helps evaluators quickly identify critical steps or tasks that were missed during the customer interaction.

<img src="../images/ai-assist-omission.png" alt="Omission" title="Omission" style="border: 1px solid gray; zoom:80%;">

## Playbook

The Playbook section of the interaction audit screen enables evaluators to assess adherence to configured playbook metrics. It displays:
* Each playbook metric with entire Playbook configuration
* Configured minimum adherence for each metric
* Observed adherence within the interaction
* Missing steps (Playbook steps not completed during the interaction)
This comprehensive view is presented in a drop-down format, providing evaluators full visibility of playbook adherence. It helps identify gaps between expected and actual performance, facilitating targeted feedback and improvement.
  
<img src="../images/ai-assist-playbook.png" alt="Playbook" title="Playbook" style="border: 1px solid gray; zoom:50%;">

## Comments

The Comments section displays all comments created by an auditor during the evaluation process. It provides a comprehensive list of auditor feedback for the interaction.

Each comment entry is clickable. When a comment is selected, the system automatically highlights the corresponding question metric, providing context for the feedback.

Clicking a comment also navigates the user directly to the relevant part of the transcript and recording. It enables quick review and easy correlation between auditor comments and specific moments in the interaction, significantly enhancing the efficiency of the quality assurance process.

<img src="../images/ai-assist-comments.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:80%;">

## Search

This section provides a keyword search option across the entire transcript. You can quickly locate specific information or topics within the interaction by entering relevant keywords. It allows evaluators to efficiently find and assess particular points of interest in the conversation.
<img src="../images/ai-assist-search.png" alt="Search" title="Search" style="border: 1px solid gray; zoom:80%;">

## Audit

The right panel of this section, displays the By Question metrics configured for the evaluation form.

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

<img src="../images/ai-assist-audit.png" alt="Audit" title="Audit" style="border: 1px solid gray; zoom:80%;">

## Bookmarks

This section allows you to tag the agent interaction with different bookmarks. Bookmarks help to tag or group similar interactions together. Bookmarks are user-specific (a bookmark created by one user cannot be accessed by another) and must be enabled and created in the Settings section. Users can bookmark interactions from various places, including Interactions, Audit Allocations, and Settings, making it easy to add an interaction to a configured bookmark.
<img src="../images/ai-assist-bookmarks.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:80%;">

## Submit

By default, this option is disabled unless the interaction is assigned for audit through Audit Allocations. Once the Supervisor or Auditor clicks Submit, the Supervisor’s responses for the interaction’s evaluations are recorded, and the audit score is computed based on the Supervisor’s responses.

For more information, see [Audit Allocation](../analyze/conversation-mining.md#audit-allocations).  
<img src="../images/ai-assist-submit.png" alt="Submit" title="Submit" style="border: 1px solid gray; zoom:80%;">