# Interaction Evaluation and Conversation Analytics Report 

Exports comprehensive conversation data based on selected evaluation forms, with customizable field options. This report provides detailed insights into individual interactions, including sentiment analysis, topics discussed, agent performance metrics, and evaluation scores.

## Generate Interaction Conversation Analytics Report

Steps to generate the Interaction Evaluations and Conversation Analytics Report:

1. On the **Reports** tab, Select **New Report**.

1. From the **Create New Report** list, select the **Interaction Evaluations and Conversation Analytics Report**.  
<img src="../images/interaction-report.png" alt="Report Selection" title="Report Selection" style="border: 1px solid gray; zoom:50%;">

1. Select **Next** to proceed.

1. Configure the **General** section.

    * Enter a unique identifier **Name** for the report.

    * Enter a meaningful **Description** explaining the report's purpose and intended audience.
 
    * Select **Next** to proceed.        
    <img src="../images/interactions-eva-report.png" alt="General" title="General" style="border: 1px solid gray; zoom:50%;">   

1. Enter the **Configure** section fields and filters.

    * Select one evaluation form to determine data scope and applicable interactions. 

    * Select a **Date** or date range from the dropdown, such as Last 7 days, Last Week, Week to Date.

    * Select a **Timezone** (defaulting to the device's local timezone) from the dropdown.

    * Configure the required **Filter**.

        * Select **+Add Filter** to add Channel, Queue, Language, Agents, Agent Groups.

        * Set the values vs. the selected/added filters. 

    * Add **Optional Fields** to include additional metrics or attributes.

    * Enter recipient addresses in **Send Email to** send the automated reports (minimum one required). 

    * Select **Next** to proceed.  

        <img src="../images/interactions-config.png" alt="Configure" title="Configure" style="border: 1px solid gray; zoom:50%;">

1. To **schedule** report generation, select either **Run on Demand** and **Schedule**.
 
    * Select **Run on Demand**, and select **Save** to generate the report immediately with the current configuration.

    * Select **Schedule** to set up automated recurring report generation.  
    <img src="../images/interaction-run-on-demand.png" alt="Schedule" title="Schedule" style="border: 1px solid gray; zoom:50%;">

1. Choose a **Frequency** or **Repeat** (Hourly/Daily/Weekly/Monthly/Quarterly/Yearly).    
<img src="../images/interaction-conv-analytics-schedule.png" alt="Repeat" title="Repeat" style="border: 1px solid gray; zoom:50%;">

1. Select a **Start Date** to start the schedule.

1. Select a **Timezone** (defaults to your device's local timezone).

1. Select **Instant Run** to generate the report immediately.

1. Select **Save** to confirm and activate the schedule.  
<img src="../images/gen-start-date-and-timezone.png" alt="Save" title="Save" style="border: 1px solid gray; zoom:60%;">

1. The saved report is displayed in the **My Reports - Reports** dashboard.  
<img src="../images/sample-report.png" alt="My Reports" title="My Reports" style="border: 1px solid gray; zoom:60%;">

1. Enable scheduling by switching on the **Schedule** toggle.

1. Select the **Run** button to generate the report immediately.

## Report Fields

### Conversation Summary 

This report analyzes agent interactions by summarizing each conversation’s sentiment, duration, and evaluation scores, along with key performance metrics such as total interactions, scorecard results, evaluation and audit scores, failure rates, coaching assignments, and adherence indicators.

| **Conversation ID**                      | **Agent**              | **Language** | **Start Time**         | **End Time**           | **Duration (min)** | **Topic**           | **Sentiment Score** | **Kore Evaluation Score** | **Audit Score** | **Is Passed** | **Escalation** |
|------------------------------------------|-------------------------|--------------|--------------------------|--------------------------|----------------------|----------------------|------------------------|-----------------------------|------------------|----------------|----------------|
| c-01ca24e-4b50-4d38-a1d1-ddd0bd371258     | Uma Kalva StagingXo     | en           | 2025-10-24 21:23:17     | 2025-10-24 21:25:42     | 2.4                  | Flight Booking       | 5.85                   | 78                          | N/A              | 0              | 0              |
| c-0634784-37ed-4550-bb73-3d0e88ca2a32     | Lily Agent              | ja           | 2025-11-11 09:36:50     | 2025-11-11 09:38:51     | 2                    | Flight Booking       | 6.91                   | 53                          | N/A              | 1              | 0              |
| c-0723048-e40c-4b37-9c57-b29758d34944     | Uma Kalva StagingXo     | en           | 2025-11-11 07:09:51     | 2025-11-11 07:17:53     | 8                    | Service Issue        | 1.91                   | 57                          | 5                | 1              | 0              |
| c-0a8c012-a2d2-4379-a9ca-b0c2d89e7e50     | Lily Agent              | ja           | 2025-10-24 10:10:17     | 2025-10-24 10:11:06     | 0.8                  | Password Reset       | 1.33                   | 35                          | N/A              | 1              | 0              |
| c-0bb60bb-9078-4026-9358-db0407466528     | Rukia Agent             | ja           | 2025-10-24 10:09:51     | 2025-10-24 10:10:10     | 0.3                  | Smartphone Power Issue | 1.33                 | 35                          | N/A              | 1              | 0              |

### View and Download the Report

Steps to view and download a report:

1. On the **Reports** tab, navigate to the **Actions** column.

1. Select the vertical **Ellipsis** button. 

1. Select **History** to view all generated reports.

1. Select **Download** to save and view the required reports in CSV format.

### Sample Report Format

* **Format**: CSV file
* **File Name**: [ReportName]-YYYY-MM-DD-HH-MM-SS.csv   
<img src="../images/interaction-eva-sample-report.png" alt="Reports Access" title="Reports Access" style="border: 1px solid gray; zoom:100%;">

## Related Links

* [Scheduled Reports](../reports/scheduled-reports.md)

* [Evaluation Form Summary Report](../reports/evaluation-form-summary-report.md)

* [Agent Performance Report](../reports/agent-performance-report.md)

