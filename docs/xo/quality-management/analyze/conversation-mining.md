# Conversation Mining

The Conversation Mining feature allows you to drill down to interactions that are of interest to you or interactions that have the most potential to improve enabling you to eliminate the guesswork from manual evaluations and focus your manual efforts solely on critical interactions.

You can access Conversation Mining by going to **Contact Center AI** > **Quality Management** > **Analyze** > **Conversation Mining**.  
<img src="../images/conversation-mining-interaction-default.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:80%;">

The Conversation Mining has the following two sections:

* Interactions
* Audit Allocations

## Interactions

You can see scored interactions or evaluation information at a glance from Conversation Mining. Even you can apply filters to focus on specific interactions or with high potential for improvement, and save the filters for auditing purposes. Interactions visible on the conversation mining screen are limited to the user's assigned queues.  
<img src="../images/conversation-mining-interaction.png" alt="Interactions" title="Interactions" style="border: 1px solid gray; zoom:80%;">

The Conversation Mining Interactions has the following key Items:

* **Agents**: Shows the agent who last participated in the interaction and has terminated this call.
* **Actions**: Allows users to assign the interaction to the desired bookmark for later reference.

    !!! Note

        Bookmarks have to be created first from settings. For more information, see [Settings](../configure/settings.md).

* **Queues**: Shows the queue in which the interaction was terminated.

    !!!Note

        The evaluation form used to score the interaction always corresponds to the queue in which the interaction was terminated.

* **Kore Evaluation Score**: Shows the Kore Evaluation score (Auto QA Score) for the interaction based on the relevant evaluation form.
* **Supervisor Auditor Score**: Shows the Supervisor Audited score if the interaction has already been audited/manually evaluated.
* **Sentiment Score**: Shows the system generated sentiment score for the interaction based on the context of what was said in the interaction by the customer.

The Conversation Mining provides the following Interactions of interest with filters to drill down:  
<img src="../images/conversation-mining-interaction-filters.png" alt="Interactions Filters" title="Interactions Filters" style="border: 1px solid gray; zoom:80%;">

### Bookmarks

Allows users to assign the interaction to a bookmark and displays all the bookmarks that a given interaction has been assigned to.  
<img src="../images/conversation-mining-interaction-bookmarks.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:80%;">

### Date Range Selection

Provides the option to select the date range to the conversation interactions. Default date range selected is always the last 7 days.  
<img src="../images/conversation-mining-interaction-date-range.png" alt="Date Range Selection" title="Date Range Selection" style="border: 1px solid gray; zoom:80%;">

### Chat History

Shows the conversation history.  
<img src="../images/conversation-mining-interaction-chat-hist.png" alt="Chat History" title="Chat History" style="border: 1px solid gray; zoom:80%;">

## Filters

This provides the Filter options to filter the information based on your requirements.

Clicking any interaction will navigate you to the AI Assisted manual audit screen where you can review and evaluate the interaction.

!!! Note

    If you click any interaction that has not been assigned to you for audit, you will not be able to submit the evaluation.

### Add New Filter

This new filter interaction lets you to focus on those areas of interest or with high potential for improvement, which allows users to save them for audit assignments. This helps users to filter out the options and identify which particular interaction has gone wrong.

Steps to Add New Filter:

1. Click the **Filters** button on the upper-right corner. The following screen appears to add a new filter.  
<img src="../images/conversation-mining-interaction-new-filters.png" alt="Add New Filter" title="Add New Filter" style="border: 1px solid gray; zoom:80%;">

The New Filter provides the following three Filter categories of interest:  
<img src="../images/conversation-mining-interaction-filters-category.png" alt="Filter Catgories" title="Filter Categories" style="border: 1px solid gray; zoom:80%;">

#### Filter by Efficiency

This provides an operational view of areas of interest where there is greater potential for improvement.

1. Select a type of conversation interaction **Channels**, such as **Voice** or **Chat**.
2. Choose the **Audit Status** if it is **Audited**, **Assigned**, or **Not Assigned**.
3. From the **Queues** list, add the Queue names.
4. From the **Agent Groups** list, add the agent group name based on the queue selected.

    !!! Note

        The user can filter the** Agent,** based on the interactions that are part of the queues and the user is part of.

5. From the **Agents**list, add the agent name based on the queue selected.

    !!! Note

        The user can filter the **Agent Groups**, who are part of the queues, not based on agents in the agent group that are part of other queues.

6. Enable either of the following options:
    * **Average Handling Time (AHT)**: Filters interactions based on the start and end of handling time range of interaction.
    * **Filter by deviation from AHT**: Filters interactions by % deviation from the average handling time across all interactions for the respective date range and the interactions that are going wrong.  
      <img src="../images/conversation-mining-interaction-filters-by-efficiency.png" alt="Filterby Efficiency" title="Filter by Efficiency" style="border: 1px solid gray; zoom:80%;">  

    * Specify the **Deviation of** % number.
    * If **No. of Transfers** is selected, then specify the filters by the no. of transfer that occurred within each interaction.
7. Click **Apply** to save the filter settings entered which will be stored as **Unsaved Filter** in the Dashboard.
    * If you do not intend to use this filter to assign an audit allocation, you can apply without saving; however, in order to assign audit allocation based on filters, you would have to save and name it accordingly to reference it during audit allocation.
8. Click **Save & Apply** to save and apply the new filter with a new name as shown below.  
    <img src="../images/conversation-mining-interaction-save-apply.png" alt="Save and Apply" title="Save and Apply" style="border: 1px solid gray; zoom:80%;">  

9. By enabling the toggle of the **Save Filter**, the user can make the **Unsaved Filter** for default view in the Dashboard. All the newly created **Saved Filters** and **Unsaved Filters** will be tagged under the **Saved Filters** list as shown below.  
<img src="../images/conversation-mining-interaction-saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;">  

    !!!Note

        The filtered interactions count allows you to verify the interaction count based on the filter selections you make, this count gets dynamically recalculated as and when you update filter selections. By default, the filtered interactions count will be zero until you make the first filter selection.

#### Filter by Experience

**Avg. Waiting Time**

This provides the following filter drop down range selection conditions in seconds:

* None
* Equals
* Greater than
* Greater than equal to
* Less than  
<img src="../images/filter-by-experience-avg-waiting-time.png" alt="Average Waiting Time" title="Average Waiting Time" style="border: 1px solid gray; zoom:80%;">  

**Sentiment Score**

This indicates the positive sentiment score (higher) and negative sentiment score (lower) interactions.  
<img src="../images/by-experience-sentiment-score.png" alt="Sentiment Score" title="Sentiment Score" style="border: 1px solid gray; zoom:80%;">  

Provides a slider bar to move the minimum and maximum range of interactions.

**CSAT**

This shows the distribution interactions across the score range that the customer has responded to the feedback service and drilled down accordingly.  
<img src="../images/by-experience-csat-intent-topic-churn.png" alt="CSAT" title="CSAT" style="border: 1px solid gray; zoom:80%;">  

**Intent**

This indicates the underlying cause and customer intent that the conversation pertains to.

**Topic**

This indicates the subject that a conversation pertains to.

**Churn Monitor**

This provides the underlying cause and need that a conversation relates to. It indicates the loss of customers over a specific period.

This has the following two options to churn the monitor:

**Churn Risk:** Provides the extent of customer churn in a given conversation. In this, the Supervisor can view the churn risk % for a given time period.

Note that the customer churn is calculated once per interaction. Customer churn is not to be calculated as a score.

**Escalation**: This detects the number of escalations raised to the Supervisor by a customer.

#### Filter by Behavior

**Empathy Score**: This measures the level of understanding and compassion shown by the agent towards the customer situation. Provides the extent of empathy like frustration or displeasure that a customer has shown (negative sentiment). A higher score indicates a more empathetic interaction.  
<img src="../images/filter-by-behaviour-empathy.png" alt="Empathy Score" title="Empathy Score" style="border: 1px solid gray; zoom:80%;">

**Crutch Word Score**: This indicates the extent of filler words (for example, umm, uh, and so on) which is used by the agent. Higher score indicates the higher usage of crutch words.  
<img src="../images/filter-by-behaviour-crutch-word.png" alt="Crutch Word Score" title="Crutch Word Score" style="border: 1px solid gray; zoom:80%;">

**Agent Playbook Adherence**: This indicates the adherence percentage to the Agent AI playbook assigned to that interaction.  
<img src="../images/filter-by-behaviour-agent-playbook.png" alt="Agent Playbook Adherence" title="Agent Playbook Adherence" style="border: 1px solid gray; zoom:80%;">

**Kore Evaluation Score**: This indicates the automated QA score associated with an interaction based on the evaluation form assigned to an interactions’s queue.  
<img src="../images/filter-by-behaviour-agent-kore-evaluation.png" alt="Kore Evaluation Score" title="Kore Evaluation Score" style="border: 1px solid gray; zoom:80%;">

Once you Save Filter, you will get the following filters options to:  
<img src="../images/conversation-interaction-saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;">

* **Copy**

    Allows the user to create another saved copy of the filter.

* **Mark as default**

    Allows the user to apply the newly created filter as a default filter whenever the call mining tab is opened.

* **Edit Filter**

    Allows the user to edit a saved filter.

* **Delete Filter**

    Allows the user to delete the saved filter.

## Audit Allocations

This helps users to create and assign allocations to auditors for manual quality scoring.

The users can access the Audit Allocation by going to **Contact Center AI** > **Quality Management** > **Analyze** > **Conversation Mining** > **Audit Allocation**.  
<img src="../images/conversation-mining-new-audit-allocations.png" alt="New Audit Allocations" title="New Audit Allocations" style="border: 1px solid gray; zoom:80%;">

The Audit Allocations has the following options:

* **Agent**: Shows the name of the Auditor.
* **Actions**:  Allows auditors to assign the allocation to the desired bookmark for later reference.
* **Assigned Date**: Shows the assigned date to start the audit.
* **Name**: Shows the audit name.
* **Created By**: Shows the auditor name who has initiated.
* **Evaluation Form**: Shows the forms list that are assigned to the QM auditors as assessments for review compliance.
* **Kore Evaluation Score**: Shows the Kore Evaluation score.
* **Filters**: Provides the Filter options to search and add the filters.
* **New Audit Allocation**: Allows to create and assign the interactions for a new audit allocation. 

## Add New Audit Allocation

### Settings

Steps to Add New Audit Allocation in Settings:

1. Click the **New Audit Allocation** button shown on the upper-right corner. The following **Settings** screen appears to assign the interactions for a new audit allocation.  
    <img src="../images/conversation-mining-add-new-audit-allocations.png" alt="Add New Audit Allocations" title="Add New Audit Allocations" style="border: 1px solid gray; zoom:80%;">

2. Under the **Settings**, enter a **Name** for the audit that needs to be done.
3. Enter a short **Description** of the audit which is optional.
4. Select an **Evaluation Form** from the drop down list to evaluate for.
5. Select **Agents** to search an agent from the drop down list to assign specific agents to a Queue for audit allocation.
6. Select **Agents Groups** to search an agent group from the drop down list to assign the agents group to a Queue for audit allocation.
7. Click **Next**. The following **Allocation** screen appears.

### Allocation

Steps to Add New Audit Allocation in Allocation:

1. Select an **Allocation Type**, that is **Random** or **Custom**.
    1. Random allocation allows randomly sampled interactions to be assigned for audit.
    2. The Custom Allocation allows users to select saved filters from Conversation Mining to be assigned for audit allowing focused evaluations.
2. By default, the **Random** radio button is selected. If you choose **Random**, then select a **Date range**.
3. Select the **Channel to** enable Voice toggle button, and specify the % Interactions per agent  that you want to assign for audit. Based on the input, a random set of interactions is getting selected among the selected agents, and the selected queue (based on the form selection).
    3. The no. of interactions per agent count below the input box displays the average no. of interactions across the selected agents, which is being taken based on the % interactions per agent allocation user input.
    4. The total interactions count at the bottom of the slideout displays the total interactions, which is being selected based on random sampling and the user input across date range selection. The % interactions per agent input across channels and the count of the interactions will be assigned for this audit if needed, and this can be adjusted by altering the user input across the fields mentioned.
4. If you choose **Custom**, then the following screen appears to select a saved filter for **Custom Allocation** to assign those interactions for audits.  
    <img src="../images/add-new-audit-allocation.png" alt="Allocation" title="Allocation" style="border: 1px solid gray; zoom:70%;">

5. Select a required Filter option from the above search filter for audit.
    5. The total interactions count displays the total no. of interactions that is being assigned for this audit based on the evaluation form (queue), agent group selection and the filter selection
6. Click **Next**, the following **Assignment** screen appears.

### Assignment

Steps to Add New Audit Allocation in Assignment:  
<img src="../images/new-audit-allocat-assignment.png" alt="Assignment" title="Assignment" style="border: 1px solid gray; zoom:60%;">

1. Select the **Auditors** from the Search filter that you want to assign interactions for manual evaluation.  
    <img src="../images/audit-allocation-search-filter.png" alt="Audit Allocation Search Filter" title="Audit Allocation Search Filter" style="border: 1px solid gray; zoom:60%;">
2. Enter the % allocation of interactions that you want to allocate for each selected auditor.
    1. The interactions column displays the number of interactions that will be assigned for each auditor based on the allocation % input that allows you to adjust the input based on your preferences.
3. The total allocation percentage across all auditors must sum to 100% to enable the **Create** button.

    !!! Note

        Once the assignment configuration is completed, such that the total allocation percentage is 100%.

4. Click **Create** to assign the interactions for evaluation to the selected auditors
5. The interactions that users see listed in the audit **Allocation** tab are the interactions that have been assigned to them for audit.
    2. If this page is empty, it implies that they have no interactions assigned to them for evaluation.
6. Upon completion of evaluation for each interaction, the pertaining interaction will be removed from the audit allocation page.