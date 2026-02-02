--8<-- "includes/qualityai-reports-back-link.md"

# Evaluation Form Summary Report 

Summarizes evaluation metric adherence using selected forms, providing aggregated compliance statistics. This report focuses on metric-level performance across all interactions, highlighting adherence rates and fatal metric violations.

## Generate Evaluation Form Summary Report

Steps to generate the Evaluation Form Summary Report:

1. On the **Reports** tab, select **New Report**.

1. From the **Create New Report** list, select the **Evaluation Form Summary Report**.  
<img src="../images/evaluation-form-report.png" alt="Report Selection" title="Report Selection" style="border: 1px solid gray; zoom:50%;">

1. Select **Next** to proceed.

1. Configure the **General** section.

    a) Enter a unique identifier **Name** for the report.

    b) Enter a meaningful **Description** explaining the report's purpose and intended audience.
 
    c) Select **Next** to proceed.        
    <img src="../images/create-new-report-general.png" alt="General" title="General" style="border: 1px solid gray; zoom:50%;">    

1. Enter the **Configure** section fields and filters.

    a) Select one evaluation form to determine data scope and applicable interactions. At least one form selection you must select. 

    b) Select a **Date** or date range from the dropdown, such as Current day, Previous day, Last 7 days, Last Week, Week to Date.

    c) Select a **Timezone** (defaults to device local timezone) from the dropdown.

    d) Configure the required **Filter**.

        * Select **+Add Filter** to configure additional filters.

            * **Channel**: Select communication channel (Chat, Voice).

            * **Queue**: Select one or more queues.

            * **Language**: Select languages assigned to the scorecard.

            * **Agents**: Select specific agents for tracking.

            * **Agent Groups**: Select a team or group of agents.

        * Set the values vs. the selected/added filters.

    e) Add **Optional Fields** to include additional metrics or attributes.

    f) Enter one or more addresses in the **Send Email to** fields to send the automated reports (minimum one required). 

    g) Select **Next** to proceed.  
    <img src="../images/create-new-report-config.png" alt="Configure" title="Configure" style="border: 1px solid gray; zoom:50%;">

1. To **schedule** report generation, select either **Run on Demand** and **Schedule**.
 
    a) Select **Run on Demand**, and Select **Save** to generate the report immediately with the current configuration.  
    <img src="../images/evaluation-form-run-on-demand.png" alt="Run on Demand" title="Run on Demand" style="border: 1px solid gray; zoom:50%;">

    b) Select **Schedule** to set up automated recurring report generation.  
    <img src="../images/create-new-report-schedule.png" alt="Schedule" title="Schedule" style="border: 1px solid gray; zoom:50%;">

    c) Choose a **Frequency** or **Repeat** (Hourly/Daily/Weekly/Monthly/Quarterly/Yearly).    

    d) Select a **Start Date** to start the schedule.

    e) Select a **Timezone** (defaults to your device's local timezone).

1. Select **Save** to activate the schedule.  

## Report Fields

### Metric Adherence Summary Report  

This report summarizes adherence results for evaluation metrics across selected forms. It aggregates metric-level performance for all evaluated interactions, including total applicability, adherence counts, adherence percentages, and identification of fatal metrics.

| Metric Names              | Is Fatal | Total Interactions | Total Applicable | Total Adhered | Metric Adherence Percent |
|---------------------------|----------|--------------------|------------------|---------------|--------------------------|
| AI Agent Metric Check     | 0        | 13                 | 13               | 0             | 0.00%                    |
| Agent Blaming Customer    | 0        | 13                 | 13               | 0             | 0.00%                    |
| Agent Rude                | 0        | 13                 | 13               | 0             | 0.00%                    |
| COMMON AU – GEN & DET     | 0        | 13                 | 13               | 2             | 15.38%                   |


### View and Download the Report

Steps to view and download a report:

1. On the **Reports** tab, navigate to the **Actions** column.

1. Select the vertical **Ellipsis** button. 

1. Select **History** to view all generated reports.

1. Select **Download** to save the required reports in CSV format.

### Report Format

* **Format**: CSV file

* **File Name**: [ReportName]-YYYY-MM-DD-HH-MM-SS.csv   
<img src="../images/sample-evaluation-form-summary-report.png" alt="Reports Access" title="Reports Access" style="border: 1px solid gray; zoom:80%;">

## Related Links

* [Scheduled Reports](../reports/scheduled-reports.md)

* [Agent Performance Report](../reports/agent-performance-report.md)

* [Interaction Evaluation and Conversation Analytics Report](../reports/interaction-conversation-analytics-report.md)