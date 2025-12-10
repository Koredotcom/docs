# Conversation Mining - Interactions

This feature enables supervisors to review and filter scored interactions within their assigned queues, making it easier to identify conversations that need coaching or attention. It delivers clear insights into conversation quality, agent performance, and customer experience at the conversation level and agent level.

By using these new capabilities, supervisors can:  

* **Review and Filter Interactions Easily**: Access scored interactions within their assigned queues to identify conversations that need coaching or attention.

* **Gain Clear Quality Insights**: Understand conversation quality, agent performance, and customer experience at a glance.

* **Get More Actionable Intelligence**: Leverage integrated Taxonomy-based Topic Discovery, Topic-Level Sentiment, and Resolution insights to perform better analysis across Conversation Mining, the AI-Audit Screen, and Agent Dashboards.

* **Identify Key Conversation Insights**: Use taxonomy-based topics, topic-level sentiment, and resolution status across filters, columns, audits, and dashboards to quickly identify unresolved or high-impact conversations and interpret sentiment with intuitive, color-coded indicators.

* **Filter by Experience Insights**: Apply new filters for configured intents (topics) across L1, L2, and L3 levels, generated intents, and overall resolution (resolved/unresolved).

* **Audit with Precision**: Customize the view with metadata and column controls, including the new configured intent column (showing topics with sentiment color-coding) and the overall resolution column.

* **Refine Searches Efficiently**: Use keyword-based filtering, including speaker-specific filters, include/exclude terms, and options to hide resolved or irrelevant cases.

* **Leverage Timeline Navigation**: Use a timeline-based search and jump-to-match display for fast, focused review.
Save Custom Views: Store preferred filter sets and column configurations for targeted, repeatable audits.

## Access Interactions

Navigate to **Quality AI** > **ANALYZE** > **Conversation Mining** > **Interactions**.  
<img src="../conversation-mining/images/conversation-mining-interaction-default.png" alt="Interactions" title="Interactions" style="border: 1px solid gray; zoom:80%;">

!!! Note

    * Interactions may take a few seconds to appear after a call ends. 

    * If any section of the Agent Interactions dashboard elements shows **NA** status, the data for that section is not available on the Audit Allocations page.

## Interactions Dashboard Columns

The **Interactions** dashboard includes the following items:

* **Agents**: Shows the agent's name who last engaged in and ended the interaction.

* **Processing Status**: Displays a green icon when all processes succeed and a red icon when any process fails.

    * **Pass**: Displays a green icon when all processes have succeeded, and metric adherence is captured.

    * **Failed**: Displays a red icon when all processes have not succeeded, and metric adherence is not captured.    
<img src="../conversation-mining/images/processing-status.png" alt="Processing Status" title="Processing Status" style="border: 1px solid gray; zoom:80%;">

* **Actions**:  Let's assign the interaction to a bookmark for later reference.    
<img src="../conversation-mining/images/actions-tags.png" alt="Moments" title="Moments" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        You must create the required bookmarks in the [Settings](../configure/quality-ai-general-settings.md) to view and tag them for future reference. 

* **Queues**: Shows the queue where the system terminated during the interaction.

    !!!Note

        The evaluation form used to score the interaction corresponds to the queue where the system terminated the interaction. 

* **Kore Evaluation Score**:  Shows the Auto QA score based on the agent-completed evaluation form. Hover over the warning icon to view the agent’s API processing status (Pass, Failed, or Disabled). Select a conversation to open the Conversation Mining page, which includes Audit, Conversation Details, and Logs.

* **Sentiment Score**: Displays the system-generated sentiment score for the interaction based on the customer's words.

* **Supervisor Auditor Score**: Displays the Supervisor Audited score if the interaction has already been audited or evaluated manually.

* **Start Time**: Displays conversation's start time in a specified format in the Interaction listing page (for example, 24 May 2024, 1:17:10 PM).

* **Duration**: Displays the call duration (voice and chat), including talk time, hold time, and after-call work time (for example, 0h 6m 25s).

* **Moments**: Shows the counts for adherence, violations, and omissions for the configured metrics. When you hover over a Moment, the system displays:

    * **Questions Adherence**: By-question metrics met during the conversation.

    * **Violation**: Speech-based violations that occurred.

    * **Omission**: Metrics not met, including playbook steps, dialog tasks, and by-question metrics. Select an interaction to open the conversation history and view Moment metrics in the AI-Assisted Manual Audit page. [Learn more](../ai-assisted-manual-audit.md){:target=”_blank”}.  
    <img src="../conversation-mining/images/moments.png" alt="Moments" title="Moments" style="border: 1px solid gray; zoom:80%;">    

* **Sentiment Trend**: Shows the distribution of positive, negative, and neutral tones; tracks sentiment changes throughout the call; highlights the resolution tone; and summarizes overall sentiment.
Emotions: Shows customer emotional states or tracked emotions during a conversation.

* **Conversation ID**: Displays the user-defined identifier for custom tracking.

* **Custom Conversation ID**: Displays the unique identifier for each conversation, used as the primary key to track and reference specific interactions.

* **Configured Intents**: Displays the configured topics or intents for each conversation across all levels (L1, L2, L3) and uses a color-coded map (red, green, gray) to indicate the sentiment of each detected topic.

* **Generated Intents**: Displays the generated intents column identified by the AI in each conversation.

## Interactions Filters 

Interaction filters help you to find specific conversations, review agent performance, and identify improvement opportunities. By using the following filters, auditors can dive deeper into conversations and assess agent adherence to quality standards. Filters update automatically based on the default language set.

## Columns

You can filter the Columns in the Interactions dashboard by including or excluding specific fields.

## Bookmarks

Let's assign interactions to bookmarks and view all bookmarks linked to a specific interaction.  

## Date Range Selection

Provides the option to select the date range for the conversation interactions. The default date range selected is always the last seven days.  

!!! Note

    If you attempt to evaluate an interaction not assigned to you, you cannot submit the evaluation.

## Filters

This helps you quickly pinpoint high-value interactions, streamline audits, and narrow results to conversations that need attention. You can add filters from the Filters dropdown and refine results using multiple category panels.

## Add New Filter

The new filter interaction enables you to focus on areas of interest or those with high potential for improvement, where you can save them for audit assignments. It helps you filter out options and identify which interactions went wrong.

Steps to Add New Filter:

1. Click the **Filters** dropdown shown in the upper-right corner to add a new filter.   
<img src="../conversation-mining/images/Filters.png" alt="Filter" title="Filter" style="border: 1px solid gray; zoom:80%;">  

Steps to Add New Filter:

1. Click the **Filters** dropdown shown in the upper-right corner to add a new filter. 

2. Click the **+ Add New Filter**.   

3. Select a **Filter By** category.   

## Filter Categories

This Filter categories panel allows you to refine and analyze interaction data based on various parameters configured, such as efficiency, experience, behavior, and keywords.

### Filter by Efficiency

This provides an operational view of areas of interest where there is greater potential for improvement. 

To filter by Efficiency,

1. Select **Channels** (Chat or Voice) to limit interactions to a specific communication mode.

1. Select **Audit Status** to view conversations that are Audited, Assigned, or Not Assigned.

1. Enter the **Conversation ID** to filter by a specific interaction.

1. Enter the **Custom Conversation ID** to filter by a user-defined identifier.

1. From **Queues**, select the queue or routing group for the interaction.

1. From **Agent Groups**, select the group linked to the chosen queue. You can filter only groups associated with the selected queues.

1. From **Agents**, select the agent assigned to the chosen queue. Agents are filtered based on interactions within that queue.

1. Enable the required filter options: 

    * Filter by handling time
    * Filter by deviation from AHT
    * Deviation (%)
    * Number of Transfers

### Filter by Experience

This category captures the emotional and qualitative aspects of the customer journey.

#### Avg. Waiting Time
Select the required date range in seconds.

#### Sentiment Score
This indicates the positive sentiment score (higher) and negative sentiment score (lower) interactions. Provides a slider bar to move the minimum and maximum interaction range. 

#### CSAT
This shows the distribution of interactions across the score range in which the customer has responded to the feedback service, and is then drilled down accordingly.  
<img src="../conversation-mining/images/experience-csat.png" alt="CSAT" title="CSAT" style="border: 1px solid gray; zoom:80%;">  

**Configured Intents**

Select the configured topics or intents for each conversation across all levels (L1, L2, and L3) from the search bar. Child lists update automatically based on the parent level selection.

Note: Select levels in order: L1 first, then L2, and finally L3. You must select at least one level to apply the filter. All topic levels update dynamically based on your selections.

#### Generated Intents

Select the configured intents for each conversation, or choose AI-suggested options based on your input.

#### Overall Resolution

Filter conversations by Resolved or Unresolved (both selected by default), where a conversation is marked Resolved if all applicable L3 intents are determined and Unresolved if even one remains unresolved.

#### Churn Monitor

This provides the underlying cause and need that a conversation relates to. It indicates the loss of customers over a specific period.

This has the following two options to churn the monitor:

* **Churn Risk**

    Provides the extent of customer churn in a given conversation. In this, the Supervisor can view the churn risk % for a given time period.   

    !!! Note

        The customer churn is calculated once per interaction. Customer churn is not calculated as a score. 

* **Escalation**

    This detects the number of escalations raised to the Supervisor by a customer.  

### Filter by Behavior

This category analyzes interaction dynamics and conduct between agents and customers. 

#### Metric Name

This filter enables supervisors to view interactions by specific evaluation metrics. Use radio buttons to filter by Pass or Failed and select a metric from the drop-down list to refine results.  

#### Metric Qualification

The selected evaluation metric appears as a tag below the input field, and you can clear it by clicking **X**. When opened from the Adherence Heatmap, filters apply automatically. If queues are selected, only metrics from those queues’ forms appear. The filter retrieves interactions where the metric applies, letting you view failed or adhered interactions using radio buttons.   

#### Language

Select the languages to add from the dropdown list.   

#### Empathy Score

This measures the level of understanding and compassion shown by the agent towards the customer situation. Provides the extent of empathy like frustration or displeasure that a customer has shown (negative sentiment). A higher score indicates a more empathetic interaction.  

#### Crutch Word Score

This indicates the extent of filler words (for example, umm, uh, and so on) which is used by the agent. Higher score indicates the higher usage of crutch words.  

#### Agent Playbook Adherence 

This shows the Agent AI playbook adherence percentage for that interaction.   

#### Kore Evaluation Score

This shows the automated QA score for an interaction, based on the evaluation form assigned to an interaction’s queue.       

## Manage Saved Filters

### Apply Filters

* Select **Apply** to save the filter settings. 

* The applied settings, regardless of any category filter selected, are stored as an **Unsaved Filter** on the **Conversation Mining** dashboard page.  
 <img src="../conversation-mining/images/conversation-mining-unsaved-filter.png" alt="Unsaved Filter" title="Unsaved Filter" style="border: 1px solid gray; zoom:50%;"> 

    !!! Note

        If interactions are not used for audit allocation, you can apply filters without saving. To assign audit allocations, save and name filters for easy reference in future audits.

### Save Filters

* Select **Save & Apply** to save the selected filter category details and proceed.  
 <img src="../conversation-mining/images/interactions-save-and-apply.png" alt="Save & Apply" title="Save & Apply" style="border: 1px solid gray; zoom:50%;"> 

* In the **Save Filter** window, enter the Filter Name.

* Enable the **Make this the default view** toggle if required.  
 <img src="../conversation-mining/images/save-filter.png" alt="Save Filter" title="Save Filter" style="border: 1px solid gray; zoom:50%;"> 

* Select **Save & Apply** in the **Save Filter** window to set the **Unsaved Filter** as the default view filter in the **Interactions** dashboard.  
 <img src="../conversation-mining/images/default-view-in-dashboard.png" alt="Default View Filter" title="Default View Filter" style="border: 1px solid gray; zoom:50%;"> 

### View Saved Filters

* Select the set default view filter or any Unsaved Filter dropdown to view all created Saved Filters.  

* All the Unsaved Filters and their associated Saved Filters are displayed.  

### View Filtered Interactions

* Select **Filtered Interactions** to view the real-time conversation interactions count based on your selected or matched filter criteria. The filtered interactions count dynamically updates whenever filters are applied or removed.    
<img src="../conversation-mining/images/conv-mining-filtered-interactions.png" alt="Filtered Interactions" title="Filtered Interactions" style="border: 1px solid gray; zoom:80%;"> 

#### Saved Filters Customization Options

When filters are saved, the following customization options are available: 

* **Copy**: Creates a duplicate of the saved filter.

* **Mark as default**: Sets the selected filter as the default filter whenever the Call Mining tab is opened.

* **Edit Filter**: Allows modification of the details of a saved filter.

* **Delete Filter**: Removes the selected saved filter permanently.  
    <img src="../conversation-mining/images/saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:80%;"> 