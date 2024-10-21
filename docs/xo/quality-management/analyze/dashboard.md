# Dashboard

The Dashboard provides a 360-degree view of Audit details, Fail Statistics, and Performance Monitoring of the Agent Evaluation Forms on a Daily, Weekly, and Monthly basis. It holds the last seven months of a year's data. By default, the Dashboard shows the Daily report for all three categories. This provides a quick glance through to monitor the quality standard at a given point of time.

You can view the Dashboard by navigating to **Contact Center AI** > **Quality AI** > **Analyze** > **Dashboard**.  

<img src="../dashboard/images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;">

!!! Note

    To view this **Dashboard** feature, you must first enable Auto QA setting and configure an evaluation form to generate Auto QA scores. Only users having the QA functionality permission can access this.

## Overview
The key sections of this Dashboard include:

### Filters
The user can filter and view the performance metrics by channel, such as Voice, Chat, or both (All, Voice and Chat) conversations. The trends and graphs are displayed with daily, Weekly, or Monthly Trends view and Distribution view across the Dashboard.

The user can filter all agent interaction by selecting the following date ranges:

* **Today**: All interaction data for this day, in the agent’s time zone.
* **Yesterday**: All interaction data of the previous day, in the agent’s time zone.
* **Last 7 Days**: All interaction data for the previous 7 days (not including today), in the agent’s time zone.
* **Last 28 Days**: All interaction data for the previous 28 days, (not including today), in the agent’s time zone.
* **Last 90 Days**: All interaction data for the previous 90 days, (not including today), in the agent’s time zone.
* **Custom Range**: All interaction data from the given date (12:00:00 AM to 11:59:59 PM), in the agent’s time zone, limited to **31** days.

### Total Audits
Displays the count of total manual audits done based on the date range selected.  

<img src="../dashboard/images/total-audits.png" alt="Total Audits" title="Total Audits" style="border: 1px solid gray; zoom:100%;">

### Avg. Audits per Agent
Displays the average number of manual audits per agent or evaluations done belonging to the queues of a user.

<img src="../dashboard/images/avg-audits-per-agent.png" alt="Average Audits per Agent" title="Average Audits per Agent" style="border: 1px solid gray; zoom:100%;">

### Coaching Sessions Assigned
Displays the number of coaching sessions the user (supervisor) has assigned across agents within a specific time period.

<img src="../dashboard/images/coaching-sesssions-assigned.png" alt="Coaching Sessions Assigned" title="Coaching Sessions Assigned" style="border: 1px solid gray; zoom:100%;">

### Agents in Coaching
Displays the number of agents with an active coaching assignment in the queues that the user belongs to.  

<img src="../dashboard/images/agents-in-coaching.png" alt="Agents in Coaching" title="Agents in Coaching" style="border: 1px solid gray; zoom:100%;">

### Audit Progress
Displays the total number of audits (progress score) pending and completed.

* **Completed**: No. of assigned interactions that are audited.
* **Pending**: No. of interactions assigned for audit and not yet audited.
* **Audit**: Navigate to the **Audit Allocation** of the Conversation Mining section, where you can easily start evaluating interactions. For more information, see [Conversation Mining](../analyze/conversation-mining.md).

<img src="../dashboard/images/audit-progress.png" alt="Audit Progress" title="Audit Progress" style="border: 1px solid gray; zoom:70%;">

### Evaluation Score 
It shows the trend of the average **Kore Evaluation Score** (Auto QA Score) and the average **Audit Score** (manual), allowing you to see if there is any consistency between system evaluations and manual audits. 

You can view both automated scored interactions and manual audits of the following three date ranges:  

* **Daily**: Displays score for the last 7 days.
* **Weekly**: Displays score for the last 7 weeks.
* **Monthly**: Displays score for the last 7 months.
  
<img src="../dashboard/images/evaluation-score.png" alt="Evaluation Score" title="Evaluation Score" style="border: 1px solid gray; zoom:60%;">

### Fail Statistics
The no. of fails count is the count of failed interactions for the selected forms and the selected date range. The chart allows visualization of failure trends for the selected forms over the last 7 days, last 7 weeks, or last 7 months using the daily, weekly, and monthly views. In general, it provides the failure statistics of evaluation forms and scorecards for a given period of time.

#### Evaluation Form
The users can view failure rates across evaluation forms they choose. This makes it easy to track increases in failure rates and enables them to take appropriate action to address issues without manually sifting through failed interactions.

<img src="../dashboard/images/fail-stat-evaluation-form.png" alt="Fail Statistics Evaluation Form" title="Fail Statistics Evaluation Form" style="border: 1px solid gray; zoom:60%;">

#### Agent Scorecard
This shows the Trend view of the percentage of interactions with agent scorecard failures based on the selected scorecard.

!!! Note

    In the Dashboard, the Agent Scorecard widget will appear only when the Agent Scorecard widget option is enabled in the Quality Management Settings.

<img src="../dashboard/images/fail-stat-agent-scorecard.png" alt="Fail Statistics Agent Scorecard" title="Fail Statistics Agent Scorecard" style="border: 1px solid gray; zoom:60%;">

### Performance Monitor

This shows the total score of the Performance Monitor based on the Date Range and Evaluation Form selected. 

#### Evaluation Form
Supervisors can view and monitor agent performance based on the evaluation form chosen.

* **Trends**: The Performance Monitor allows visualization of agent performance through the Trends view of the average Kore Evaluation of agent Scorecards scores on a Daily, Weekly, and Monthly basis.  

<img src="../dashboard/images/performance-monitor-evaluation-form-trends.png" alt="Performance Monitor Evaluation Form Trends" title="Performance Monitor Evaluation Form Trends" style="border: 1px solid gray; zoom:60%;">

* **Distribution**: This shows the distribution of both kore evaluation scores and agents scorecard scores.

<img src="../dashboard/images/performance-monitor-evaluation-form-distribution.png" alt="Performance Monitor Evaluation Form Distribution" title="Performance Monitor Evaluation Form Distribution" style="border: 1px solid gray; zoom:60%;">

#### Agent Scorecard

* **Trends**: This shows the performance monitor for agent scorecards.

<img src="../dashboard/images/performance-monitor-agent-scorecard-trends.png" alt="Performance Monitor Agent Scorecard Trends" title="Performance Monitor Agent Scorecard Trends" style="border: 1px solid gray; zoom:60%;">

* **Distribution**: This shows the distribution of agents across score bands of 10. 

<img src="../dashboard/images/performance-monitor-agent-scorecard-distribution.png" alt="Performance Monitor Evaluation Form Distribution" title="Performance Monitor Agent Scorecard Distribution" style="border: 1px solid gray; zoom:60%;">

### Agent Leaderboard

This widget allows users to view a condensed version of the agent leaderboard to have a snapshot version of agent performance and navigate to the full agent leaderboard using the view leaderboard button.  

<img src="../dashboard/images/agent-leaderboard.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:60%;">

!!! Note

    To view this feature, enable the **Agent Scorecard** toggle option in the Quality Management displayed under **Settings**.

The Agent Leaderboard includes the following items:

* **Agents**: This shows the agent group name and queue that the agent is tagged.

* **Audits Done**: This shows the count of total manual audits done by agents.

* **Audit Score**: This shows the average manual audit score.

* **Kore Evaluation Score**: This shows the average Kore evaluation score against each interaction audited.

* **Fail Percentage**: Shows the failure percentage across all interactions.

#### View Leaderboard or Agent Leaderboard

Upon clicking the View Leaderbaord button displayed in the Dashboard - Agent Leaderboard widget, this navigates the user to the [View Leaderboard](../analyze/agent-leaderboard.md) or [Agent Leaderboard](../analyze/agent-leaderboard.md).

#### Supervisor Dashboard

Upon clicking any of the agents from the **Dashboard - Agent Leaderboard** widget, this navigates the user to the [Agent Dashboard - Supervisor View](./agent-dashboard-supervisor-view.md).  

