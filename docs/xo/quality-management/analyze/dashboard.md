# Supervisor Dashboard 

## Overview

The Dashboard overview provides a 360-degree view of audit details, failure statistics, and performance monitoring of the agent Evaluation forms on a daily, weekly, and monthly basis. It stores data for the past seven months. By default, the Dashboard displays the daily report for all three categories, offering a quick overview to monitor quality standards at any given point in time.

You can access **Dashboard** by navigating to **Contact Center AI** > **Quality AI** > **Analyze** > **Dashboard**.  
<img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;">

!!! note

    To access this **Dashboard** feature, you need to enable **Auto QA** and set up an evaluation form in the **Settings** to generate Auto QA scores. Only users with permission to access QA functionality can view it.

## Dashboard Filters

This Dashboard allows you to filter the data by time period and specific channel.

### Date Range Filter

You can filter data based on a selected date range.
To filter by date range, click the Calendar drop-down list displayed in the top-right corner of your Dashboard page. Select a date range from the list, and click **Apply**.  
<img src="../dashboard/images/calendar drop-down.png" alt="Date Range calendar" title="Date Range calendar" style="border: 1px solid gray; zoom:100%;">

This allows you to filter all agent interaction data by selecting the following date ranges:

* **Today**: All interaction data for this day, in the agent’s time zone.
* **Yesterday**: All interaction data of the previous day, in the agent’s time zone.
* **Last 7 Days**: All interaction data for the previous 7 days (not including today), in the agent’s time zone.
* **Last 28 Days**: All interaction data for the previous 28 days, (not including today), in the agent’s time zone.
* **Last 90 Days**: All interaction data for the previous 90 days, (not including today), in the agent’s time zone.
* **Custom Range**: All interaction data from the given date (12:00:00 AM to 11:59:59 PM), in the agent’s time zone, limited to **31** days.

### Channel Filter

The Quality AI Dashboard's default settings display combined data from all three channels — **Voice**, **Chat**, and **All**. You can filter the performance metrics by channel, such as **Voice**, **Chat**, or **All** (Voice and Chat) conversations. The dashboard provides trends and graphs with daily, weekly, and monthly views, along with a distribution view.

To filter data by channel, click the **All** Channels button in the top-right corner of the dashboard page, then select a conversation channel you wish to view.

<img src="../dashboard/images/channel-options.png" alt="Date Range" title="Date Range" style="border: 1px solid gray; zoom:100%;">

## Agent Performance Metrics

The following are the metrics components to assess agent performance (audits) and to track coaching progress:

### Total Audits

Displays the total manual audits count completed based on the date range selected.  
<img src="../dashboard/images/total-audits.png" alt="Total Audits" title="Total Audits" style="border: 1px solid gray; zoom:100%;">

### Avg. Audits per Agent
Displays the average number of manual audits per agent or evaluations completed belonging to the queues of a user.  
<img src="../dashboard/images/avg-audits-per-agent.png" alt="Average Audits per Agent" title="Average Audits per Agent" style="border: 1px solid gray; zoom:100%;">

### Coaching Sessions Assigned
Displays the number of coaching sessions the user (supervisor) has assigned across agents within a specific time period.  
<img src="../dashboard/images/coaching-sesssions-assigned.png" alt="Coaching Sessions Assigned" title="Coaching Sessions Assigned" style="border: 1px solid gray; zoom:100%;">

### Agents in Coaching
Displays the number of agents with an active coaching assignment in the queues that the user belongs to.  
<img src="../dashboard/images/agents-in-coaching.png" alt="Agents in Coaching" title="Agents in Coaching" style="border: 1px solid gray; zoom:100%;">

### Audit Progress
Displays the total number of audits (progress score) pending and completed.

* **Completed**: Number of assigned interactions that are audited.
* **Pending**: Number of interactions assigned for audit and not yet audited.
* **Audit**: Click the **Audit** button, which directs you to the **Conversation Mining** > **Audit Allocations** feature, where you can easily start evaluating interactions.  
<img src="../dashboard/images/audit-progress.png" alt="Audit Progress" title="Audit Progress" style="border: 1px solid gray; zoom:70%;">

For more information, see [Audit Allocation](https://docs.kore.ai/xo/quality-management/analyze/conversation-mining-audit-allocations/).

### Evaluation Score 
This displays the trend of the average **Kore Evaluation Score** (Auto QA Score) alongside the average **Audit Score** (manual), allowing you to compare the consistency between system-generated evaluations and manual audits. 

You can view both automated interactions and manual audits scores across the following date ranges:

* **Daily**: Displays score for the last 7 days.
* **Weekly**: Displays score for the last 7 weeks.
* **Monthly**: Displays score for the last 7 months.   
<img src="../dashboard/images/evaluation-score.png" alt="Evaluation Score" title="Evaluation Score" style="border: 1px solid gray; zoom:60%;">

## Adherence Heat Map

The QA Dashboard feature displays a condensed heatmap of adherence data for the last 7 days,  with a default form selection, and no click-through functionality. You can select the evaluation form from the drop-down, and set it as the default queue for viewing adherence across the heatmap and the QA dashboard. In this, the hover tooltip displays the metrics for selected agents of the corresponding date, including % adherence, interaction count, and total interactions.  
<img src="../dashboard/images/dashboard-adhere-heatmap.png" alt="Evaluation Score" title="Evaluation Score" style="border: 1px solid gray; zoom:60%;">

## Fail Statistics
This chart displays the count of failed interactions based on the selected Evaluation forms and date range. It allows you to visualize failure trends for the chosen Evaluation forms over the last 7 days, 7 weeks, or 7 months (using daily, weekly, and monthly) views. Overall, it provides failure statistics for evaluation forms and scorecards for a specified time period.

### Evaluation Form
This chart displays failure rates across the selected evaluation forms, making it easy to track any increases in failure rates. It allows you to quickly identify issues and take appropriate action, without the need to manually review individual failed interactions.   
<img src="../dashboard/images/fail-stat-evaluation-form.png" alt="Fail Statistics Evaluation Form" title="Fail Statistics Evaluation Form" style="border: 1px solid gray; zoom:60%;">

### Agent Scorecard
This chart displays the trend view of the percentage of interactions with agent scorecard failures based on the selected scorecard. 

<img src="../dashboard/images/fail-stat-agent-scorecard.png" alt="Fail Statistics Agent Scorecard" title="Fail Statistics Agent Scorecard" style="border: 1px solid gray; zoom:60%;">


!!! note

    This **Agent Scorecard** tab only appears on the Dashboard if the widget option is enabled in the **Settings** of the [Quality Management](../configure/settings.md#quality-management).

## Performance Monitor

This displays the total score of the Performance Monitor based on the Date Range and Evaluation Form selected. 

### Evaluation Form
Supervisors can monitor agent performance based on the selected evaluation form.

* **Trends**: The Performance Monitor provides a **Trends** view (agent performance) that visualizes the average Kore Evaluation scores from agent scorecards on a daily, weekly, and monthly basis.  
<img src="../dashboard/images/performance-monitor-evaluation-form-trends.png" alt="Performance Monitor Evaluation Form Trends" title="Performance Monitor Evaluation Form Trends" style="border: 1px solid gray; zoom:60%;">

* **Distribution**: This view displays the distribution of both Kore evaluation scores and agents scorecard scores over the last 7 days, 30 days and 90 days.  
<img src="../dashboard/images/performance-monitor-evaluation-form-distribution.png" alt="Performance Monitor Evaluation Form Distribution" title="Performance Monitor Evaluation Form Distribution" style="border: 1px solid gray; zoom:60%;">

#### Agent Scorecard

* **Trends**: This view displays the performance monitor for agent scorecards.  
<img src="../dashboard/images/performance-monitor-agent-scorecard-trends.png" alt="Performance Monitor Agent Scorecard Trends" title="Performance Monitor Agent Scorecard Trends" style="border: 1px solid gray; zoom:60%;">

* **Distribution**: This view displays how agents are distributed across score bands in increments of 10 over the last 7 days, 30 days and 90 days.  
<img src="../dashboard/images/performance-monitor-agent-scorecard-distribution.png" alt="Performance Monitor Evaluation Form Distribution" title="Performance Monitor Agent Scorecard Distribution" style="border: 1px solid gray; zoom:60%;">

## Agent Leaderboard

This widget provides a simplified view of the Agent Leaderboard and a snapshot version of agent performance. The Agent Leaderboard displays a centralized view that makes it easy to identify the best and worst performers. It enables you to make informed decisions about rewarding high performers and assigning coaching to those agents who need improvement.  
<img src="../dashboard/images/agent-leaderboard.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:60%;">

!!! note

    To access this feature, enable the **Agent Scorecard** toggle option in the Quality AI displayed under **Settings**.

The Agent Leaderboard displays the following items:

* **Agents**: This displays the agent group name and the queue to which the agent is assigned.

* **Audits Done**: This displays the total number of manual audits completed by agents.

* **Audit Score**: This displays the average score of the manual audit.

* **Kore Evaluation Score**: This displays the average Kore Evaluation Score for each audited interaction.

* **Fail Percentage**: This displays the percentage of failures across all interactions.

### View Leaderboard

This **View Leaderboard** or **Agent Leaderboard** feature allows auditors and managers to view both top and bottom-performing agents, along with their conversations.  

Click the **View Leaderboard** button, the following screen is displayed that navigates you to the **Agent Leaderboard** page.   
<img src="../dashboard/images/view-leaderboard.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:60%;">

For more information, see [Agent Leaderboard](../analyze/agent-leaderboard.md).

