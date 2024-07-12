# Dashboard Overview

The Dashboard Overview provides a 360-degree view of Audit details, Fail Statistics, and Performance Monitoring of the Agent Evaluation Forms on a Daily, Weekly, and Monthly basis. It holds the last seven months of a year's data. By default, the Dashboard shows the Daily report for all three categories. This provides a quick glance through to monitor the quality standard at a given point of time.

By selecting the date range and Evaluation Form, users can view performance metrics for Voice, Chat, or both (Voice and Chat) conversations. This includes Trends view and Distribution view on a Daily, Weekly, or Monthly basis across the Dashboard.

You can view the Dashboard by going to **Contact Center AI** > **Quality Management** > **Analyze** > **Dashboard**.  
<img src="../images/qm-dashboard.png" alt="Quality Management Dashboard" title="Quality Management Dashboard" style="border: 1px solid gray; zoom:70%;">

The key sections of this Dashboard include:

* **Total Audits**: It displays the total audits count based on the date range selected.
* **Avg. Audits per Agent**: It displays the average number of audits per agent belonging to the queues of the user.
* **Audit Progress**: It displays the total number of audits (progress score), that is, pending and completed in a Doughnut chart.
    * **Audit**: It navigates the user to the **Audit Allocation** of the Conversation Mining section, where the user can easily start evaluating interactions.  
    <img src="../images/audit-progress.png" alt="Audit Progress" title="Audit Progress" style="border: 1px solid gray; zoom:70%;">

        For more information, refer to the [Conversation Mining](../analyze/conversation-mining.md).

* **Evaluation Score**: It displays the trend of the average Kore Evaluation Score (Auto QA Score) and Average Manual audit score, so that the user can understand if there is any parity between system evaluations and manual audits.  
<img src="../images/evaluation-score.png" alt="Evaluation Score" title="Evaluation Score" style="border: 1px solid gray; zoom:60%;">

* **Fail Statistics**: The no. of fails count is the count of failed interactions for the selected forms and the selected date range, the chart allows visualization of failure trends for the selected forms over the last 7 days. last 7 weeks or last 7 months using the daily, weekly and monthly views. In general, it provides the failure statistics of Auto QA for a given period of time.  
<img src="../images/fail-statistics.png" alt="Fail Statistics" title="Fail Statistics" style="border: 1px solid gray; zoom:60%;">

* **Performance Monitor**: The Gauge chart shows the total score of the Performance Monitor based on the Date Range and Evaluation Form selected. 
    * **Trends**: The Performance Monitor allows visualization of agent performance through Trends view of the average Kore Evaluation Score on Daily, Weekly, and Monthly basis.  
    <img src="../images/performance-monitor-trends.png" alt="Performance Monitor Trends" title="Performance Monitor Trends" style="border: 1px solid gray; zoom:60%;">

    * **Distribution**: The Distribution allows users to visualize distribution of agents across different score ranges over the last 7 days, last 30 days, and last 90 days.  
    <img src="../images/performance-monitor-distribution.png" alt="Performance Monitor Distribution" title="Performance Monitor Distribution" style="border: 1px solid gray; zoom:60%;">