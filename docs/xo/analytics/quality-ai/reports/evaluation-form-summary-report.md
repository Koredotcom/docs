--8<-- "includes/qualityai-reports-back-link.md"

# Evaluation Form Summary Report 

Summarizes evaluation metric adherence using selected forms, providing aggregated compliance statistics. This report focuses on metric-level performance across all interactions, highlighting adherence rates and fatal metric violations.

## Generate Evaluation Form Summary Report

Steps to generate the Evaluation Form Summary Report:

 1. On the **Reports** tab, select **+ New Report**.

1. From the **Create New Report** list, select the **Evaluation Form Summary Report**.  
    <img src="../images/evaluation-form-report.png" alt="Report Selection" title="Report Selection" style="border: 1px solid gray; zoom:50%;">

1. Select **Next**.

1. Configure the **General** section.

    1. Enter the **Report Name**.

    1. Enter a **Description**.
 
    1. Select **Next**             
        <img src="../images/create-new-report-general.png" alt="General" title="General" style="border: 1px solid gray; zoom:50%;">    

1. Configure the **Filters** and **Optional Fields** in the **Configure** section.

    1. Select an evaluation **Form** to define the data scope (at least one form you must select).

    1. Select a **Date** or date range.

    1. Select a **Timezone**.

    1. Configure the required **Filter**.

        * Select **+Add Filter** to add **Channel**, **Queue**, **Language**, **Agents**, **Agent Groups**, **Duration Status**.

        * Set the corresponding values for the selected/added filters.        

    1. Add **Optional Fields** to include additional metrics. 

    1. Enter one or more recipient emails in **Send Email to** (minimum one required). 

    1. Select **Next**.       
        <img src="../images/create-new-report-config.png" alt="Configure" title="Configure" style="border: 1px solid gray; zoom:50%;">

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


        !!! Note

            This report includes only evaluated interactions in all aggregated metrics. Interactions below the duration threshold are not included in any aggregated metrics.

## Report Fields

### Metric Adherence Summary Report   

This report summarizes adherence results for evaluation metrics across selected forms. It aggregates metric-level performance for all evaluated interactions, including total applicability, adherence counts, adherence percentages, and identification of fatal metrics.



| Metric Names                     | Is Fatal | Total Interactions | Total Applicable Interactions | Total Adhered Interactions | Metric Adherence Percentage |
|---------------------------------|----------|------------------|------------------------------|---------------------------|----------------------------|
| Agent Blaming the customer       | 0        | 3                | 3                            | 3                         | 100                        |
| COMMON AU - GEN & DET            | 0        | 3                | 1                            | 1                         | 100                        |
| CU leave date and agent return question | 0 | 3                | 1                            | 1                         | 100                        |
| STF CU agent responds            | 0        | 3                | 0                            | 0                         | 0                          |
| Speech Crosstalk                 | 0        | 3                | 3                            | 2                         | 66.67                      |


!!! Note

    This report includes only evaluated interactions in all aggregated metrics. Interactions below the duration threshold are not included in any aggregated metrics. 


### View and Download the Report

1. On the **Reports** tab, locate the report in the **Actions** column.

1. Select More options (⋮), then select **History**. 

1. Select **Download** to save the report as a CSV file.

### Report Format

* **Format**: CSV file

* **File Name**: [ReportName]-YYYY-MM-DD-HH-MM-SS.csv   
<img src="../images/sample-evaluation-form-summary-report.png" alt="Reports Access" title="Reports Access" style="border: 1px solid gray; zoom:80%;">

## Related Links

* [Scheduled Reports](../reports/scheduled-reports.md)

* [Agent Performance Report](../reports/agent-performance-report.md)

* [Interaction Evaluation and Conversation Analytics Report](../reports/interaction-conversation-analytics-report.md)