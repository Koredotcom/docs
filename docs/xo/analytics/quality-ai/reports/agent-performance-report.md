--8<-- "includes/qualityai-reports-back-link.md"

# Agent Performance Report 

This report provides a comprehensive view of individual agent performance, including scorecard scores, attribute ratings, metric adherence, and coaching assignments. It includes only evaluated interactions, incorporates manually evaluated interactions, and excludes interactions marked as Below Threshold or Duration Unavailable from all aggregated metrics. Users can export agent performance data based on selected scorecards, with optional agent attributes.

## Generate the Agent Performance Report

1. **Create the New Report**

    1. On the **Reports** tab, select **+ New Report**.    
    
    1. From the **Create New Report** list, select the **Agent Performance Report**.     
        <img src="../images/general-report-selection.png" alt="Report Selection" title="Report Selection" style="border: 1px solid gray; zoom:50%;">

    1. Select **Next**.

1. Configure **Filters** and **Options** in the **Configure** section.

    1. Select at least one **Agent Scorecard** from the dropdown. 
    
        * The system determines the data scope and which agents to include.

        * Enables you to select multiple scorecards for comparative analysis.

        * Only agents with assigned scorecards appear in the report.

    * Select a **Date range** from the dropdown, such as Today, Yesterday, Last 7 days, Last Week, Week to Date.

    * Select a **Timezone** (defaults to device local timezone) from the dropdown.

    * Configure the required **Filter**.

        * Select **+Add Filter** to add **Channel**, **Queue**, **Language**, **Agents**, **Agent Groups**, **Duration Status**.

        * Set the corresponding values for the selected/added filters. 

    * Add **Optional Fields** to include additional metrics or attributes.

    * Enter one or more addresses in the **Send Email to** field to send the automated reports (minimum one required). 

    * Select **Next** to proceed.     
        <img src="../images/agent-general.png" alt="General" title="General" style="border: 1px solid gray; zoom:50%;">   

        !!! Note

            Each scorecard determines eligibility for evaluation. Threshold configuration can evaluate an interaction for one scorecard and exclude it from another. 

1. Configure **Filters** and **Options**

    1. Select an **Agent Scorecard** to define the data scope (at least one form you must select). 

    1. Select a **Date** or date range.

    1. Select a **Timezone**.

    1. Select **+Add Filter** to apply filters and their respective values such as Channel, Queue, Language, Agents, and Agent Groups. 
    
    1. Add **Optional Fields** to include additional metrics. 

    1. Enter one or more recipient emails in **Send Email to** (minimum one required). 

    1. Configure the required Filters:

        * Select **+Add Filter** to configure additional filters.

            * **Channel**: Select communication channel (Chat, Voice).

            * **Queue**: Select one or more queues.

            * **Language**: Select languages assigned to the scorecard.

            * **Agents**: Select specific agents for tracking.

             * **Agent Groups**: Select a team or group of agents.

         * Set the values vs. the selected/added filters. 

    1. Add **Optional Fields** to include additional metrics or attributes.

    1. Enter one or more addresses in the **Send Email to** fields to send the automated reports (minimum one required). 

    1. Select **Next**.    
        <img src="../images/agent-config.png" alt="Configure" title="Configure" style="border: 1px solid gray; zoom:60%;">

1. Configure the **Schedule** section.  
 
    1. Select **Run on Demand** or **Schedule**.

        1. **Run on Demand**: To generate the report immediately.
    
        1. **Schedule**: To generate the report automatically.
    
    1. Choose a **Frequency or Repeat** (Hourly, Daily, Weekly, Monthly, Quarterly, or Yearly).

    1. Select a **Start Date** and **Timezone**.

    1. Select **Save**.  

        !!! Note

            This report includes only evaluated interactions in all aggregated metrics. Interactions below the duration threshold are not included in any aggregated metrics. 

## Report Fields

### Agent Performance Summary 

This report summarizes each agent’s performance, showing total evaluated interactions, evaluation and audit scores, adherence levels, and attribute-level results (scores, adherence percentages, and interaction counts). The system excludes interactions marked as Below Threshold or Duration Unavailable from all aggregated metrics and includes manually evaluated interactions.


| Agent Name      | Total Evaluated Interactions | Kore Evaluation Score | Scorecard Score | Audit Score | Fail % | Coaching Assignments | Attribute Group | Metric Name           | Threshold | Value / Adherence |
|-----------------|-----------------------------|---------------------|----------------|------------|--------|--------------------|----------------|---------------------|-----------|-----------------|
| John Dow        | 1                           | -63                 | 0.00%          | N/A        | N/A    | N/A                | ATT-3          | Speech Dead Air      | 30%       | N/A             |
| JohnSupervisor  | 1                           | -63                 | 0.00%          | N/A        | N/A    | N/A                | ATT-3          | Speech Rate Violation| 20%       | 0.00%           |


### View and Download the Report

1. On the **Reports** tab, locate the report in the **Actions** column.

1. Select More options (⋮), then select **History**. 

1. Select **Download** to save the report as a CSV file.

### Report Format

* **Format**: CSV file

* **File Name**: [ReportName]-YYYY-MM-DD-HH-MM-SS.csv   
<img src="../images/sample-agent-performance-report.png" alt="Sample Report Format" title="Sample Report Format" style="border: 1px solid gray; zoom:80%;">

## Related Links

* [Scheduled Reports](../reports/scheduled-reports.md)

* [Evaluation Form Summary Report](../reports/evaluation-form-summary-report.md)

* [Interaction Evaluation and Conversation Analytics Report](../reports/interaction-conversation-analytics-report.md)