# Supervisor Dashboard 

## Overview

The Supervisor Dashboard (QA Dashboard) provides real-time insights of audit results, agent performance, and failure statistics across daily, weekly, and monthly timeframes. By default, the dashboard displays daily reports for all categories, allowing quick insights into quality standards and agent adherence. It supports you in filtering daily reports by language, date, and communication channel.

Key features include:

* **Adherence Heatmap & Performance Monitor**: Track evaluation scores, coaching, and trends.

* **Agent Leaderboard**: Ranks agents based on performance.

* **Scorecard Trends**: Displays average scores at global (language-specific) levels.

* **Critical Metrics**: Highlights poor performance using negatively weighted scores.

* **Flagged interactions**: Surfaced across all tools (for example, QA Dashboard, Audit Screen, Conversation Mining) for targeted coaching and quality control. 

The dashboard enables supervisors to maintain quality standards, identify improvement areas, and guide focused coaching through consistent, actionable insights.

### Access Supervisor Dashboard 

Access the **Dashboard** by navigating to **Quality AI** > **ANALYZE** > **Dashboard**.  
<img src="../dashboard/images/qm-dashboard.png" alt="Quality AI Dashboard" title="Quality AI Dashboard" style="border: 1px solid gray; zoom:70%;">

!!! note

    To access the **Dashboard** feature, you must enable **Auto QA** and set up an evaluation form in the **Settings** to generate Auto QA scores. Only users with appropriate permissions can access the QA functionality.

## Dashboard Filters

This dashboard allows you to filter the data by language, time period, and specific channel.

### Filter Options

The dashboard metrics allow you to filter and refine the data displayed across the entire dashboard by selected language(s), date range or calendar, and channel.

#### All Languages 

In the Quality AI dashboard, you can search and filter by language across the dashboard, and apply the language-specific metrics. You can select more than one language or all languages simultaneously.

These metrics are available based on the languages configured at the evaluation metric level under the **Configuration** > **Settings** > **Language Settings**.    
<img src="../dashboard/images/language-filter.png" alt="All Languages" title="All Languages" style="border: 1px solid gray; zoom:100%;">

To filter by language, 

* Locate the **All Languages** filter at the dashboard top.
* Select single or multiple languages from the dropdown.
* Metrics automatically adjust to show language-specific data.

!!! note

    By default, all languages are selected when the **All Languages** filter is applied. Metrics are only displayed for languages configured at the evaluation metric level under **Configuration** > **Settings**.

When a language filter is applied, the following widget metrics are updated to reflect data specific to the selected languages:

* **Total Audits**: Shows audits count only for selected languages.

* **Avg. Audits per Agent**: Updates to show average for selected languages.

* **Evaluation Score**: Updates both Manual and Auto QA scores for selected languages.

* **Fail Statistics (Evaluation Form)**: Shows failure data for selected languages.

* **Performance Monitor (Evaluation Form)**: Updates performance metrics for selected languages.

#### Date Range

By using the **Calendar** dropdown at the top-right of the dashboard to filter data by date. Data is shown based on the selected language and time period.

To filter by calendar, 

* Click the **Calendar** dropdown.
* Select the desired date range.
* Click **Apply** to refresh dashboard data.  
<img src="../dashboard/images/date-range-filter.png" alt="Date Range calendar" title="Date Range calendar" style="border: 1px solid gray; zoom:100%;">

#### Channel

The Quality AI dashboard's default settings display combined data from all three channels — **Voice**, **Chat**, or **All**. You can filter performance metrics by channel: **Voice**, **Chat**, or **All** (which includes both Voice and Chat conversations). The dashboard presents trends and graphs with daily, weekly, and monthly views, along with a distribution view. Data is displayed based on the selected language and channel.

To filter by channel, 

* Click All channels in the top-right corner.

* Choose your preferred channel option (**Voice**, **Chat**, or **All**).    
<img src="../dashboard/images/channel-options.png" alt="Date Range" title="Date Range" style="border: 1px solid gray; zoom:100%;">

## Agent Performance Metrics

This outlines the metrics that used to assess agent performance and monitor coaching progress. Metrics are filtered based on the selected languages and date range.

The following components provide insights through audit results and coaching activity tracking:

### Total Audits

Displays the total manual audits count completed.  
<img src="../dashboard/images/total-audits.png" alt="Total Audits" title="Total Audits" style="border: 1px solid gray; zoom:100%;">

### Avg. Audits per Agent

Displays the average number of manual audits or evaluations completed by each agent, based on their assigned queues.   
<img src="../dashboard/images/avg-audits-per-agent.png" alt="Average Audits per Agent" title="Average Audits per Agent" style="border: 1px solid gray; zoom:100%;">

### Coaching Sessions Assigned

Displays the total coaching sessions assigned to agents by supervisors.  
<img src="../dashboard/images/coaching-sesssions-assigned.png" alt="Coaching Sessions Assigned" title="Coaching Sessions Assigned" style="border: 1px solid gray; zoom:100%;">

### Agents in Coaching
  
Displays the number of agents with an active coaching assignment in the queues that the supervisor has access to.   
<img src="../dashboard/images/agents-in-coaching.png" alt="Agents in Coaching" title="Agents in Coaching" style="border: 1px solid gray; zoom:100%;">

### Fatal Interactions
  
Displays the number of interactions that failed due to critical errors. If an interaction meets any fatal criteria defined in the evaluation form, the entire scorecard is scored as zero, regardless of performance in other areas.   
<img src="../dashboard/images/fatal-interactions.png" alt="Fatal Interactions" title="Fatal Interactions" style="border: 1px solid gray; zoom:100%;">

### Audit Progress

Displays and tracks the overall progress score of audits (both pending and completed).  

* **Completed**: Number of assigned interactions that are audited.

* **Pending**: Number of interactions assigned for audit and not yet audited.

* **Audit**: Click the **Audit** button, which navigates you to the **Conversation Mining** > **Audit Allocations** feature, where you can start evaluating interactions. For more information, see [Audit Allocations](../analyze/conversation-mining-audit-allocations.md).    
<img src="../dashboard/images/audit-progress.png" alt="Audit Progress" title="Audit Progress" style="border: 1px solid gray; zoom:70%;">

### Evaluation Score 

This displays the trend of the average **Kore Evaluation Score** (Auto QA Score) alongside the average **Audit Score** (manual) over the last 7 days (daily), 7 weeks (weekly), or 7 months (monthly).      
<img src="../dashboard/images/evaluation-score.png" alt="Evaluation Score" title="Evaluation Score" style="border: 1px solid gray; zoom:60%;">

## Adherence Heat Map

This presents a simplified heatmap of adherence data for the past 7 days. It includes a default form selection without any click-through functionality. 

You can filter and view flagged or fatal interactions for each form. Additionally, you can select a default evaluation form and designate it as the "Mark as Default" queue. This allows you to view adherence data on both the heatmap and the QA dashboard, filtered by the selected languages for future reference.    
<img src="../dashboard/images/dashboard-adhere-heatmap.png" alt="Evaluation Score" title="Evaluation Score" style="border: 1px solid gray; zoom:60%;">

To view adherence with fatal errors or interactions, you should do the following:

* **Evaluation Form**: Choose a form from the dropdown to set it as Default. This allows you to view related adherence data that includes fatal interactions on both the heatmap and QA dashboard.

* **Language Filter**: Use the All Languages drop-down to filter adherence data by language. All languages are selected by default.

* **Tooltip Information**: Hover over the heatmap to see key metrics for the selected agents of the corresponding date, such as adherence percentage, interaction count, and total interactions. 

!!! Note

    You must enable **Auto QA** (**Settings** > **Quality AI General Settings**) to generate and configure evaluation forms to generate automated scores.

### View More Details

Click the **View More Details** button to see detailed trends in agent adherence. For more information, see [Adherence Heatmap](../analyze/adherence-heatmap.md).

## Fail Statistics

The **Fail Statistics** chart displays the count of failed interactions based on the selected Evaluation forms, scorecards, and date, and selected language. Allows you to view failure trends for the chosen Evaluation forms over the past 7 days, 7 weeks, or 7 months in daily, weekly, or monthly views. This displays failure statistics through the following charts for evaluation forms and agent scorecards over a selected time period.

### Evaluation Form

This chart shows failure scores across the selected evaluation forms, helping teams monitor failure rates or negative scores tied to key evaluation metrics. When you hover over the chart, it reveals specific failure rates or negatively weighted scores, so you can take corrective actions without manually reviewing each failed interaction.

By assigning negative weights to critical metrics in evaluation forms, attributes, or scorecards, you generate negative final scores for certain interactions. The system displays these scores across relevant modules.  
<img src="../dashboard/images/fail-stat-evaluation-form.png" alt="Fail Statistics Evaluation Form" title="Fail Statistics Evaluation Form" style="border: 1px solid gray; zoom:60%;">

### Agent Scorecard

The chart displays the trend of failed agent interactions as a percentage, based on selected scorecard metrics. If any of the selected metrics are marked as fatal criteria, the entire interaction or scorecard shows a zero score when you hover over it. Fatal interactions are automatically flagged and filtered across system modules for visibility and further action.   
<img src="../dashboard/images/fail-stat-agent-scorecard.png" alt="Fail Statistics Agent Scorecard" title="Fail Statistics Agent Scorecard" style="border: 1px solid gray; zoom:60%;">

!!! note

    This **Agent Scorecard** tab only appears on the dashboard if the widget option is enabled in the **Settings** of the [Quality AI General Settings](../configure/quality-ai-general-settings.md).

## Performance Monitor

This displays the overall performance score for the selected language, date range, and evaluation form assigned with negative weights.

### Evaluation Form

Supervisors can monitor agent performance based on the selected evaluation form assigned with negative weights.

* **Trends**: The Performance Monitor provides a **Trends** view (agent performance) that visualizes the average Kore Evaluation scores (both positive and negative) from agent scorecards on a daily, weekly, and monthly basis.  
<img src="../dashboard/images/performance-monitor-evaluation-form-trends.png" alt="Performance Monitor Evaluation Form Trends" title="Performance Monitor Evaluation Form Trends" style="border: 1px solid gray; zoom:60%;">

* **Distribution**: This view displays the distribution of both Kore evaluation scores and agents scorecard scores over the last 7 days, 30 days and 90 days.    
<img src="../dashboard/images/performance-monitor-evaluation-form-distribution.png" alt="Performance Monitor Evaluation Form Distribution" title="Performance Monitor Evaluation Form Distribution" style="border: 1px solid gray; zoom:60%;">

#### Agent Scorecard

* **Trends**: This view displays the performance monitor for agent scorecards. This provides a trend view of the percentage of interactions with agent scorecard failures based on the selected scorecard.    
<img src="../dashboard/images/performance-monitor-agent-scorecard-trends.png" alt="Performance Monitor Agent Scorecard Trends" title="Performance Monitor Agent Scorecard Trends" style="border: 1px solid gray; zoom:60%;">

!!! note

    To access this feature, enable the **Agent Scorecard** toggle switch displayed under the **Quality AI General Settings**.

* **Distribution**: This view displays how agents are distributed across score bands in increments of 10 over the last 7 days, 30 days and 90 days.  
<img src="../dashboard/images/performance-monitor-agent-scorecard-distribution.png" alt="Performance Monitor Evaluation Form Distribution" title="Performance Monitor Agent Scorecard Distribution" style="border: 1px solid gray; zoom:60%;">

## Agent Leaderboard

The Agent Leaderboard provides a centralized view to easily identify top and bottom performers, enabling informed decisions about recognizing high achievers and coaching those who need improvement. This widget offers a simplified snapshot of agent performance and functions independently of language selection and communication channels.   

!!! note

    To activate automated agent scoring, you must enable the **Agent Scorecard** toggle under **Quality AI General Settings**. If this setting is not enabled, the **Agent Leaderboard** shows blank with no interactions.

### Agent Leaderboard Interface Elements

The **Agent Leaderboard** displays the following elements:

* **Agents**: Displays the agent group name and the queue to which the agent is assigned.

* **Audit Completed**: Displays the total number of manual audits completed by each agent.

* **Audit Score**: Displays the average score of the manual audits.

* **Kore Evaluation Score**: Displays the average Kore Evaluation Score for each audited interaction.

* **Fail Percentage**: Displays the percentage of failures across all interactions.   

### View Leaderboard

The **View Leaderboard** option allows supervisors, auditors, and managers to see both top and bottom-performing agents, along with their conversations. For more information, see [Agent Leaderboard](agent-leaderboard.md).

* Click the **View Leaderboard** button located at the top-right corner to access the **Agent Leaderboard** quickly.    
<img src="../dashboard/images/view-leaderboard.png" alt="View Leaderboard" title="View Leaderboard" style="border: 1px solid gray; zoom:60%;">

#### View Agent Leaderboard

You can view the **Agent Leaderboard** or **Agent-Specific Dashboard** in the following ways:  

* Navigate to **Quality AI** > **Dashboard** > **Agent Leaderboard**. Or,  
<img src="../dashboard/images/agent-leaderboard-from-dashboard.png" alt="Agent Leaderboard From Dashboard" title="Agent Leaderboard From Dashboard" style="border: 1px solid gray; zoom:60%;">

* Navigate to **Quality AI** > **Agent Leaderboard**.   
<img src="../dashboard/images/agent-leaderboard.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:60%;">

* Click on any agent to view the individual Agent Leaderboard or Agent-Specific Dashboard.   
<img src="../dashboard/images/agent-specific-dashboard-overview.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:60%;">

    !!! notes

        * If no scorecards are assigned to an agent, the supervisor cannot view that agent's scorecard details. For more information, see [Supervisor View with Agent-Specific Dashboard](supervisor-view-agent-specific-dashboard.md).

        * Supervisors can also review language-specific agent interactions and evaluation details to support targeted coaching. 
    
        * Bookmarked interactions assist in assigning relevant coaching tasks, with the most recent interactions displayed first. 
        
        For more information, see [Supervisor View with Agent-Specific Dashboard](../analyze/supervisor-view-agent-specific-dashboard.md) and [Agent Dashboard - Agent View](../analyze/my-dashboard-agent-view.md).
        