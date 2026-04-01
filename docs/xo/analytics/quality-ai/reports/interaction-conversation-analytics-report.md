--8<-- "includes/qualityai-reports-back-link.md"

# Interaction Evaluation and Conversation Analytics Report 

Exports detailed conversation data based on selected evaluation forms, with customizable fields. This report provides detailed insights into individual interactions, including sentiment analysis, topics discussed, agent performance metrics, evaluation scores, and optional AI-generated justifications for Gen AI by question metrics.

## Generate the Report

Steps to generate the Interaction Evaluation and Conversation Analytics Report:

1. On the **Reports** tab, Select **+ New Report**. 

1. From the **Create New Report** list, select the **Interaction Evaluations and Conversation Analytics Report**.  
<img src="../images/interaction-report.png" alt="Report Selection" title="Report Selection" style="border: 1px solid gray; zoom:50%;">

1. Select **Next**.

1. Configure the **General** settings section.
    1. Enter a unique **Name** for the report.

    1. Enter a **Description**.
 
    1. Select **Next**.         
        <img src="../images/interactions-eva-report.png" alt="General" title="General" style="border: 1px solid gray; zoom:50%;">   

1. Configure the **Filters** and **Optional Fields** in the **Configure** section.

    1. Select an evaluation **Form** to define the data scope (at least one form you must select).

    1. Select a **Date** or date range.

    1. Select a **Timezone**.

    1. Configure the required **Filter**.

        * Select **+Add Filter** to add **Channel**, **Queue**, **Language**, **Agents**, **Agent Groups**, **Duration Status**.

        * Set the corresponding values for the selected/added filters. 
    
    1. Add **Optional Fields** to include additional metrics.  

        !!! Note
        
            AI Justifications, available only for Gen AI by Question metrics, provide AI-generated explanations for each evaluation score. They appear in Interaction Evaluations and Conversation Analytics reports, and are accessible via APIs.
                    
    1. Enter one or more recipient emails in the Send Email to fields to receive automated reports (minimum one required).  

    1. Select **Next**.   
        <img src="../images/interactions-config.png" alt="Configure" title="Configure" style="border: 1px solid gray; zoom:50%;">

        !!! Note

            Each scorecard determines eligibility for evaluation. Threshold configuration can evaluate an interaction for one scorecard and exclude it from another.  

1. Configure the **Schedule** section.
    1. Choose **Run on Demand** or **Schedule**.

        1. **Run on Demand**: To generate the report immediately.
    
        1. **Schedule**: To generate the report automatically.
    
    1. If you select **Schedule**:

    1. Choose a **Frequency or Repeat** (Hourly, Daily, Weekly, Monthly, Quarterly, or Yearly).

    1. Select a **Start Date** and **Timezone**.

    1. Select **Save**.   
        <img src="../images/interaction-run-on-demand.png" alt="Schedule" title="Schedule" style="border: 1px solid gray; zoom:50%;">

## Report Fields

### Conversation Summary 

This report analyses agent interactions by summarizing each conversation’s sentiment, duration, and evaluation scores, along with key performance metrics, including total interactions, scorecard results, evaluation and audit scores, failure rates, coaching assignments, adherence indicators, and AI Justification (when enabled for Gen AI by question metrics).


| Resolution Compliance (Fatal) | Resolution Weight | Resolution Violation | CU Leave Question | CU Fatal | CU Weight | CU Violation | STF AU Responds | STF AU Fatal | STF AU Weight |
|-------------------------------|-----------------|--------------------|-----------------|----------|-----------|--------------|----------------|-------------|---------------|
| 0                             | 20              | 10                 | 0               | 0        | 11        | 23           | 0              | 0           | 19            |
| 1                             | 0               | 0                  | 20              | 10       | 1         | 0            | 11             | 23          | 0             |
| 0                             | 0               | 19                 | 7               | 0        | 0         | 23           | 10             | 0           | 0             |
| 0                             | 20              | 10                 | 0               | 0        | 11        | 23           | 0              | 0           | 19            |
| 7                             | 0               | 0                  | 23              | 10       | 0         | 0            | 20             | 10          | 0             |
| 0                             | 11              | 0                  | 0               | 0        | 0         | 0            | 0              | 0           | 0             |


!!! Note

    The report shows all interactions, and you can use the Duration Status filter to refine the results. The system assigns a null value to Duration Status for earlier ingested interactions.

### View and Download the Report

Steps to view and download a report:

1. On the **Reports** tab, locate the report in the **Actions** column.

1. Select More options (⋮), then select **History**. 

1. Select **Download** to save the report as a CSV file.

### Report Format

* **Format**: CSV 

* **File Name**: [ReportName]-YYYY-MM-DD-HH-MM-SS.csv  
    <img src="../images/interaction-eva-sample-report.png" alt="Reports Access" title="Reports Access" style="border: 1px solid gray; zoom:100%;">

<hr/>

**Related Resources**

* [Scheduled Reports](../reports/scheduled-reports.md)
* [Evaluation Form Summary Report](../reports/evaluation-form-summary-report.md)
* [Agent Performance Report](../reports/agent-performance-report.md)
