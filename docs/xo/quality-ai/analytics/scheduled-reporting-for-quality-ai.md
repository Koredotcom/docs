# Scheduled Reporting for Quality AI

The Quality AI scheduled reporting feature provides comprehensive data export capabilities, including scheduling, execution, and bulk operation management for AutoQA and Conversation Intelligence insights. This enables QA Managers, Supervisors, and authorized users to generate, schedule, and download detailed reports that cover interaction details, agent performance metrics, and evaluation metric adherence across configurable time periods and organizational filters.

## Key Benefits

* Export comprehensive data for external analysis and business intelligence integration.
* Create executive dashboards and meet compliance reporting requirements.
* Integrate quality metrics with business intelligence systems.
* Automate report generation and delivery with flexible scheduling.
* Support multi-language reporting capabilities.
* Maintain an audit trail of all report activities.

## Access Reports

* **Navigation**: **Quality AI > Analytics > Reports**.

* **Required Permission**: The Quality AI Reporting (auto-enabled for App Owners and Supervisors).  
<img src="../reports/images/reports.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

### Report Dashboard Views

Displays all reports created by or assigned to the current user. 

#### Report List Columns

* **Name**: Displays the unique identifier/title of the report. It shows the visibility status of the report (for example, “Private/Public”), indicating whether the report is private to you or shared with others.

* **Report Type**: Shows Evaluation Form/Interaction Evaluation/Agent Performance (for example, Evaluation Form, Interaction Evaluation, Agent Performance) to show what data or metrics the report covers.

* **Created By**: Shows the report owner or the creator of the report.

* **Last Run**: Shows the most recently executed or generated timestamp of the report.

* **Next Run**: Shows the scheduled run timestamp for the next automatic run of the report if scheduling is enabled. If scheduling is turned off, it shows ”Schedule Disabled”.

* **Schedule Toggle**: Shows the toggle switch to control or enable/disable automation directly from the list (automatic report execution).

    * **Off** (gray toggle): Scheduled execution is disabled.

    * **On** (blue toggle): Scheduled execution is enabled.     
    <img src="../reports/images/reports-list-column.png" alt="Reports List Column" title="Reports List Column" style="border: 1px solid gray; zoom:80%;">

#### Report Actions Menu

* **Actions**: Play (run immediately), Edit, and more options.

    * **Play Button**: Enables you to run or generate the report immediately.

    * **Edit Button**: Enables you to edit the report settings to modify its details (parameters).  

    * **Ellipsis (Vertical)/Button**: Click the vertical **Ellipsis** button to open a menu with additional actions, such as duplicate, share, delete, export, or view history.  
    <img src="../reports/images/ellipsis-expand-menu.png" alt="Report Actions" title="Report Actions" style="border: 1px solid gray; zoom:80%;">

    * **History**: Shows a chronological log of all report executions (generation history) including:

        * Successful generations (downloadable `CSV `files).

        * Failed attempts with error details.

        * Audit trail entries.

        * `CSV `filename format: `[ReportName]-YYYY-MM-DD-HH-MM-SS.csv`  
        <img src="../reports/images/history.png" alt="History" title="History" style="border: 1px solid gray; zoom:80%;">

    * **Clone/Duplicate**: Allows you to create a copy of the report to use as a template for new requirements or for use across different teams or projects, without affecting the original report.

    * **Add/Remove Favorite**: Enables you to tag the selected report as a favorite (or unfavorite) for quick access and critical monitoring purposes.   
    <img src="../reports/images/favorite.png" alt="Favorite" title="Favorite" style="border: 1px solid gray; zoom:80%;">

    * **Switch to Public/Private**: Enables you to control the report’s accessibility to specific groups or individuals across the organization by toggling its status between public and private.

        * **Private Report Access**: Only accessible to the report creator; only the creator can modify or delete schedules.

        * **Public Report Access**: Accessible to all users with Quality AI Reporting permission; any authorized user can modify.  
        <img src="../reports/images/switch-to-privtae.png" alt="Switch to Public-private" title="Switch to Public-private" style="border: 1px solid gray; zoom:50%;">

    * **Delete**: Allows you to remove outdated report configurations and associated metadata to comply with data retention policies.

#### Tabs/Views

* **My Reports**: Enables you to view and manage all the reports that you have created or assigned to the current user (currently active). This provides quick access to each report, along with tools (Play) to run, edit, or schedule them.

* **All Reports**: Shows all reports accessible within the organization or those available organization-wide based on permissions.  
<img src="../reports/images/all-reports.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

* **Favorite**: Filtered view displaying only reports marked as favorites by the user.      

#### Search and Filter

* **Search Bar**: Allows searching reports by name, type, or other attributes.  
    <img src="../reports/images/search-bar.png" alt="Bulk Reports" title="Bulk Reports" style="border: 1px solid gray; zoom:80%;">

* **Bulk Operations**: Select multiple reports using checkboxes.

    * **Bulk Run**: Executes all selected reports immediately or simultaneously.
    <img src="../reports/images/my-reports.png" alt="Bulk Reports" title="Bulk Reports" style="border: 1px solid gray; zoom:80%;">

    * **Bulk Delete**: Removes all selected reports (requires confirmation).  
    <img src="../reports/images/delete-bulk-report.png" alt="Bulk Reports" title="Bulk Reports" style="border: 1px solid gray; zoom:80%;">
            
## Create New Report

1. Navigate to **Quality AI > Analytics > Reports > + New Report**.

1. Click **+ New Report** to initiate the report creation workflow.
<img src="../reports/images/new-report-selection.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

1. Choose a type of report from the following that you want to create.

    * **Evaluation Form Summary Report**

    * **Agent Performance Report**

    * **Interaction Evaluations And Conversation Analytics Report**

1. Select the **Evaluation Form Summary Report** to evaluate quality adherence metrics.
<img src="../reports/images/create-new-report-category.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

    !!! note

        The user must select a report type before proceeding to General Configuration.

### Interaction Evaluations & Conversation Analytics

Comprehensive conversation data export with mandatory evaluation form selection and customizable field inclusion.

#### General

Captures the basic report metadata and identification information.

1. Enter a unique identifier **Name** for the report.

1. Enter a meaningful **Description** explaining the report's purpose and intended audience. 

1. Click **Next** to proceed.
<img src="../reports/images/create-new-report-general.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

#### Configuration

The **Configuration** tab displays different fields based on the selected report type. It defines report-specific parameters, including data sources, time ranges, filters, and scope. 
<img src="../reports/images/create-new-report-config.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

1. Select an **Evaluation Form** to determine which interactions are included based on evaluation form assignments (must select at least one evaluation form). 

1. Select a **Date** or a date range for report generation.

    * **Standard Ranges**: Today, Yesterday, Last 7 days, Last 30 days, Last 90 days, and so on.

    * **Custom Range**: Select specific start and end dates.

1. Select a standard **Time Zone** (device local Time Zone) to match the reporting accuracy.

1. Select the required **Filter** types that you need to apply:

    * **Channel**

    * **Queue**

    * **Language**

    * **Agents**

1. Add a value against the selected filter.
 
    * **Channel**

        * Select **Channel** to set the value to **Chat** or **Voice**.

    * **Language**

        * Select a **Language** that is configured for Quality AI.

        * Defaults to the application's default language.

        * Affects: 

            * `CSV` header translations.

            * Email notification language.

            * Error messages and system notifications.

1. Click **+Add Filter** to add more.  
<img src="../reports/images/add-filter.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

1. Add the aggregated metrics in the **Optional Fields** if required.

1. Enter email addresses to send automated reports in the selected language.

1. Click **Next** to proceed. 

#### Schedule

Allows authorized users to automate report generation repeatedly, ensuring timely delivery without manual effort.

1. Choose **Run on Demand** or **Schedule** to automate report generation.

    * **Run on Demand**: Select this to generate the report manually when needed.

    * **Schedule**: Select this to automate recurring report generation and delivery based on the chosen frequency and settings.  
    <img src="../reports/images/edit-report-schedule.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

1. Define how often to generate the report. Choose one of the following frequency options:

    * **Hourly**: Generate the report every hour at the specified minute (0-59). 

    * **Daily**: Generates the report once a day at the specified hour and minute.  
    <img src="../reports/images/create-new-report-schedule-daily.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

    * **Weekly**: Generates the report once a week on the selected day, hour, and minute.  
    <img src="../reports/images/create-new-report-schedule-weekly.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

    * **Monthly**: Generates the report on the chosen day of each month at the specified hour and minute.  
    <img src="../reports/images/create-new-report-schedule-monthly.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

    * **Quarterly**: Generates the reports once per quarter, based on the selected month and date.  
    <img src="../reports/images/create-new-report-schedule-monthly.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

    * **Yearly**: Generates the report once a year on the selected month and date at the specified time.  
    <img src="../reports/images/create-new-report-schedule-yearly.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;">

        * **Start Date**: Select when the first report should run (subsequent reports follow the chosen frequency).

        * **Timezone**: Select the timezone for scheduling and timestamps. Defaults to your device’s local timezone (for example, Asia/Kolkata).

        !!! note

            Enables you to generate the summary report and email the `CSV `to authorized users based on the configured filters and evaluation forms.

1. Click **Save** to confirm your schedule. The system starts generating reports automatically based on your settings.

### Agent Performance Report Configuration

Export performance scorecard data with agent-level metrics.

**Mandatory Configuration**:

* **Agent Scorecard Selection**: Select one “Agent Scorecard" or "Scorecard” to determine which performance metrics and agents to include. The Agent Attributes option allows the inclusion of custom agent metadata fields.

    !!! note

        Only agents with assigned scorecards will appear in the report.

* **Date Range**: Select a date or date range from the calendar.

* **Time Zone**: Select a time zone that ensures accurate timestamp alignment for reporting accuracy.

* **Filter Selection**: Select the required **Filter** types to segment summary data by organizational dimensions.

    * Available filter types**: Queues, Channel, Language, Agents, Agent Groups.

* **Optional Fields**: Add the aggregated metrics in the **Optional Fields** if required.
 
* **Send Email to**: Enter at least one recipient email address.

### Evaluation Form Summary Report Configuration

Export evaluation metric adherence data with aggregated compliance statistics.

**Mandatory Configuration**:

* **Evaluation Form Selection**: Select one evaluation form, which determines which evaluation metrics to include in the summary. You must select at least one evaluation form. 

    !!! note

        The report summarizes adherence across all questions/metrics in selected forms. It aggregates evaluation metrics within a selected timeframe.

* **Date Range**: Select a date or date range from the calendar.

* **Time Zone**: Select a time zone that ensures accurate timestamp alignment for reporting accuracy.

* **Filter Selection**: Select the required **Filter** types to segment summary data by organizational dimensions. 

    **Available filter types**: Queues, Channel, Language, Agents or Agent Groups.

* **Optional Fields**: Add the aggregated metrics in the **Optional Fields** if required.

* **Send Email to**: Enter at least one recipient email address.

## Edit Report

Modify the report’s settings, including name, description, data scope, filters, recipients, and schedule, then save to activate automated generation.

Edit the following:

* Click the **Edit** button to open the report configuration.

* Modify the **Name** and **Description**.

* Modify the **Evaluation Form**, **Date Range**, **Timezone**, **Filter**, and **Recipient Email** addresses.

* Modify **Run on Demand** or **Schedule** with the desired frequency (**Hourly, Daily, Weekly, Monthly, Quarterly, Yearly**) and **Start Date**.

* Click **Save** to update the schedule and activate automated report generation.

* Click **Delete** from the **Ellipsis** menu to remove report configuration and all schedule settings.  
<img src="../reports/images/edit-report-general.png" alt="Reports" title="Reports" style="border: 1px solid gray; zoom:80%;"> 
