--8<-- "includes/qualityai-reports-back-link.md"

# Interaction Evaluation and Conversation Analytics Report 

Exports detailed conversation data based on selected evaluation forms, with customizable fields. This report provides detailed insights into individual interactions, including sentiment analysis, topics discussed, agent performance metrics, evaluation scores, and AI-generated justifications for Gen AI by question metrics (optional).

## Generate the Interaction Evaluations and Conversation Analytics Report

Steps to generate the report:

1. On the **Reports** tab, Select **New Report**.

1. From the **Create New Report** list, select the **Interaction Evaluations and Conversation Analytics Report**.  
<img src="../images/interaction-report.png" alt="Report Selection" title="Report Selection" style="border: 1px solid gray; zoom:50%;">

1. Select **Next** to proceed.

1. Complete the **General** section.

    * Enter a unique **Name** for the report.

    * Provide a clear **Description** of the report's purpose.
 
    * Select **Next**.        
    <img src="../images/interactions-eva-report.png" alt="General" title="General" style="border: 1px solid gray; zoom:50%;">   

1. Configure the **Filters and Options**.

    * Select an evaluation form to set the data scope and applicable interactions. 

    * Select a **Date** or date range (for example, Current day, Previous day, Last 7 days).

    * Select a **Timezone** (defaults to the device's local timezone).

    * Select the required **Filter**.
    
        * Select **+Add Filter** to add Channel, Queue, Language, Agents.

        * Set values for the selected filters. 

    * Add **Optional Fields** to include additional metrics or attributes in the report.     
    
        !!! Note

            AI Justification is an optional field available only for Gen AI by question metrics and provides: 

            * AI-generated explanations for each evaluation score.

            * Not available for the Interaction Details Report for Quality AI.

            * Included in the CSV only when:

                * The evaluation form contains Gen AI by question metrics, and

                * AI Justification is explicitly selected under Optional Fields.

    * Enter one or more recipient emails in **Send Email to** receive automated reports (minimum one required). 

    * Select **Next**.  

        <img src="../images/interactions-config.png" alt="Configure" title="Configure" style="border: 1px solid gray; zoom:50%;">

1. Configure the **Schedule**. 

    * Choose **Run on Demand** or **Schedule**.

        * Select **Run on Demand** to generate the report immediately using the current configuration without scheduling.

        * Select **Schedule** to automate report generation at regular intervals based on a defined start time and frequency or repeat.         
        <img src="../images/interaction-run-on-demand.png" alt="Schedule" title="Schedule" style="border: 1px solid gray; zoom:50%;">

1. Choose a **Frequency** or **Repeat** (Hourly/Daily/Weekly/Monthly/Quarterly/Yearly).    
<img src="../images/interaction-conversation-analytics.png" alt="Repeat" title="Repeat" style="border: 1px solid gray; zoom:50%;">

1. Select a **Start Date** to start the schedule.

1. Select a **Timezone** (defaults to your device's local timezone).

1. Select **Instant Run** to generate the report immediately.

1. Select **Save** to activate the schedule.  

## Report Fields

### Conversation Summary 

This report analyses agent interactions by summarizing each conversation’s sentiment, duration, and evaluation scores, along with key performance metrics, including total interactions, scorecard results, evaluation and audit scores, failure rates, coaching assignments, adherence indicators, and AI Justification (when enabled for Gen AI by question metrics).

| Conversation ID  |Agent  | Language | Start Time  | End Time  | Duration (min) | Topic  | Sentiment Score | Kore Evaluation Score | Audit Score | Is Passed | Escalation |
|------------------------------------------|-------------------------|--------------|--------------------------|--------------------------|----------------------|----------------------|------------------------|-----------------------------|------------------|----------------|----------------|
| c-01ca24e-4b50-4d38-a1d1-ddd0bd371258     | John K StagingXo     | en           | 2025-10-24 21:23:17     | 2025-10-24 21:25:42     | 2.4                  | Flight Booking       | 5.85                   | 78                          | N/A              | 0              | 0              |
| c-0634784-37ed-4550-bb73-3d0e88ca2a32     | Lily A              | ja           | 2025-11-11 09:36:50     | 2025-11-11 09:38:51     | 2                    | Flight Booking       | 6.91                   | 53                          | N/A              | 1              | 0              |
| c-0723048-e40c-4b37-9c57-b29758d34944     | John K StagingXo     | en           | 2025-11-11 07:09:51     | 2025-11-11 07:17:53     | 8                    | Service Issue        | 1.91                   | 57                          | 5                | 1              | 0              |
| c-0a8c012-a2d2-4379-a9ca-b0c2d89e7e50     | John A              | ja           | 2025-10-24 10:10:17     | 2025-10-24 10:11:06     | 0.8                  | Password Reset       | 1.33                   | 35                          | N/A              | 1              | 0              |
| c-0bb60bb-9078-4026-9358-db0407466528     | John A             | ja           | 2025-10-24 10:09:51     | 2025-10-24 10:10:10     | 0.3                  | Smartphone Power Issue | 1.33                 | 35                          | N/A              | 1              | 0              |

### View and Download the Report

Steps to view and download a report:

1. On the **Reports** tab, navigate to the **Actions** column.

1. Select the vertical **Ellipsis** button. 

1. Select **History** to view generated reports.

1. Select **Download** to save the report in CSV format.

### Report Format

* **Format**: CSV 

* **File Name**: [ReportName]-YYYY-MM-DD-HH-MM-SS.csv  
<img src="../images/interaction-eva-sample-report.png" alt="Reports Access" title="Reports Access" style="border: 1px solid gray; zoom:100%;">

## Related Links

* [Scheduled Reports](../reports/scheduled-reports.md)

* [Evaluation Form Summary Report](../reports/evaluation-form-summary-report.md)

* [Agent Performance Report](../reports/agent-performance-report.md)

