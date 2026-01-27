--8<-- "includes/qualityai-reports-back-link.md"

# Agent Performance Report 

Exports agent performance scorecard data based on selected scorecards, with optional agent attribute inclusion. This report provides comprehensive insights into individual agent performance, including scorecard scores, attribute ratings, metric adherence, and coaching assignments.

## Generate the Agent Performance Report

Steps to generate the Agent Performance Report:

1. On the **Reports** tab, select **New Report**.

1. From the **Create New Report** list, select the **Agent Performance Report**.  
<img src="../images/general-report-selection.png" alt="Report Selection" title="Report Selection" style="border: 1px solid gray; zoom:50%;">

1. Select **Next** to proceed.

1. Configure the **General** section.

    * Enter a unique identifier **Name** for the report.

    * Enter a meaningful **Description** explaining the report's purpose and intended audience.
 
    * Select **Next** to proceed.        
    <img src="../images/agent-general.png" alt="General" title="General" style="border: 1px solid gray; zoom:50%;">    

1. Enter the **Configure** section fields and filters.

    * Select at least one **Agent Scorecard** from the dropdown. 

        * Determines the data scope and included agents.

        * Enables you to select multiple scorecards for comparative analysis.

        * Only agents with assigned scorecards appear in the report.

    * Select a **Date** or date range from the dropdown, such as Current day, Previous day, Last 7 days, Last Week, Week to Date.

    * Select a **Timezone** (defaults to device local timezone) from the dropdown.

    * Configure **Filter**.

        * Select **+Add Filter** to configure additional filters.

            * **Channel**: Select communication channel (Chat, Voice).

            * **Queue**: Select one or more queues.

            * **Language**: Select languages assigned to the scorecard.

            * **Agents**: Select specific agents for tracking.

            * **Agent Groups**: Select a team or group of agents.

        * Set the values vs. the selected/added filters. 

    * Add **Optional Fields** to include additional metrics or attributes.

    * Enter one or more addresses in the **Send Email to** field to send the automated reports (minimum one required). 

    * Select **Next** to proceed.  
    <img src="../images/agent-config.png" alt="Configure" title="Configure" style="border: 1px solid gray; zoom:60%;">

1. To **schedule** report generation, select either **Run on Demand** and **Schedule**.
 
    * Select **Run on Demand**, and select **Save** to generate the report immediately with the current configuration.  
    <img src="../images/agent-run-on-demand.png" alt="Configure" title="Configure" style="border: 1px solid gray; zoom:60%;">

    * Select **Schedule** to set up automated recurring report generation.  
    <img src="../images/agent-schedule.png" alt="Schedule" title="Schedule" style="border: 1px solid gray; zoom:60%;">

1. Choose a **Frequency** or **Repeat** (Hourly/Daily/Weekly/Monthly/Quarterly/Yearly).    
<img src="../images/frequency.png" alt="Repeat" title="Repeat" style="border: 1px solid gray; zoom:60%;">

1. Select a **Start Date** to start the schedule.

1. Select a **Timezone** (defaults to your device's local timezone).

1. Select **Instant Run** to generate the report immediately.

1. Select **Save** to activate the schedule.  

## Report Fields

### Agent Performance Summary 

This report provides an overview of each agent’s performance, summarizing key metrics such as total interactions, evaluation and audit scores, and adherence levels, along with detailed attribute-level results that show scores, adherence percentages, and interaction counts for each evaluated category.

| Agent Name | Total Interactions | Kore Evaluation Score | Scorecard Score | Audit Score | Fail % | Coaching Assignments | Contained Metrics & Adherence Summary |
|----------------|------------------------|----------------------------|----------------------|------------------|------------|---------------------------|-------------------------------------------|
| **Lily Agent** | 20                     | 0.00                       | 28.00               | 0.00            | 0.00%      | N/A                       | COMMON Closing Resolution: **40%**, Dead Air: **33.33%**, Cross Talk: **22.22%**, Speech Rate: **11.11%**, Greeting: **100%**, Price: **100%**, Resolution: **100%**, Sign-off: **100%** |
| **Rosie V**      | 11                     | 0.00                       | -20.00              | 0.00            | 0.00%      | N/A                       | Closing Resolution: **0%**, Dead Air: **0%**, Cross Talk: **0%**, Speech Rate: **0%** |

### View and Download the Report

Steps to view and download a report:

1. On the **Reports** tab, navigate to the **Actions** column.

1. Select the vertical **Ellipsis** button. 

1. Select **History** to view all generated reports.

1. Select **Download** to save the required reports in CSV format.

### Report Format

* **Format**: CSV file

* **File Name**: [ReportName]-YYYY-MM-DD-HH-MM-SS.csv   
<img src="../images/sample-agent-performance-report.png" alt="Sample Report Format" title="Sample Report Format" style="border: 1px solid gray; zoom:80%;">

## Related Links

* [Scheduled Reports](../reports/scheduled-reports.md)

* [Evaluation Form Summary Report](../reports/evaluation-form-summary-report.md)

* [Interaction Evaluation and Conversation Analytics Report](../reports/interaction-conversation-analytics-report.md)