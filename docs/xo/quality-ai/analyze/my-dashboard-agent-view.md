# Agent Dashboard (Agent View)

## Overview

**My Dashboard** is a personalized agent dashboard that shows performance insights through supervisor-assigned scorecards. It supports global language settings, with Scorecard widgets offering independent language selection. Agents can track trends, coaching insights, and areas for improvement, such as voice attributes, using Calendar and Channel filters for focused analysis.

### Key Functionalites

* **Real-time Performance Monitoring**: Access real-time feedback through supervisor scorecards and automated Quality Assurance (QA) scoring.

* **Data-driven Decision Making**: Utilize concrete metrics including evaluation scores, audit results, and coaching assignments to guide professional development.

* **Coaching Insights Analysis**: Track coaching assignments and identify improvement areas.

* **Multi-channel Analysis**: Compare performance across voice, chat, and combined channels.

* **Historical Tracking**: Monitor improvement trends through daily, weekly, and monthly views.

### Access My Dashboard 

Access **My Dashboard** by navigating to **Quality AI** > **ANALYZE** > **My Dashboard**.  
<img src="../agent-dashboard/images/my-dashboard-view.png" alt="My Dashboard-Agent View" title="My Dashboard-Agent View" style="border: 1px solid gray; zoom:60%;">

!!! Note

    A Supervisor or Administrator must enable the following settings for the dashboard to load your personalized performance data, automated scoring, and interaction access:

    * Auto QA

    * Agent Score Card

    * Agent Access to Scored Interactions

You can find these configurations options under:

**Configure** > **Settings** > **Quality AI General Settings**.

### Filter Options

My dashboard metrics allow you to filter and refine the data displayed across the entire dashboard by selected languages, date range or calendar, and channel.

#### Language Filter

The multilingual filter allows you to search and filter by language across the dashboard and apply language-specific metrics. You can select multiple languages, and when a language is chosen, metrics adjust to show only data for that language. 

Language metrics are based on a configuration set at the evaluation metric level under the: **Configure**> **Settings**> **Language Settings**

To filter by language, 

1. Click the **All Languages** filter at the top right corner of the dashboard.
2. Search or select one or more languages from the dropdown.   
<img src="../agent-dashboard/images/all-langs.png" alt="All Languages" title="All Languages" style="border: 1px solid gray; zoom:60%;">

!!! Note

    By default, all languages are selected when the **All Languages** filter is applied. Metrics are only displayed for languages configured at the evaluation metric level.

When a specific language is selected, the following widgets reflect language-specific data:

* **Total Audits**: Shows audit count only for selected languages.

* **Avg. Audits per Agent**: Updates to show average for selected languages.

* **Evaluation Score (Manual Vs Auto QA Score)**: Updates both Manual and Auto QA scores for selected languages.

* **Fail Statistics (Evaluation Form)**: Shows failure data for selected languages.

* **Performance Monitor (Evaluation Form) Metrics**: Updates performance metrics for selected languages.

#### Date Range Filter

Allows you to select the time period for analyzing and comparing performance data within specific ranges using the calendar.  

#### Channel Filter

By default, the dashboard shows combined data from Voice, Chat, or both. You can filter performance metrics by channel to view trends and graphs in daily, weekly, monthly, or distribution views. Metrics get displayed based on the selected channels and languages.

To filter by channel, 

1. Click **All Channels** in the top-right corner of the dashboard.

2. Choose your preferred channel (Voice, Chat, or both).

3. Data updates based on the channel-specific performance trends.

### Agent Performance Metrics

Shows the key performance indicators to evaluate agent performance and coaching progress over time, filtered by selected languages and date range. 

* **Total Interactions**: Displays the total number of interactions or conversations that happened during a selected period.   
    <img src="../agent-dashboard/images/my-dashboard-total-interactions.png" alt="Total Interactions" title="Total Interactions" style="border: 1px solid gray; zoom:100%;">

* **Kore Evaluation Score**: Displays the average Kore Evaluation Score (automated evaluation score) of completed calls during a selected period.   
    <img src="../agent-dashboard/images/my-dashboard-kore-eva-score.png" alt="Kore Evaluation Score" title="Kore Evaluation Score" style="border: 1px solid gray; zoom:100%;">

* **No. of Supervisor Audits**: Displays the total number of manually audited interactions (count of the agent's interactions) done by supervisors during a selected period.   
    <img src="../agent-dashboard/images/my-dashboard-number-sup-audits.png" alt="No. of Supervisor Audits" title="No. of Supervisor Audits" style="border: 1px solid gray; zoom:100%;">

* **Supervisor Audit Score**: Displays the agent’s average score from manual supervisor audits during a selected period.   
    <img src="../agent-dashboard/images/my-dashboard-sup-audit-score.png" alt="Supervisor Audit Score" title="Supervisor Audit Score" style="border: 1px solid gray; zoom:100%;">

* **Total Coaching Assignments**: Displays the number of coaching sessions assigned to an agent during a selected period.    
    <img src="../agent-dashboard/images/my-dashboard-total-coaching-assignment.png" alt="Total Coaching Assignments" title="Total Coaching Assignments" style="border: 1px solid gray; zoom:100%;">

* **No. of Fails**: This shows the total number of failed scorecards of an agent during a selected period.   
    <img src="../agent-dashboard/images/my-dashboard-number-of-fails.png" alt="No. of Fails" title="No. of Fails" style="border: 1px solid gray; zoom:100%;">

* **Fatal Interactions**: Displays visual indicators of agent interactions that failed critical compliance or quality criteria during a selected period.   
    <img src="../agent-dashboard/images/fatal-interactions.png" alt="Fatal Interactions" title="Fatal Interactions" style="border: 1px solid gray; zoom:100%;">

## Coaching Insights

### Scorecard Selection

The **Coaching Insights** feature highlights an agent's strengths and areas for improvement. The strongest attributes and opportunity areas are aggregated based on the selected scorecards. If the scorecard selection is updated, these insights are recalculated accordingly. When there are more than five strongest attributes or opportunity areas, a scroll option becomes available for viewing the complete list.

To configure the scorecard,

1. Access the **Select Scorecard** dropdown.

1. Choose single or multiple scorecards.

1. System updates insights automatically.

**Strongest Attributes Display**: 

* **Criteria**: Top 5 attributes scoring 80 or higher (example).

* **Ranking**: Ordered by performance across selected scorecards.

* **Purpose**: Identify and leverage peak performance areas.

* **Update Frequency**: Real-time based on scorecard selection.

**Opportunity Areas**

* **Criteria**: Bottom 5 attributes scoring below 80 (example).

* **Ranking**: Prioritized by lowest performance scores.

* **Purpose**: Focus coaching and training efforts.

* **Update Frequency**: Real-time based on scorecard selection.  
    <img src="../agent-dashboard/images/scorecard-selection-for-coaching-insights.png" alt="Coaching Insights" title="Coaching Insights" style="border: 1px solid gray; zoom:80%;">

## Scorecard Trend

Helps agents track their performance over time based on selected scorecards and language preferences. 

### Default Settings

The settings control automatic scorecard selection, manual switching, and multi-scorecard comparison.

* **Default Selection**: The oldest assigned scorecard is selected automatically.

* **Manual Override**: Agents can change the scorecard using the dropdown menu.

* **Multi-Scorecard Support**: Enables comparison of performance across different scorecards.

### All Languages

Each scorecard supports its own language settings, allowing for flexible multilingual configuration. Agents can assign different languages to different scorecards for localized performance tracking and reporting. 

This language filter displays only the languages configured for each scorecard, and all associated languages are auto-selected when a scorecard is chosen. This enables multilingual performance monitoring, helping supervisors compare agent performance across languages and provide targeted coaching.   
<img src="../agent-dashboard/images/my-dashboard-scorecard-trend.png" alt="All Languages" title="All Languages" style="border: 1px solid gray; zoom:80%;">

The widget presents attribute-level scoring trends across daily, weekly, and monthly time ranges. From the agent side, the scorecard trend widget shows the average scorecard for the selected time range and the scoring trend at an attribute level.

* **Daily**: Last 7 days from the current date.

* **Weekly**: Last 7 weeks from the current week of the year.

* **Monthly**: Last 7 months from the current month.  
<img src="../agent-dashboard/images/my-dashboard-scorecard-trend.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:60%;">

#### Avg. Scorecard Score

Displays the average score for the selected scorecard within the chosen date range. When a scorecard is selected, the average score for that agent within the chosen date range is displayed. If no conversations are made after the assignment, the scorecard does not display a score for that agent. If conversations exist, the scorecard is displayed in the dropdown for scorecard trends. 

!!! Note

    If the system doesn't find any interactions scored for an agent or a given scorecard not assessed by the supervisor, the widget displays a blank screen.

#### Attributes

Displays all attributes included in the selected scorecard, along with the average score for each attribute within the selected date range.

!!! Note

    If the system doesn't find any interactions scored for an agent or a given scorecard not assessed by the supervisor, the widget displays a blank screen.

## Evaluation

The **Evaluation** tab appears on the agent dashboard when **Agent Access to Scored Interactions** toggle is enabled in the **Quality AI** > **Configure** > **Settings**. If this option is disabled, the agents can only view the Overview tab without interaction scores.  

The tab displays conversations based on the selected language. By default, all language-specific conversations are shown.

### Access the Evaluation Tab

Access **Evaluation** by navigating to **Quality AI** > **ANALYZE** > **My Dashboard** > **Evaluation**.  
<img src="../agent-dashboard/images/my-dashboard-evaluation.png" alt="Evaluation" title="Evaluation" style="border: 1px solid gray; zoom:60%;">

!!! Note

    The Evaluation tab displays automated interaction scores only when the following toggles are enabled in **Quality AI** > **General Settings**:

    * Auto QA
    * Agent Score Card
    * Agent Access to Scored Interactions
    
### Available Interactions Based on Access Settings

The interactions displayed in the Evaluation tab depend on the **Agent Access to Scored Interactions** configuration.

##### Manually Audited Interactions Only

Displays only supervisor-audited scores, including:

* Date & Time
* Queue
* Supervisor Audit Score

    <img src="../agent-dashboard/images/manual-audit-enabled.png" alt="Only Manually Audited Interactions" title="Only Manually Audited Interactions" style="border: 1px solid gray; zoom:60%;">

##### Manually Audited Interactions with Auto QA Scored Interactions

Displays audited scores, including:

* Auto QA Score (Kore Evaluation Score)
* Supervisor Audit Score
* Date & Time
* Queue   
<img src="../agent-dashboard/images/manual-auto-qa-enabled.png" alt="Manually Audited with Auto QA Interactions" title="Manually Audited with Auto QA Interactions" style="border: 1px solid gray; zoom:60%;">

### Interaction Details

Each row lists a terminated interaction (by an agent), with columns:

* Date & Time
* Queues
* Auto QA Score (if Auto QA and manually audited interactions are accessible)
* Audit Score   

### Filtering Options

Filtering options vary based on the agent's access level:

* **Only Manually Audited with Filtered Interactions**

    * **Queues**: Shows only queues that the agent is part of or has access to.  
    <img src="../agent-dashboard/images/evaluation-my-dashboard-without-filter.png" alt="Manually Audited Interactions Only" title="Manually Audited Interactions Only" style="border: 1px solid gray; zoom:60%;">

* **Manually Audited with Auto QA Scored and Filtered Interactions** 

    * **Queues**: Shows only queues that the agent is part of or has access to.  
    
    * **Audit Status**: Visible only if Auto QA interactions are included.   
    <img src="../agent-dashboard/images/my-dashboard-filter-audit-status.png" alt="Manually Audited with Auto QA Interactions" title="Manually Audited with Auto QA Interactions" style="border: 1px solid gray; zoom:60%;">

### Comments and Transcripts

* Agents can view transcripts and comments only for interactions assigned to them.

* In each interaction, comments are displayed within the **Transcript** section of the **Audit** tab.  
    <img src="../agent-dashboard/images/comments-update-for-agents.png" alt="Manually Audited with Auto QA Interactions" title="Manually Audited with Auto QA Interactions" style="border: 1px solid gray; zoom:60%;">

### Language Settings

The **Language Settings** section is view-only for agents.   
<img src="../agent-dashboard/images/language-settings.png" alt="Manually Audited with Auto QA Interactions" title="Manually Audited with Auto QA Interactions" style="border: 1px solid gray; zoom:60%;">
