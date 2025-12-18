# Evaluation Form Summary Report 

Summarizes evaluation metric adherence using selected forms, providing aggregated compliance statistics. This report focuses on metric-level performance across all interactions, highlighting adherence rates and fatal metric violations.

## Generate Evaluation Form Summary Report

Steps to generate the Evaluation Form Summary Report:

1. On the **Reports** tab, select **New Report**.

1. From the **Create New Report** list, select the **Evaluation Form Summary Report**.  
<img src="../images/evaluation-form-report.png" alt="Report Selection" title="Report Selection" style="border: 1px solid gray; zoom:50%;">

1. Select **Next** to proceed.

1. Configure the **General** section.

    * Enter a unique identifier **Name** for the report.

    * Enter a meaningful **Description** explaining the report's purpose and intended audience.
 
    * Select **Next** to proceed.        
    <img src="../images/create-new-report-general.png" alt="General" title="General" style="border: 1px solid gray; zoom:50%;">    

1. Enter the **Configure** section fields and filters.

    * Select one evaluation form to determine data scope and applicable interactions. At least one form selection is required. 

    * Select a **Date** or date range from the dropdown, such as Last 7 days, Last Week, Week to Date.

    * Select a **Timezone** (defaults to device local timezone) from the dropdown.

    * Configure the required **Filter**.

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
    <img src="../images/create-new-report-config.png" alt="Configure" title="Configure" style="border: 1px solid gray; zoom:50%;">

1. To **schedule** report generation, select either **Run on Demand** and **Schedule**.
 
    * Select **Run on Demand**, and Select **Save** to generate the report immediately with the current configuration.  
    <img src="../images/evaluation-form-run-on-demand.png" alt="Run on Demand" title="Run on Demand" style="border: 1px solid gray; zoom:50%;">

    * Select **Schedule** to set up automated recurring report generation.  
    <img src="../images/create-new-report-schedule.png" alt="Schedule" title="Schedule" style="border: 1px solid gray; zoom:50%;">

1. Choose a **Frequency** or **Repeat** (Hourly/Daily/Weekly/Monthly/Quarterly/Yearly).    
<img src="../images/reports.png" alt="Repeat" title="Repeat" style="border: 1px solid gray; zoom:70%;">

8. Select a **Start Date** to start the schedule.

1. Select a **Timezone** (defaults to your device's local timezone).

1. Select **Instant Run** to generate the report immediately.

1. Select **Save** to confirm and activate the schedule.  
<img src="../images/gen-start-date-and-timezone.png" alt="Save" title="Save" style="border: 1px solid gray; zoom:60%;">

1. The saved report is displayed in the **My Reports - Reports** dashboard.  
<img src="../images/sample-report.png" alt="My Reports" title="My Reports" style="border: 1px solid gray; zoom:100%;">

1. Enable scheduling by switching on the **Schedule** toggle.

1. Select the **Run** button to generate the report immediately.

## Report Fields

### Agent Performance Summary 

This report provides an overview of evaluation metric adherence across all interactions, presenting aggregated compliance statistics that highlight adherence rates, applicable interaction counts, and fatal metric violations for each evaluated metric.

| **Metric Name** | **Is Fatal** | **Applicable Interactions** | **Adhered Interactions** | **Adherence %** |
|-----------------|--------------|-----------------------------|---------------------------|------------------|
| AI Agent Metric Check | 0 | 13 | N/A | 0.00% |
| Agent Blaming Customer | 0 | 13 | N/A | 0.00% |
| Agent Rude | 0 | 13 | N/A | 0.00% |
| COMMON AU - GEN & DET | 0 | 13 | 2 | 15.38% |

### View and Download the Report

Steps to view and download a report:

1. On the **Reports** tab, navigate to the **Actions** column.

1. Select the vertical **Ellipsis** button. 

1. Select **History** to view all generated reports.

1. Select **Download** to save and view the required reports in CSV format.

### Sample Report Format

* **Format**: CSV file

* **File Name**: [ReportName]-YYYY-MM-DD-HH-MM-SS.csv   
<img src="../images/sample-evaluation-form-summary-report.png" alt="Reports Access" title="Reports Access" style="border: 1px solid gray; zoom:80%;">

## Related Links

* [Scheduled Reports](../reports/scheduled-reports.md)

* [Agent Performance Report](../reports/agent-performance-report.md)

* [Interaction Evaluation and Conversation Analytics Report](../reports/interaction-conversation-analytics-report.md)