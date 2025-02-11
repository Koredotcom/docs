# Conversation Mining - Interactions

The Conversation Mining Interaction feature allows you to drill-down to interactions that are of interest to you or interactions that have the most potential to improve enabling you to eliminate the guesswork from manual evaluations and focus your manual efforts solely on critical interactions.


You can access Conversation Mining by navigating to **Contact Center AI** > **Quality AI** > **Analyze** > **Conversation Mining**.  

<img src="../conversation-mining/images/conversation-mining-default-page.png" alt="Default Page" title="Default Page" style="border: 1px solid gray; zoom:80%;">

The Conversation Mining has the following two sections:

* Interactions
* Audit Allocations

!!! Note

    Interactions are populated a few seconds after call termination. 

## Interactions

Users can see scored interactions or evaluation information at a glance from Conversation Mining. Users can apply filters to focus on specific interactions or with high potential for improvement and save the filters for auditing purposes. Interactions visible on the conversation mining screen are limited to the user's assigned queues.

The Conversation Mining interaction listing streamlines identifying specific interactions, saving time on manual reviews and enhancing decision-making and operational efficiency. You can customize the page by adding metadata and columns, improving oversight quality.  

You can access Conversation Mining - Interactions by navigating to **Contact Center AI** > **Quality AI** > **Analyze** > **Conversation Mining** > **Interactions**. 
<img src="../conversation-mining/images/conversation-mining-interaction-default.png" alt="Interactions" title="Interactions" style="border: 1px solid gray; zoom:80%;">

The Conversation Mining Interactions has the following key Items:

* **Agents**: Shows the agent who last participated in the interaction and has terminated this call. By hovering over the agents, the users can view the tagged topics and tagged intent.

  * **Topic Tags**: Each interaction displays classified topics as tags. Hovering on this tag, shows all the relevant topics mentioned in that conversation.  
  <img src="../conversation-mining/images/conversation-interaction-topic-tags.png" alt="Topic Tags" title="Topic Tags" style="border: 1px solid gray; zoom:80%;">

  * **Intent Tags**: Each interaction shows classified intents as tags. Hovering on the intent tag, shows all the relevant intents mentioned in that conversation.  
  <img src="../conversation-mining/images/conversation-mining-interaction-intent-tags.png" alt="Interactions" title="Interactions" style="border: 1px solid gray; zoom:80%;">

* **Actions**: Allows users to assign the interaction to the desired bookmark for later reference.

    !!! Note

        Bookmarks have to be created first from settings. For more information, see [Settings](../configure/settings.md) for more information. 

* **Queues**: Shows the queue in which the interaction was terminated.

    !!!Note

        The evaluation form used to score the interaction always corresponds to the queue in which the interaction was terminated.

* **Kore Evaluation Score**: Shows the Kore Evaluation score (Auto QA Score) for the interaction based on the relevant evaluation form.
* **Supervisor Auditor Score**: Shows the Supervisor Audited score if the interaction has already been audited/manually evaluated.
* **Sentiment Score**: Shows the system generated sentiment score for the interaction based on the context of what was said in the interaction.
* **Moments**: Shows the Moments column counts for adherences, violations, and omissions related to the configured metrics of the interaction.  
<img src="../conversation-mining/images/conversation-mining-moments.png" alt="Moments" title="Moments" style="border: 1px solid gray; zoom:80%;">

When you hover over the listed **Moments**, the following metrics are displayed: 

* **Questions Adherences**: By Question Metrics that were met during the conversation. 
* **Violations**: Speech-based violations that occurred.
* **Omissions**: Metrics not adhered to; including playbook steps, dialog tasks, and by question metrics.

Clicking on an interaction opens the corresponding AI assisted manual audit page that allows the user to view the conversation history and the recording.    
<img src="../conversation-mining/images/conversation-mining-interaction-filters.png" alt="Interactions Filters Audit Page" title="Interactions Filters Audit Page" style="border: 1px solid gray; zoom:80%;">

Auditors can check the following near-miss scenarios by reviewing metrics on the audit screen:

* **Evaluation Marking**: If an agent's adherence is close to the required standard but not fully met, the system marks the evaluation as "No" and highlights similarities to fully adhered cases for easier comparison.

* **Click-Through Navigation**: The system provides clickable links (View) for near-miss agent utterances, similar to those for adhered cases, allowing for a more detailed review.

* **Near-Miss Criteria**: Near-miss criteria are based on predefined similarity thresholds. These thresholds help flag and navigate near-miss utterances close to adherence standards.

### Columns

Allows users to filter the following default fields:
Supervisor Auditor Score: This shows the Supervisor Audited score if the interaction has already been audited/manually evaluated.

* **Supervisor Auditor Score**: This shows the Supervisor Audited score if the interaction has already been audited/manually evaluated.

* **Sentiment Score**: This shows the system-generated sentiment score for the interaction based on the context of what the customer said in the interaction.

* **Start Time**: This shows a specified time format of the conversation in the interaction listing page (for example, 24th May, 2024, 1:17:10 PM). 

* **Duration**: This shows call duration (voice and chat), including talk time, hold time, and after-call work time. For example, 0h 6m 25s.

### Bookmarks

Allows users to assign the interaction to a bookmark and displays all the bookmarks that a given interaction has been assigned to.  
<img src="../conversation-mining/images/conversation-mining-interaction-bookmarks.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:80%;">

### Date Range Selection

Provides the option to select the date range to the conversation interactions. Default date range selected is always the last 7 days.  
<img src="../conversation-mining/images/conversation-mining-interaction-date-range.png" alt="Date Range Selection" title="Date Range Selection" style="border: 1px solid gray; zoom:80%;">

#### Chat History

This shows all the conversation history when you click any of the agent interactions.  
<img src="../conversation-mining/images/conversation-mining-interaction-chat-hist.png" alt="Chat History" title="Chat History" style="border: 1px solid gray; zoom:80%;">

### Filters

This provides the Filter options to filter the information based on your requirements.

Clicking any interaction will navigate you to the AI Assisted manual audit screen where you can review and evaluate the interaction.

!!! Note

    If you click any interaction that has not been assigned to you for audit, you will not be able to submit the evaluation.

### Add New Filter

This new filter interaction lets you to focus on those areas of interest or with high potential for improvement, which allows users to save them for audit assignments. This helps users to filter out the options and identify which particular interaction has gone wrong.

Steps to Add New Filter:

1. Click the **Filters** button on the upper-right corner. The following screen appears to add a new filter.  
<img src="../conversation-mining/images/conversation-mining-interaction-new-filters.png" alt="Add New Filter" title="Add New Filter" style="border: 1px solid gray; zoom:80%;">  
    
The New Filter provides the following three Filter categories of interest:    
<img src="../conversation-mining/images/conversation-mining-interaction-filters-category.png" alt="Filter Catgories" title="Filter Categories" style="border: 1px solid gray; zoom:80%;">

#### Filter by Efficiency

This provides an operational view of areas of interest where there is greater potential for improvement.

1. Select a type of conversation interaction **Channels**, such as **Chat** or **Voice**.    
<img src="../conversation-mining/images/channels.png" alt="Channels" title="Channels" style="border: 1px solid gray; zoom:80%;">

2. Choose the **Audit Status** if it is **Audited**, **Assigned**, or **Not Assigned**.     
<img src="../conversation-mining/images/audit-status.png" alt="Audit Status" title="Audit Status" style="border: 1px solid gray; zoom:80%;">

3. From the **Queues** list, add the Queue names.   
<img src="../conversation-mining/images/queues.png" alt="Queues" title="Queues" style="border: 1px solid gray; zoom:80%;">

4. From the **Agent Groups** list, add the agent group name based on the queue selected.  
<img src="../conversation-mining/images/agent-groups.png" alt="Agent Groups" title="Agent Groups" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        The user can filter the **Agents**, based on the interactions that are part of the queues and the user is part of.

5. From the **Agents** list, add the agent name based on the queue selected.  
<img src="../conversation-mining/images/agents.png" alt="Agents" title="Agents" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        The user can filter the **Agent Groups**, who are part of the queues, not based on agents in the agent group that are part of other queues.

6. Enable either of the following options:
    * **Average handling time**: Filters interactions based on the start and end of handling time range of interaction.    
    <img src="../conversation-mining/images/handling-time.png" alt="Average Handling Time" title="Average Handling Time" style="border: 1px solid gray; zoom:80%;">

    * **Filter by deviation from AHT**: Filters interactions by % deviation from the average handling time across all interactions for the respective date range and the interactions that are going wrong.  
      <img src="../conversation-mining/images/deviation-from-aht.png" alt="Filter by deviation" title="Filter by deviation" style="border: 1px solid gray; zoom:80%;">  

    * Specify the **Deviation of** % number.  
    <img src="../conversation-mining/images/deviation-of.png" alt="Deviation of" title="Deviation of" style="border: 1px solid gray; zoom:80%;">

    * If **No. of Transfers** is selected, then specify the filters by the number of transfer that occurred within each interaction.  
        <img src="../conversation-mining/images/number-of-transfers.png" alt="No. of Transfers" title="No. of Transfers" style="border: 1px solid gray; zoom:80%;">

7. Click **Apply** to save the filter settings entered which will be stored as **Unsaved Filter** in the Dashboard.
    <img src="../conversation-mining/images/unsaved-filter.png" alt="Unsaved Filter" title="Unsaved Filter" style="border: 1px solid gray; zoom:80%;">

    If you do not intend to use this filter to assign an audit allocation, you can apply it without saving; however, you can assign audit allocation based on filters, and can save and name it accordingly for reference during audit allocation.  
  
8. Click **Save & Apply** to save the new filter with a new name.  
    <img src="../conversation-mining/images/conversation-mining-interaction-save-apply.png" alt="Save and Apply" title="Save and Apply" style="border: 1px solid gray; zoom:80%;">  

9. Enable the **Save Filter** toggle to make the **Unsaved Filter** for default view in the Dashboard. All the newly created **Saved Filters** and **Unsaved Filters** will be tagged under the **Saved Filters** list.  
<img src="../conversation-mining/images/conversation-mining-interaction-saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;">  

    !!!Note

        The filtered interactions count allows you to verify the interaction count based on the filter selections you make, this count gets dynamically recalculated as and when you update filter selections. By default, the filtered interactions count will be zero until you make the first filter selection.

#### Filter by Experience

##### Avg. Waiting Time

This provides the following filter drop down range selection conditions in seconds:

* None
* Equals
* Greater than
* Greater than equal to
* Less than  
<img src="../conversation-mining/images/filter-by-experience-avg-waiting-time.png" alt="Average Waiting Time" title="Average Waiting Time" style="border: 1px solid gray; zoom:80%;">  

##### Sentiment Score

This indicates the positive sentiment score (higher) and negative sentiment score (lower) interactions.  
<img src="../conversation-mining/images/by-experience-sentiment-score.png" alt="Sentiment Score" title="Sentiment Score" style="border: 1px solid gray; zoom:80%;">  

Provides a slider bar to move the minimum and maximum range of interactions.

##### CSAT

This shows the distribution interactions across the score range that the customer has responded to the feedback service and drilled down accordingly.  
<img src="../conversation-mining/images/by-experience-csat-intent-topic-churn.png" alt="CSAT" title="CSAT" style="border: 1px solid gray; zoom:80%;">  

##### Intent

This indicates the underlying cause and customer intent that the conversation pertains to.

##### Topic

This indicates the subject that a conversation pertains to.

#### Churn Monitor

This provides the underlying cause and need that a conversation relates to. It indicates the loss of customers over a specific period.

This has the following two options to churn the monitor:

##### Churn Risk
Provides the extent of customer churn in a given conversation. In this, the Supervisor can view the churn risk % for a given time period.

Note that the customer churn is calculated once per interaction. Customer churn is not to be calculated as a score.

##### Escalation
This detects the number of escalations raised to the Supervisor by a customer.

#### Filter by Behaviour

* **Metric Name**

This filter allows you to view interactions based on a specific evaluation metric, which the user can filter by selecting Pass or Fail options. The selected metric appears as a tag below the input field, which you can remove by clicking the cross button to hide the Metric Qualification field. When you access the Conversation Mining page through the Adherence Heatmap, the filter settings are automatically applied.  
<img src="../conversation-mining/images/metric-name.png" alt="Empathy Score" title="Empathy Score" style="border: 1px solid gray; zoom:80%;">

**Metric Qualification** 

This filter shows the Pass or Fail options based on any queues selected in the Metric Name filter. Only evaluation metrics associated with forms in those selected queues get displayed. The filter retrieves interactions where the selected metric is relevant and part of the corresponding queue's form.   
<img src="../conversation-mining/images/metric-qualification.png" alt="Empathy Score" title="Empathy Score" style="border: 1px solid gray; zoom:80%;">

**Empathy Score**

This measures the level of understanding and compassion shown by the agent towards the customer situation. Provides the extent of empathy like frustration or displeasure that a customer has shown (negative sentiment). A higher score indicates a more empathetic interaction.  
<img src="../conversation-mining/images/filter-by-behaviour-empathy.png" alt="Empathy Score" title="Empathy Score" style="border: 1px solid gray; zoom:80%;">

**Crutch Word Score**

This indicates the extent of filler words (for example, umm, uh, and so on) which is used by the agent. Higher score indicates the higher usage of crutch words.  
<img src="../conversation-mining/images/filter-by-behaviour-crutch-word.png" alt="Crutch Word Score" title="Crutch Word Score" style="border: 1px solid gray; zoom:80%;">

**Agent Playbook Adherence** 

This indicates the adherence percentage to the Agent AI playbook assigned to that interaction.  
<img src="../conversation-mining/images/filter-by-behaviour-agent-playbook.png" alt="Agent Playbook Adherence" title="Agent Playbook Adherence" style="border: 1px solid gray; zoom:80%;">

**Kore Evaluation Score** 

This indicates the automated QA score associated with an interaction based on the evaluation form assigned to an interactions’s queue.  
<img src="../conversation-mining/images/filter-by-behaviour-agent-kore-evaluation.png" alt="Kore Evaluation Score" title="Kore Evaluation Score" style="border: 1px solid gray; zoom:80%;">

Once you Save Filter, you will get the following filters options to:  

* **Copy**

    Allows the user to create another saved copy of the filter.

* **Mark as default**

    Allows the user to apply the newly created filter as a default filter whenever the call mining tab is opened.

* **Edit Filter**

    Allows the user to edit a saved filter.

* **Delete Filter**

    Allows the user to delete the saved filter.

    <img src="../conversation-mining/images/conversation-interaction-saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;">

