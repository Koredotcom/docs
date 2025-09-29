# Supervisor View with Agent-Specific Dashboard

## Overview

This feature provides a personalized dashboard for each agent, accessible by both the agent and their supervisor. It enables supervisors to evaluate performance metrics and pinpoint coaching opportunities at the individual level. 

The dashboard displays key metrics relevant to the agent in the **Overview** section of the supervisor’s agent-specific dashboard, with data filtered by language, date range, and channels (voice or chat). This enables supervisors to analyze agent performance, identify areas for improvement, and create targeted coaching assignments to enhance skills and overall performance.

A supervisor can access the agent-specific dashboard in the following ways:

**Approach 1:**

1. Navigate to **Quality AI** > **Dashboard** > **Agent Leaderboard**.  
<img src="../agent-leaderboard/images/dashboard-agent-leaderboard-view.png" alt="Overview" title="Overview" style="border: 1px solid gray; zoom:100%;">  

2. From the **Agent Leaderboard** section, click any agent to view the agent-specific dashboard **Overview** screen.  
<img src="../agent-leaderboard/images/dashboad-supervisor-view.png" alt="Overview" title="Overview" style="border: 1px solid gray; zoom:100%;">

**Approach 2:**

1. Navigate to **Quality AI** > **Agent Leaderboard**.   
<img src="../agent-leaderboard/images/agent-leaderboard-agent-selection.png" alt="Agent Leaderboard" title="Agent Leaderboard" style="border: 1px solid gray; zoom:100%;">


2. From the **Agent Leaderboard** section, click any agent to view the following agent-specific dashboard **Overview** screen.   
<img src="../agent-leaderboard/images/agent-leaderboard-supervisor-overview.png" alt="Overview" title="Overview" style="border: 1px solid gray; zoom:100%;">

!!! note

    Only authorized users can view automated scores and access QA features. 
    To enable this functionality, go to **Quality AI** > **Settings** and turn on the following toggle options:

    * **Auto QA**, 
    
    * **Agent Score Card**
    
    * **Agent Access to Scored Interactions** 
    
The **Overview** tab provides the supervisor’s view of the agent dashboard for each agent and includes the following: 

### Filter Options

The Dashboard metrics allow you to filter and refine the data displayed across the entire Agent Dashboard.

#### All Languages

You can search and filter by language across the dashboard and apply the language-specific metrics. You can select more than one language or all languages simultaneously. These metrics are based on the languages configured at the evaluation metric level under the **Language Settings**.  

!!! note

    By default, all languages are selected when the **All Languages** filter is applied. Metrics are only displayed for languages configured at the evaluation metric level under **Configuration** > **Settings**.

When a language filter is applied, the following widget metrics are updated to reflect data specific to the selected languages:

* **Total Audits**: Shows audit count only for selected languages.

* **Avg. Audits per Agent:** Updates to show average for selected languages.

* **Evaluation Score** (Manual Vs Auto QA Score): Updates both Manual and Auto QA scores for selected languages.

* **Fail Statistics (Evaluation Form)**: Shows failure data for selected languages.

* **Performance Monitor (Evaluation Form)**: Updates performance metrics for selected languages.

### Agent Performance Metrics

The following metrics help evaluate agent performance and coaching progress, filtered by selected languages and date range:

* **Total Interactions**: This displays the total interactions completed by the agent during the selected time.     
    <img src="../agent-leaderboard/images/total-interactions.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:100%;">

* **Kore Evaluation Score**: This displays the average Kore evaluation score of the agent for the calls they have completed during the selected time period.    
    <img src="../agent-leaderboard/images/kore-evaluation-score.png" alt="Kore Evaluation Score" title="Kore Evaluation Score" style="border: 1px solid gray; zoom:100%;">

* **No. of Supervisor Audits**: This displays the total number of manual audits completed for the interactions completed by that agent for the selected time period.     
    <img src="../agent-leaderboard/images/No-of-supervisor-audits.png" alt="No. of Supervisor Audits" title="No. of Supervisor Audits" style="border: 1px solid gray; zoom:100%;">

* **Supervisor Audit Score**: This displays the Average manual audit score for the audited interactions for the selected time period.     
    <img src="../agent-leaderboard/images/supervisor-audit-score.png" alt="Supervisor Audit Score" title="Supervisor Audit Score" style="border: 1px solid gray; zoom:100%;">

* **Total Coaching Assignments**: This displays the total number of coaching sessions assigned to the agent over a selected time period.     
    <img src="../agent-leaderboard/images/total-coaching-assignemnts.png" alt="Total Coaching Assignments" title="Total Coaching Assignments" style="border: 1px solid gray; zoom:100%;">

* **No. of Fails**: This displays the total number of scorecard failures for the agent over a selected time period.   
    <img src="../agent-leaderboard/images/No-of-fails.png" alt="No. of Fails" title="No. of Fails" style="border: 1px solid gray; zoom:100%;">

* **Fatal Interactions**: This displays an agent’s interactions that failed critical compliance or quality checks during a selected time period, helping supervisors quickly identify and address high-risk cases.        
    <img src="..//agent-leaderboard/images/fatal-interactions.png" alt="Fatal Interactions" title="Fatal Interactions" style="border: 1px solid gray; zoom:80%;">

### Coaching Insights

* **Select Scorecard**: Based on the scorecard selected, it displays the top five attributes with the highest scores from the agent’s scorecards during the specified time period. Only attributes with scores above 80 are shown, listed in descending order.

* **Strongest Attributes**: Based on the scorecard selected, it displays the bottom five attributes with the lowest scores from the agent’s scorecards during the specified time period. Only attributes with scores below 80 are shown as areas for improvement.   
    <img src="../agent-leaderboard/images/strongest-attributes.png" alt="Coaching Insights" title="Coaching Insights" style="border: 1px solid gray; zoom:80%;">

* **Opportunity Areas**: Displays the bottom five attributes with the lowest scores from the agent’s scorecards during the selected time period. Only attributes with scores below 80 are shown as areas for improvement.      
    <img src="../agent-dashboard/images/scorecard-selection-for-coaching-insights.png" alt="Opportunity Areas" title="Opportunity Areas" style="border: 1px solid gray; zoom:80%;">

### Coaching Assignments

This feature displays all coaching assignments given to an agent within the agent dashboard. Supervisors can track scorecard performance trends over time to assess progress or decline and take appropriate action through targeted coaching.   
<img src="../agent-leaderboard/images/coaching-assignments.png" alt="Coaching Assignments" title="Coaching Assignments" style="border: 1px solid gray; zoom:80%;">

The Coaching Assignments include the following items:

* **Agents**: This displays the name of the Coaching assignment agent.

* **Coaching Area**: This displays all the attributes selected or designated as coaching areas for that assignment.  

* **Assigned Date**: This displays the date that the coaching session was assigned.

* **Follow-up Date**: This displays the assigned date as a follow-up date for that coaching assignment.

* **Status**: This displays three types of status for the coaching assignment, calculated based on the number of interactions opened out of those assigned (including both interactions marked for coaching and best responses) for that assignment as follows:

    * **Start Now**: This indicates that the coaching is ready to start.
    
    !!! note
            
        This option is only visible for agents.
       
    * **Yet to start**: Interactions for an assignment are yet to start.

    !!! note
            
        This option is only visible for supervisors.

    * **In Progress**: This displays the total number of interactions that have been clicked through for that coaching assignment.

    * **Completed**: All interactions clicked through for that assignment.

For more information, see [Coaching Assignments - Supervisor View and Creation](../coach/coaching-assignments-supervisor-view-and-creation.md).  

#### Scorecard Trend

The Scorecard Trend feature displays an agent’s assigned scorecards and highlights performance trends over Daily, Weekly, and Monthly intervals. It allows supervisors to track attribute-level scoring patterns based on the scorecard and language selected. This also enables you to identify progress or decline and make informed coaching decisions. 

#### All Languages 

This functionality supports multilingual performance monitoring, enabling supervisors to compare agent performance across languages and generate actionable insights for coaching. Each scorecard supports independent language settings, separate from the global dashboard language. This enables flexible multilingual configuration across the platform.

* The language filter within a scorecard displays only the languages that are configured for that scorecard.

* When a scorecard is selected, all associated languages are automatically selected.

* Agents can assign different languages to different scorecards, allowing for localized tracking and analysis.  
<img src="../agent-dashboard/images/my-dashboard-scorecard-trend.png" alt="Scorecard Trend" title="Scorecard Trend" style="border: 1px solid gray; zoom:60%;">

!!! Note

    If the administrator or app owner has disabled the Agent Scorecard for a particular agent, then that agent and its Supervisor will not be able to view this feature in the Dashboard. To enable this, the administrator or app owner has to enable it in the [**Settings**](../configure/quality-ai-general-settings.md).

#### Avg. Scorecard Score

From the agent side, the scorecard trend widget displays the average scorecard for the selected time range and the scoring trend at an attribute level across the following time ranges in a tabular view.

When a scorecard is selected, the average score for that agent within the chosen global date range is displayed. If no conversations are made after assigning, then the scorecard does not displays any score for that agent. If any conversations exist, then the scorecard is displayed in the dropdown for scorecard trends.

#### Attributes

It displays all agent attributes included in the scorecard and the average score for each attribute within the selected date range filter.

The date range selection is done based on the following criteria:

* **Daily**: Last 7 days from the current date.

* **Weekly**: Last 7 weeks from the current week of the year.

* **Monthly**: Last 7 months from the current month.

