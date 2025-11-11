# Conversation Mining - Interactions

The **Interactions** feature empowers supervisors to review and filter scored interactions in their assigned queues, enabling them to identify crucial conversations for improvement. It offers insights into conversation quality, agent performance, and the customer experience. Supervisors can save custom filters for audits, tailor the view through metadata and columns, apply keyword-based filtering (by speaker, include/exclude words, hide resolved or irrelevant cases), and leverage a timeline-based search with a jump-to-match display for efficient oversight.

## Accessing Interactions

Access **Interactions** by navigating to **Quality AI** > **ANALYZE** > **Conversation Mining** > **Interactions**.  
<img src="../conversation-mining/images/conversation-mining-interaction-default.png" alt="Interactions" title="Interactions" style="border: 1px solid gray; zoom:80%;">

!!! Note

    * Interactions may take a few seconds to appear after a call ends. 

    * If any section of the Agent Interactions dashboard elements displays an "NA" status, it indicates that the corresponding data is not yet available on the Audit Allocations page.

    * Intents, Topics, Keywords, and Emotions in Conversation Mining are always shown in the assigned default language, even if the conversation is in a different language. 

## Interactions Dashboard Elements

The **Interactions** dashboard includes the following elements:

* **Agents**: Shows the agent's name who last engaged in and ended the interaction. Hover over the agent’s name to view tagged topics and intents.

    * **Topic Tags**: Shows classified topics for each interaction as tags. Hover over the tags to see all relevant topics discussed in that conversation.  
  <img src="../conversation-mining/images/conversation-interaction-topic-tags.png" alt="Topic Tags" title="Topic Tags" style="border: 1px solid gray; zoom:80%;">

    * **Intent Tags**: Shows the classified intents of each interaction as tags. Hover over the Intent tags to see all relevant intents mentioned in that conversation.  
  <img src="../conversation-mining/images/conversation-mining-interaction-intent-tags.png" alt="Interactions" title="Interactions" style="border: 1px solid gray; zoom:80%;">

* **Actions**: Allows you to assign the interaction to a bookmark for later reference.  
<img src="../conversation-mining/images/actions-tags.png" alt="Moments" title="Moments" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        To view and tag the bookmarks for future reference, you must create the required bookmarks during the [Settings](../configure/quality-ai-general-settings.md) configuration. 

* **Processing Status**: Shows whether the process completion and metric adherence are achieved or not.

    * **Pass**: Displays a green icon when all processes have succeeded, and metric adherence is captured.

    * **Fail**: Displays a red icon when all processes have not succeeded, and metric adherence is not captured.   
<img src="../conversation-mining/images/processing-status.png" alt="Processing Status" title="Processing Status" style="border: 1px solid gray; zoom:80%;">

* **Queues**: Shows the queue where the system terminated during the interaction.

    !!!Note

        The evaluation form used to score the interaction corresponds to the queue where the system terminated the interaction. 

* **Keywords**: Shows detailed keyword-related information to prioritize conversations by relevance to your keyword filters, such as:

    * **Total Keyword Match Count**: Displays the total number of "Include" keyword matches per interaction. Example: If "refund" appears 1 time, the match count is 1.

    * **Match Type Indicator**: Shows whether the match is found using “AND” or “OR” logic with color coding.

        * **AND**: All keywords matched.
        * **OR**: Partial keyword match.
    
    * **Filter Integration**: The applied keyword filters on the Conversation Mining (Interactions) page are saved in sessions. The session preserves filters across pages and views; integrates with other filters using AND logic, and maintains active filter states throughout navigation.  
<img src="../conversation-mining/images/keywords-interactions.png" alt="Keywords Column" title="Keywords Column" style="border: 1px solid gray; zoom:80%;">

* **Kore Evaluation Score**: Displays the Auto QA score for an interaction based on the evaluation form completed by agents. Hover over the warning icon to see the agent’s API processing status (Pass, Fail, or Disabled). Click a conversation to open the Conversation Mining page for related Audit, Conversation Details, and Logs.

* **Sentiment Trend**: Displays the distribution of positive, negative, and neutral tones across a conversation. It tracks sentiment changes during the call, highlights resolution tone with a special scoring method, and summarizes overall sentiment. 

To access and review audit interactions:

* Navigate to [Audit Allocations](../analyze/conversation-mining-audit-allocations.md) to view detailed audit interactions.

* From the Interactions dashboard, click on any agent interaction to open the corresponding [AI-Assisted Manual Audit](../ai-assisted-manual-audit.md) page.

* On the audit page, you can view the full conversation history along with the audio recording.

## Interactions Filters 

Interaction filters help you to find specific conversations, review agent performance, and identify improvement opportunities. By using the following filters, auditors can dive deeper into conversations and assess agent adherence to quality standards. Filters update automatically based on the default language set.

## Columns

You can enable and filter the following fields using the Columns filter:

* **Supervisor Auditor Score**: Displays the Supervisor Audited score if the interaction has already been audited or evaluated manually.

* **Sentiment Score**: Displays the system-generated sentiment score for the interaction based on what the customer said.

* **Start Time**: Displays conversation's start time in a specified format in the Interaction listing page (for example, 24 May 2024, 1:17:10 PM). 

* **Duration**: Displays the call duration (voice and chat), including talk time, hold time, and after-call work time (for example, 0h 6m 25s).

* **Moments**: Shows the Moments column counts for adherences, violations, and omissions related to the configured metrics of the interaction.  

* **Emotions**: Displays customer or agent emotional states, ranked by interaction duration percentage from highest to lowest. Each customer shows a single emotional pattern for the entire interaction, such as Happy, Escalation, or Confusion.

* **Conversation ID**: Displays the user-defined identifier for custom tracking.

* **Custom Conversation ID**: Displays the unique identifier for each conversation, used as the primary key to track and reference specific interactions.   
<img src="../conversation-mining/images/conversation-mining-columns.png" alt="Columns" title="Columns" style="border: 1px solid gray; zoom:80%;">

When you hover over the listed **Moments**, the following metrics are displayed: 

* **Questions Adherences**: The By Question Metrics that are met during the conversation. 

* **Violation**: Speech-based violations that occurred.

* **Omission**: Metrics not adhered to, including Playbook steps, Dialog tasks, and By Question metrics.    
<img src="../conversation-mining/images/conversation-mining-moments.png" alt="Moments" title="Moments" style="border: 1px solid gray; zoom:80%;">

Double-clicking on any of the above interactions opens the corresponding AI-Assisted Manual Audit page, where you can view the conversation history and the recording. [Learn more](../ai-assisted-manual-audit.md){:target=”_blank”}.   

## Bookmarks

Allows you to assign interactions to bookmarks and view all bookmarks assigned to a specific interaction.  
<img src="../conversation-mining/images/conversation-mining-interaction-bookmarks.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:80%;">

## Date Range Selection

Provides the option to select the date range for the conversation interactions. The default date range selected is always the last 7 days.  

## Filters

This provides the filter options to filter the information based on your requirements.

!!! Note

    If you attempt to evaluate an interaction not assigned to you, you cannot submit the evaluation.

## Add New Filter

The new filter interaction enables you to focus on areas of interest or those with high potential for improvement, where you can save them for audit assignments. It helps you filter out options and identify which interactions went wrong.

Steps to Add New Filter:

1. Click the **Filters** dropdown shown in the upper-right corner to add a new filter.   
<img src="../conversation-mining/images/Filters.png" alt="Filter" title="Filter" style="border: 1px solid gray; zoom:80%;">  

Steps to Add New Filter:

1. Click the **Filters** dropdown shown in the upper-right corner to add a new filter. 

2. Click the **+ Add New Filter**.   
<img src="../conversation-mining/images/conversation-mining-interaction-new-filters.png" alt="Add New Filter" title="Add New Filter" style="border: 1px solid gray; zoom:80%;">  

3. Select a **Filter By** category.   
<img src="../conversation-mining/images/conv-mining-interactions-new-filter.png" alt="Filter By" title="Filter By" style="border: 1px solid gray; zoom:80%;">

## Filter Categories

This Filter categories panel allows you to refine and analyze interaction data based on various parameters configured, such as efficiency, experience, behavior, and keywords.

### Filter by Efficiency

This provides an operational view of areas of interest where there is greater potential for improvement. 

To filter the Efficiency, do the following:

1. Select **Channel** type (**Chat** or **Voice)** to limit interactions to specific modes of communication.   
<img src="../conversation-mining/images/channels.png" alt="Channels" title="Channels" style="border: 1px solid gray; zoom:80%;">

2. Select **Audit Status** to view conversations that are **Audited**, **Assigned**, or **Not Assigned**.     
<img src="../conversation-mining/images/audit-status.png" alt="Audit Status" title="Audit Status" style="border: 1px solid gray; zoom:80%;">

3. Enter the **Conversation ID**, a unique identifier to search for specific conversations (for example, ticket number).  
<img src="../conversation-mining/images/conversation-mining-id.png" alt="Audit Status" title="Audit Status" style="border: 1px solid gray; zoom:80%;">

4. Enter the **Custom Conversation ID** by entering a user-defined or custom conversation identifier (for example, external ID mapping).  
<img src="../conversation-mining/images/custom-conv.id.png" alt="Custom Conversation ID" title="Custom Conversation ID" style="border: 1px solid gray; zoom:80%;">

5. From the **Queues** dropdown, select an interaction by assigned queue or routing group.   
<img src="../conversation-mining/images/queues.png" alt="Queues" title="Queues" style="border: 1px solid gray; zoom:80%;">

6. From the **Agent Groups** list, add the agent group name based on the queue selected.  
<img src="../conversation-mining/images/conversation-mining-agent-groups.png" alt="Agent Groups" title="Agent Groups" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        You can filter the Agent Groups, which are part of the queues, not based on agents in the agent group that are part of other queues.

7. From the **Agents** list, add the agent name based on the queue selected.  
<img src="../conversation-mining/images/conversation-mining-agents.png" alt="Agents" title="Agents" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        You can filter the agents based on the interactions that are part of the queues and the user is part of.

8. Enable either of the following options:
    * **Average handling time**: Filters interactions based on the start and end of handling time range of interaction.    
    <img src="../conversation-mining/images/handling-time.png" alt="Average Handling Time" title="Average Handling Time" style="border: 1px solid gray; zoom:80%;">

    * **Filter by deviation from AHT**: Filters interactions by % deviation from the average handling time across all interactions for the respective date range and the interactions that are going wrong.  
      <img src="../conversation-mining/images/deviation-from-aht.png" alt="Filter by deviation" title="Filter by deviation" style="border: 1px solid gray; zoom:80%;">  

    * Specify the **Deviation of** the number percentage.  
    <img src="../conversation-mining/images/deviation-of.png" alt="Deviation of" title="Deviation of" style="border: 1px solid gray; zoom:80%;">

    * If **No. of Transfers** is selected, specify the filters by the number of transfer that occurred within each interaction.  
    <img src="../conversation-mining/images/number-of-transfers.png" alt="No. of Transfers" title="No. of Transfers" style="border: 1px solid gray; zoom:80%;">

### Filter by Experience

This category captures the emotional and qualitative aspects of the customer journey.

#### Sentiment Trend

Enables you to track how the customer's or agent’s sentiment changes throughout the conversation, from start to finish. 

* **Opening**: Select the Starting sentiment trend from the dropdown to define the initial emotional tone of a conversation. 

* **Closing**: Select the Closing sentiment trend from the dropdown to define the final emotional tone of a conversation. 

Example: You can choose sentiment values such as Positive, Negative, or Neutral for both the starting and closing points to map the emotional journey across the interaction.  
<img src="../conversation-mining/images/experience-sentiment-trend.png" alt="Sentiment Trend" title="Sentiment Trend" style="border: 1px solid gray; zoom:80%;">

#### Emotions

Use the Emotions dropdown to select emotional expressions observed during the interaction, whether from the customer or the agent. Examples include Fear, Anger, and Happiness.  
<img src="../conversation-mining/images/efficiency-emotions.png" alt="Emotions" title="Emotions" style="border: 1px solid gray; zoom:80%;">

#### Avg. Waiting Time

This provides the following filter drop down range selection conditions in seconds:

* None
* Equals
* Greater than
* Greater than equal to
* Less than  
<img src="../conversation-mining/images/filter-by-experience-avg-waiting-time.png" alt="Average Waiting Time" title="Average Waiting Time" style="border: 1px solid gray; zoom:80%;">  

#### Sentiment Score

This indicates the positive sentiment score (higher) and negative sentiment score (lower) interactions.  
<img src="../conversation-mining/images/by-experience-sentiment-score.png" alt="Sentiment Score" title="Sentiment Score" style="border: 1px solid gray; zoom:80%;">  

Provides a slider bar to move the minimum and maximum range of interactions.

#### CSAT

This shows the distribution interactions across the score range that the customer has responded to the feedback service and drilled down accordingly.  
<img src="../conversation-mining/images/experience-csat.png" alt="CSAT" title="CSAT" style="border: 1px solid gray; zoom:80%;">  

#### Intent

This indicates the underlying cause and customer intent that the conversation pertains to.   
<img src="../conversation-mining/images/experience-intent.png" alt="Intent" title="Intent" style="border: 1px solid gray; zoom:80%;">  

#### Topic

This indicates the subject that a conversation pertains to.   
<img src="../conversation-mining/images/experience-topic.png" alt="Topic" title="Topic" style="border: 1px solid gray; zoom:80%;">  

#### Churn Monitor

This provides the underlying cause and need that a conversation relates to. It indicates the loss of customers over a specific period.

This has the following two options to churn the monitor:

#### Churn Risk

Provides the extent of customer churn in a given conversation. In this, the Supervisor can view the churn risk % for a given time period.   
<img src="../conversation-mining/images/experience-churn-monitor.png" alt="Churn Risk" title="Churn Risk" style="border: 1px solid gray; zoom:80%;">  

!!! Note

    The customer churn is calculated once per interaction. Customer churn is not to be calculated as a score.

#### Escalation

This detects the number of escalations raised to the Supervisor by a customer.  

### Filter by Behaviour

This category analyzes interaction dynamics and conduct between agents and customers. 

#### Metric Name

This filter enables supervisors to view interactions by specific evaluation metrics. Use radio buttons to filter by Pass or Fail and select a metric from the drop-down list to refine results.  
<img src="../conversation-mining/images/metric-name.png" alt="Empathy Score" title="Empathy Score" style="border: 1px solid gray; zoom:80%;">

#### Metric Qualification

The selected evaluation metric appears as a tag below the input field, and you can clear it by clicking **X**. When opened from the Adherence Heatmap, filters apply automatically. If queues are selected, only metrics from those queues’ forms appear. The filter retrieves interactions where the metric applies, letting you view failed or adhered interactions using radio buttons.   
<img src="../conversation-mining/images/metric-qualification.png" alt="Empathy Score" title="Empathy Score" style="border: 1px solid gray; zoom:80%;">

#### Language

Select the languages to add from the dropdown list.   
<img src="../conversation-mining/images/by-behaviour-lang.png" alt="Empathy Score" title="Empathy Score" style="border: 1px solid gray; zoom:80%;">

#### Empathy Score

This measures the level of understanding and compassion shown by the agent towards the customer situation. Provides the extent of empathy like frustration or displeasure that a customer has shown (negative sentiment). A higher score indicates a more empathetic interaction.  
<img src="../conversation-mining/images/filter-by-behaviour-empathy.png" alt="Empathy Score" title="Empathy Score" style="border: 1px solid gray; zoom:80%;">

#### Crutch Word Score

This indicates the extent of filler words (for example, umm, uh, and so on) which is used by the agent. Higher score indicates the higher usage of crutch words.  
<img src="../conversation-mining/images/filter-by-behaviour-crutch-word.png" alt="Crutch Word Score" title="Crutch Word Score" style="border: 1px solid gray; zoom:80%;">

#### Agent Playbook Adherence 

This indicates the adherence percentage to the Agent AI playbook assigned to that interaction.  
<img src="../conversation-mining/images/filter-by-behaviour-agent-playbook.png" alt="Agent Playbook Adherence" title="Agent Playbook Adherence" style="border: 1px solid gray; zoom:80%;">

#### Kore Evaluation Score

This indicates the automated QA score associated with an interaction based on the evaluation form assigned to an interactions’s queue.  
<img src="../conversation-mining/images/filter-by-behaviour-agent-kore-evaluation.png" alt="Kore Evaluation Score" title="Kore Evaluation Score" style="border: 1px solid gray; zoom:80%;">

#### Filter by Keyword

This feature allows you to search, filter, and review conversations using specific keywords or phrases. You can filter by included or excluded keywords and by speaker, with results linked directly to the QA audit screen.

| **Category**                        | **Details**                                                                                                                                                                      |
| ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Select Conditions (AND/OR)**      | Choose how multiple keywords in the *Include* section are combined:<br><br>**AND:** All specified keywords must appear in the conversation (conversation-level).<br>**Example:**<br>- **Include:** Billing **AND** frustrated (Both speakers).<br>- **Exclude:** Resolved (Both speakers).<br><br>**OR:** At least one of the specified keywords must appear somewhere in the conversation.<br>**Example:**<br>- **Include:** Refund **OR** “money back” (Customer only).<br>- **Exclude:** Processed (Agent only), completed (Both speakers).                                                                      |
| **Conversation Including Keywords** | Search conversations for specific keywords or exact phrases, with optional speaker filters.<br><br>- **Keyword Input:** Enter a keyword or exact phrase to search.<br>- **Speaker Filter:** Select who mentioned the keyword:<br>  - **Agent only:** Count only agent mentions.<br>  - **Customer only:** Count only customer mentions.<br>  - **Both:** Count mentions by either speaker (agent or customer).<br>- **+Add Keyword:** Add up to 8 keywords using the **+Add Keyword** button.                                                                                                                       |
| **Conversation Excluding Keywords** | Enter keywords or phrases that must not appear in the conversation. You can also select which speaker(s) must not mention the keyword.<br><br>- **Speaker Filter:** Choose who must not mention the keyword:<br>  - Agent only<br>  - Customer only<br>  - Both<br>- **Add Exclusion:** Add up to 5 exclusion keywords using the **+Add Exclude Keyword** button.<br><br>**Note:**<br>- All exclusions use **AND NOT** logic. If any exclusion keyword appears (according to the selected speaker filter), the conversation is excluded.<br>- Each row includes a **Remove** button to delete an exclusion keyword. |
| **Audit Navigation & Filtering**    | - Enables quick filtering and navigation by keyword or QA question.<br>- Supports transcript auto-scroll and match relevance filtering.                                                                                                                                                                       |
| **Apply Keywords Action**           | - Click **Apply Keywords** to activate the filters and display the selected keywords.<br>- Click **Apply** to run the search and view results based on all active filters.                                                                                                                                                                         |
| **Filtered Keywords Interactions**  | Displays the count of filtered interactions (for example, “Filtered Interactions: 22”) containing the selected keywords after filters are applied.

## Manage Saved Filters

### Apply Filters

* Click **Apply** to save the filter settings. 

* The applied settings, regardless of any category filter selected, are stored as an **Unsaved Filter** on the **Conversation Mining** dashboard page.  
 <img src="../conversation-mining/images/conversation-mining-unsaved-filter.png" alt="Unsaved Filter" title="Unsaved Filter" style="border: 1px solid gray; zoom:50%;"> 

    !!! Note

        If interactions are not used for audit allocation, you can apply filters without saving. To assign audit allocations, save and name filters for easy reference in future audits.

### Save Filters

* Click **Save & Apply** to save the selected filter category details and proceed.  
 <img src="../conversation-mining/images/interactions-save-and-apply.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:50%;"> 

* In the **Save Filter** window, enter the Filter Name, and enable the toggle option **Make this the default view** if required.  
 <img src="../conversation-mining/images/save-filter.png" alt="Save Filter" title="Save Filter" style="border: 1px solid gray; zoom:50%;"> 

* Click **Save & Apply** in the **Save Filter** window to set the **Unsaved Filter** as the default view filter in the **Interactions** dashboard.  
 <img src="../conversation-mining/images/default-view-in-dashboard.png" alt="Default View Filter" title="Default View Filter" style="border: 1px solid gray; zoom:50%;"> 

### View Saved Filters

* Click the newly set default view filter or any Unsaved Filter dropdown to view all the newly created Saved Filters.  

* All the Unsaved Filters and their associated Saved Filters are displayed.  
 <img src="../conversation-mining/images/conversation-interaction-saved-filters.png" alt="Clear" title="Clear" style="border: 1px solid gray; zoom:50%;"> 

### Clear Filters

* Click **Clear** to reset all applied filters. This resets all the Filter By options or categories displayed.  
 <img src="../conversation-mining/images/interactions-clear-filter.png" alt="Clear" title="Clear" style="border: 1px solid gray; zoom:50%;"> 

* Click **Clear All** to remove or clear all queue filters.   
 <img src="../conversation-mining/images/interactions-clear-all.png" alt="Clear All" title="Clear All" style="border: 1px solid gray; zoom:50%;"> 

### Close Filter Panel

* Click the Cross **X** icon to close the filter panel.  
 <img src="../conversation-mining/images/interactions-close-filter-panel.png" alt="Cross Icon" title="Cross Icon" style="border: 1px solid gray; zoom:50%;"> 

### View Filtered Interactions

* Click **Filtered Interactions** to view the real-time conversation interactions count based on your selected or matched filter criteria. 

* This count dynamically updates whenever filters are applied or removed.    
<img src="../conversation-mining/images/conv-mining-filtered-interactions.png" alt="Filtered Interactions" title="Filtered Interactions" style="border: 1px solid gray; zoom:80%;"> 

#### Saved Filters Customization Options

Once filters are saved, the following customization options are available:  

* **Copy**

    Creates a duplicate of the saved filter.

* **Mark as default**

    Sets the selected filter as the default filter whenever the Call Mining tab is opened.

* **Edit Filter**

    Allows modification of the details of a saved filter.

* **Delete Filter**

    Removes the selected saved filter permanently.  
    <img src="../conversation-mining/images/saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;"> 