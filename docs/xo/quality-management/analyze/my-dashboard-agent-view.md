# Agent Dashboard

**My Dashboard** is the Agent Dashboard for agents’ view, which offers detailed insights into your activity and performance as an agent.

Each agent has a personalized dashboard, which is accessible to both the agents. In this, the agents can view their performance through scorecards provided by their supervisors. This setup allows agents to take appropriate actions based on their performance metrics.

You can access **My Dashboard** by navigating to **Contact Center AI** > **Quality AI** > **Analyze** > **My Dashboard**.  
<img src="../agent-dashboard/images/my-dashboard-view.png" alt="My Dashboard-Agent View" title="My Dashboard-Agent View" style="border: 1px solid gray; zoom:60%;">

In this, you can filter all your interaction channels (Voice and SMS or both) by selecting the following date ranges:

* **Today**: All interaction data for this day, in the agent’s time zone.
* **Yesterday**: All interaction data of the previous day, in the agent’s time zone.
* **Last 7 days**: All interaction data for the previous 7 days (not including today), in the agent’s time zone.
* **Last 28 days**: All interaction data for the previous 28 days, (not including today), in the agent’s time zone.
* **Last 90 days**: All interaction data for the previous 90 days, (not including today), in the agent’s time zone.
* **Custom Range**: All interaction data from the given date (12:00:00 AM to 11:59:59 PM), in the agent’s time zone, limited to **31** days.

!!! Note

    If the Supervisor or Admin has not enabled the **Auto QA** and **Agent Scorecard** toggle option in the Quality AI displayed under **Settings**, then you will not be able to view the automated scoring of interactions in the Dashboard.

## Overview

The **Overview** of the Dashboard displays metrics for the chosen time and selected channel (**All**, **Voice,** **Chat**), which includes:

* **Total Interactions**: This shows the overall number of interactions completed for the time period.

    <img src="../agent-dashboard/images/my-dashboard-total-interactions.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:100%;">

* **Kore Evaluation Score**: This shows the average Kore Evaluation Score completed calls during the selected time.

    <img src="../agent-dashboard/images/my-dashboard-kore-eva-score.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:100%;">

* **No. of Supervisor Audits**:  This shows the total number of supervisor (manual) audits completed for that time period.
    * This is the count of the agent's interactions that have been manually audited for that time period.

    <img src="../agent-dashboard/images/my-dashboard-number-sup-audits.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:100%;">

* **Supervisor Audit Score**: This shows the average supervisor (manual) audit score of the agent for the selected time period.

    <img src="../agent-dashboard/images/my-dashboard-sup-audit-score.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:100%;">

* **Total Coaching Assignments**: This shows the total number of coaching sessions assigned to the agent for the selected time.

    <img src="../agent-dashboard/images/my-dashboard-total-coaching-assignment.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:100%;">

* **No. of Fails**: This shows the total number of failed scorecards of an agent for the selected time.

    <img src="../agent-dashboard/images/my-dashboard-number-of-fails.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:100%;">

## Coaching Insights

The Coaching Insights feature highlights an agent's strengths and areas for improvement. The strongest attributes and opportunity areas are aggregated based on the selected scorecards. If the scorecard selection is updated, these insights are recalculated accordingly. When there are more than five strongest attributes or opportunity areas, a scroll option becomes available for viewing the complete list.

* **Strongest Attributes**: This shows the top 5 attributes with scores of 80 or higher, ranked by a score assigned across the scorecards.

    <img src="../agent-dashboard/images/my-dashboard-strongest-attributes.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:80%;">

* **Opportunity Areas**: This shows the bottom 5 attributes with scores below 80, ranked by a score assigned across the scorecards for that agent.

    <img src="../agent-dashboard/images/my-dashboard-opportunity-areas.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:80%;">

## Scorecard Trend

In this, the agents can view their performance trends from scorecards over various periods.

The widget presents attribute-level scoring trends across daily, weekly, and monthly time ranges. From the Agent side, the scorecard trend widget shows the average scorecard for the selected time range and the scoring trend at an attribute level across the following time ranges in a tabular view.

* **Daily**: Last 7 days from the current date.
* **Weekly**: Last 7 weeks from the current week of the year.
* **Monthly**: Last 7 months from the current month.

**Note**: If no interactions scored for an agent are found or for a given scorecard have not been assessed by the supervisor, the widget will be blank.

<img src="../agent-dashboard/images/my-dashboard-scorecard-trend.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:60%;">

#### Avg. Scorecard Score

From the agent side, the scorecard trend widget shows the average scorecard for the selected time range and the scoring trend time ranges at an attribute level in a tabular view.

When a scorecard is selected, the average score for that agent within the chosen date range is displayed. If no conversations are made after assigning, the scorecard does not show any score for that agent. If conversations exist, the scorecard is displayed in the dropdown for scorecard trends.

#### Attributes

Displays all attributes included in the selected scorecard, along with the average score for each attribute within the selected date range.
