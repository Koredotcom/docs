# Monitoring Custom Script Runs and Logs

**Monitoring Custom Scripts** provides a comprehensive view of custom script performance across executions on the Agent Platform, including API nodes, Function nodes, and API calls (both internal and external to Agent Platform) for a selected period. It allows you to track run-level data, view logs, and analyze key metrics. With filtering and search capabilities, the feature enables precise analysis, effective troubleshooting, and proactive issue resolution, ensuring optimal script performance and usage.

**Benefits**

Monitoring custom script runs and logs offers the following benefits:

* **Detailed Analysis**: Custom script monitoring enables an in-depth analysis of the script’s performance across all executed runs, allowing for the examination of associated run-based metadata, input and output logs, and log levels associated with each log.
* **Measure Usage**: Tracking scripts across multiple runs and logs helps detect usage and outcome patterns.
* **Optimization**: Regular monitoring helps track key metrics to ensure optimal custom script performance over time.
* **Cost Control**: Monitoring total script runs and their statuses enables analysis of failure trends, consumption spikes, and alignment with expected outcomes, providing improved cost visibility and control.
* **Troubleshooting and Maintenance**: Tracking errors and failures across runs, along with log-level information, helps identify and troubleshoot issues.


## Key Features

* **Column Filters** enable you to view specific records by setting a column value or combining multiple filters using logical operators. [Learn more](../monitoring/monitoring-custom-scripts.md/#filter-data-by-columns){:target="_blank"}.
* **Time-based filters** provide a comprehensive view of the selected script’s performance across runs/logs for a specific past date or date range. [Learn more](../monitoring/monitoring-custom-scripts.md/#time-based-filters){:target="_blank"}.
* **Search** lets you look up a specific script run(s) using the *Run ID* and other *String* type column values for runs and logs.

<table>
  <tr>
   <td>
    <strong>Section</strong>
   </td>
   <td>
<strong>Columns used for Search</strong>
   </td>
  </tr>
  <tr>
   <td>All Runs
   </td>
   <td>
<ul>

<li>Run ID</li>

<li>Deployment version</li>

<li>Function</li>

<li>Source Type</li>

<li>Source</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Logs
   </td>
   <td>
<ul>

<li>Log ID</li>

<li>Log level</li>

<li>Log message</li>
</ul>
   </td>
  </tr>
</table>


* Hovering over specific metrics displays a tooltip that provides additional information about the metric's purpose and significance.
   <img src="../images/hover-over-metrics.png" alt="hover over metrics" title="hover over metrics" style="border: 1px solid gray; zoom:75%;">

* Hover over the **Run ID** or **Log ID** for a record and click the **Copy** icon to copy the ID. 
   <img src="../images/copy-run-id.png" alt="copy run id" title="copy run id" style="border: 1px solid gray; zoom:75%;">
 

* When selecting a date range filter, you can obtain **hourly performance analysis** for a script on a specific day or review **daily performance trends**.
* You can change the current script selection in the script dropdown to view the runs and log data for another script.
   <img src="../images/current-script-selection.png" alt="current selection" title="current selection" style="border: 1px solid gray; zoom:75%;">

* Successful script runs are marked with a green **success** label, while failed runs are displayed in red.
     <img src="../images/status-scripts.png" alt="status scripts" title="status scripts" style="border: 1px solid gray; zoom:75%;">

* Scripts that are currently being deployed in the script wizard (under **Settings** > **Manage Custom Scripts** section) are marked as **In Progress**.
   <img src="../images/in-progress-deployments.png" alt="in progress" title="in progress" style="border: 1px solid gray; zoom:75%;">

* The **Metrics Summary** showcases the key performance metrics of the selected custom script across all executed runs. [Learn more](../monitoring/monitoring-custom-scripts.md/#performance-metrics-summary){:target="_blank"}.
* The **table view** summarizes key metadata for successful, failed, and in-progress runs of the selected script, providing quick insights and enabling the monitoring of run-specific response times, analysis of the source and its type, viewing of failed runs and their failure rate, and detailed review of run logs.
* Click on each script run record to see the record-level view of the log based on the **Run ID**. [Learn more](../monitoring/monitoring-custom-scripts.md/#record-view-log-specific-view-for-a-run){:target="_blank"}.
* Click the **Sort** filter in the following columns to view the data in ascending or descending order by execution date:
    * **Executed on** (All Runs section)
         <img src="../images/executed-on.png" alt="executed on" title="executed on" style="border: 1px solid gray; zoom:75%;">

    * **Timestamp** (Logs in the record view) 
          <img src="../images/timestampcolumn.png" alt="timestamp" title="timestamp" style="border: 1px solid gray; zoom:75%;">
 

* Click the **Logs** tab to view metrics and summary information on each run-based log recorded for the script.
* On the Record View screen, click the **Up** and **Down** navigation arrows to access the previous and next records. 
    <img src="../images/up-down-buttons.png" alt="up and down buttons" title="up and down buttons" style="border: 1px solid gray; zoom:75%;">

* Use the “<code>K</code>” and “<code>J</code>” keys on your keyboard to navigate through records on the Record View page. Press “<code>K</code>” to view the previous record and “<code>J</code>” to view the next. 

    <img src="../images/keyboard-shortcuts.png" alt="keyboard shortcuts" title="keyboard shortcuts" style="border: 1px solid gray; zoom:75%;">

* If no logs are configured in the script run, the following message is displayed. 
    <img src="../images/no-logs.png" alt="no logs" title="no logs" style="border: 1px solid gray; zoom:75%;">

* Log visibility depends on how the script is configured by the developer:
    * **Failure runs** can generate logs if logging is implemented correctly. 

    * For **in-progress** runs, logs using **default logging** appear only after the run completes. 

    * With the **custom <code>korelogger</code> library**, logs populate in real-time, with support for structured log levels (e.g., info, debug, error), making it ideal for live monitoring and debugging.


## Best Practices

* A script you want to analyze must be consumed either via API calls or through the execution of the API/Function node.
* Analyze successful versus failed runs to compare script performance over time and identify failure patterns using failure rates, status, and deployment versions for a function that is failing.
* Identify script runs with low or high response times and the overall P90 and P99 thresholds, and isolate underperforming runs for further investigation.
* Apply time-based and record filters for focused and accurate analysis.
* Analyze the source and source type of a script run to determine the cause for failure, delayed response time, and other performance issues.
* Analyze the input and output for each script run (identified by **Run ID**) using Log data like *Log ID*, *Log level*, *Log message*, and *Timestamp*.
* Analyze aggregate metrics, including **Total Runs**, **Response Time** (P90 and P99), and **Failure Rate** for all script executions in one place. This helps uncover performance insights, diagnose errors, and optimize script usage.
* Use the input and output code editors available in the record view to analyze and troubleshoot the script run logs.
* Perform script tracing using the record view for a specific run. [Learn more](../monitoring/monitoring-custom-scripts.md/#record-view-log-specific-view-for-a-run){:target="_blank"}.


## Access Monitoring Custom Scripts

To access the feature, follow the steps below:

1. [Navigate](https://docs.kore.ai/agent-platform/administration/overview/#access-settings-console){:target="_blank"} to the **Settings** Console.
2. On the left menu, select **Monitoring** > **Custom scripts**.
   <img src="../images/access-custom-script-monitoring.png" alt="custom scripts monitoring" title="custom scripts monitoring" style="border: 1px solid gray; zoom:75%;">

3. If this is your first time accessing the feature, select the desired script from the dropdown menu shown below.  When you select a script, it is indicated as the current and default selection, which can be changed later. 
    
    <img src="../images/select-script.png" alt="select script" title="select script" style="border: 1px solid gray; zoom:75%;">


**Key Considerations** 

* At least one custom script must be deployed and executed through an API call or an API/Function node to make this feature available.
* If no custom script has been deployed and executed, or if it has been deployed but not yet executed, the following message is displayed. 
   
      <img src="../images/no-data-to-display.png" alt="no data" title="no data" style="border: 1px solid gray; zoom:75%;">

* If a previously deployed and executed script is undeployed, only the existing run-level and log data remain accessible. No new runs or logs will be generated unless the script is redeployed and executed again. 
 

The system loads the **Monitoring custom scripts** feature with data for the last week (from the current date), which is the default time range selection.

If you have used the feature before, the data from your previous script selection is loaded for the past 7 days. The default label “**This Week**” is displayed. You can select the required date or a date range using the widget or choose a value from the dropdown list. 

<img src="../images/one-week-default.png" alt="default calendar selection" title="default calendar selection" style="border: 1px solid gray; zoom:75%;">

## Custom Scripts Monitoring Information

This feature provides a centralized view of actionable insights into run-level and log-level details of the selected script that has been deployed and executed in your account. There are two sections to enable detailed analysis of each run and the associated execution logs:

* **All Runs:** Shows data for all script runs, including status, deployed version, response time, function, source, and more.
* **Logs:** Displays log details for the functions executed within the script, including input, output, errors, informational messages, and debug data.


### Customize Data View

The key features for customizing the data in the page include:

* **Script Name Filter**: Use this to select and view data for a specific script you want to monitor. You can also choose another deployed and executed script from the list to view its metrics and logs.
* **Time Selection Filter**: Required to analyze script runs data for a specific period in the past or current day. [Learn more](../monitoring/monitoring-custom-scripts.md/#time-based-filters){:target="_blank"}.
* **Filter By Option**: An optional multi-field, multi-level filter for targeted analysis of runs and logs. [Learn more](../monitoring/monitoring-custom-scripts.md/#filter-data-by-columns){:target="_blank"}.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p><ul><li>In the <b>All Runs</b> section, all column fields except <b>Executed On</b> can be used as filters.</li>
<li>In the <b>Logs</b> section, all column fields except <i>Timestamp</i> can be used as filters.</li></ul></p></div>

### All Runs Section

This section displays key metrics and script run-based metadata to analyze the script’s performance. 

#### Performance Metrics Summary

The UI summarizes key metrics for the selected period, offering actionable insights into the script’s overall performance.

* **Total Runs**: The total number of runs executed by the script since its deployment in your account. The metric reflects the script’s execution speed and efficiency, helping identify performance issues and optimize responsiveness. It also reflects script usage in your account for the calculation and billing analysis of custom scripts.
* **Response Time**: The P90 and P99 response times indicate the thresholds below which 90% and 99% of responses fall, respectively, indicating script consistency. Lower values reflect reliable speed, while higher values suggest performance issues. For example,
    * If a script's P90 is 100 seconds, it means that 90% of the runs are completed within 100 seconds or less.
    * If a script’s P99 is 100 seconds, it means that 99% of the runs are completed within 100 seconds.
* **Failure Rate**: Indicates the number of script runs that failed with an error code out of the total runs executed since deployment. For example, if 1 run fails out of 3, the failure rate displayed is 33.33%.
    
    <img src="../images/failure-rate.png" alt="failure rate" title="failure rate" style="border: 1px solid gray; zoom:75%;">


#### Run-level Metadata

This section displays a dynamic table with the following data indicating the run-level performance of the script. 

<table>
  <tr>
   <td><strong>Column Name</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td rowspan="3" ><strong>Run ID</strong>
   </td>
   <td rowspan="3" >The unique ID associated with the custom script’s run.
   </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
   <td rowspan="3" ><strong>Status</strong>
   </td>
   <td rowspan="3" >The script’s execution status. The possible values include:
<ul>

<li><strong>Success</strong>: The run is successful.</li>

<li><strong>Failed</strong>: The run failed.</li>

<li><strong>In Progress</strong>: The deployed script is being executed.</li>
</ul>
   </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
   <td><strong>Deployment Version</strong>
   </td>
   <td>It indicates the version of the script deployed in the specific run; each time you deploy a script, under <strong>Settings</strong> > <strong>Manage custom scripts, </strong>and execute it via API endpoints or node runs, the version number is incremented.
   </td>
  </tr>
  <tr>
   <td rowspan="6" ><strong>Response Time</strong>
   </td>
   <td rowspan="6" >The time taken to execute the function within the script and generate a response. This field is empty for runs with a status of <strong><em>Failed</em></strong> or <strong><em>In Progress</em></strong>.
   </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
   <td><strong>Function</strong>
   </td>
   <td>The function that was executed within the script.
   </td>
  </tr>
  <tr>
   <td rowspan="3" ><strong>Executed on</strong>
   </td>
   <td rowspan="3" >The date and time of the run execution.
   </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
   <td rowspan="3" ><strong>Source Type</strong>
   </td>
   <td rowspan="3" >Indicates the source type of the run execution. Options include <em>Tool</em> (from the tool flow) and <em>API</em> (from an API endpoint).
   </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
   <td><strong>Source</strong>
   </td>
   <td>The source name that triggered the script run. For example, if the tool named <strong>Banking</strong> triggered the run via its <strong>Function </strong>node, it is displayed as the source.
   </td>
  </tr>
</table>



### Logs Section

This section displays the key metrics and information captured in logs, providing insights into how the script performed during execution. 


#### Performance Metrics Summary

The UI summarizes key metrics for the selected period, offering actionable insights into the logs captured during the script execution.

* **Total Logs**: The total number of logs recorded during the script’s execution.
   <img src="../images/total-logs.png" alt="total logs" title="total logs" style="border: 1px solid gray; zoom:75%;">


The **Total Logs** metric helps determine:

* **Script activity level** – how many actions or events were logged during execution? 

* **Debugging depth** – more logs can indicate detailed logging, which helps with debugging. 

* **Execution complexity** – a high number of logs may suggest the script performs multiple operations or involves several functions. 

* **Error visibility** – helps assess whether sufficient logging is available to trace issues or monitor script behavior effectively.


#### Log-level Metadata

This section displays a dynamic table with the following log-level data:


<table>
  <tr>
   <td><strong>Column Name</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td rowspan="3" ><strong>Log ID</strong>
   </td>
   <td rowspan="3" >The unique ID of the log.
   </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
   <td rowspan="3" ><strong>Log level</strong>
   </td>
   <td rowspan="3" >The type of action recorded in the log during the execution of a script’s function. Possible types include:
<ul>

<li><strong>Stdout</strong> – Standard output</li>

<li><strong>Stderr</strong> – Standard error</li>

<li><strong>Info</strong> – Informational message</li>

<li><strong>Debug</strong> – Debugging information.</li>

<li><strong>Warning</strong> – Warning message</li>

<li><strong>Error</strong> - Execution error. <a href="https://docs.kore.ai/agent-platform/settings/monitoring/monitoring-custom-scripts/#enhanced-logging-for-gvisor-monitoring">Learn more</a> about the supported logging options for the gVisor service.</li>
</ul>
   </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
   <td><strong>Log Message</strong>
   </td>
   <td>Indicates the message recorded in the log when a specific action occurs during a script run.
   </td>
  </tr>
  <tr>
   <td rowspan="6" ><strong>Timestamp</strong>
   </td>
   <td rowspan="6" >The date and time when the log entry was recorded.
   </td>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
  <tr>
  </tr>
</table>



## Time-based Filters

Use the time selection filter to view and monitor script runs/logs within a specific period. This allows you to focus on specific runs to track changes or perform targeted debugging.


<div class="admonition note">
<p class="admonition-title">Note</p>
<p><ul><li><b>This Week</b> is the default selection, which displays data for the past 7 days from the current date.</li>
<li>Data is displayed only if the selected script’s runs were executed during the selected period.</li></ul></p></div>

Time selection is available for the past and current period, including the ones listed below:

* **All Time**: Displays the data for all runs since the account was created.
* **Today**: Includes runs and logs data on the current day.
* **Yesterday**: Includes data generated on the previous day.
* **This Week**: Displays data for all the days in the current week.
* **This Month**: Displays data for all the days in the current month.
* **Last Month**: Displays data for all the days in the previous month.
* **Last 30 Days**: Displays data for the past 30 days from the current date.
* **Last 90 Days**: Displays logs for the past 90 days from the current date.
* **This Year**: Displays logs for all the days in the current year.
* **Last Year**: Displays logs for all the days in the past year.


### Steps to Set Time Range

1. [Navigate](../monitoring/monitoring-custom-scripts.md/#access-monitoring-custom-scripts){:target="_blank"} to the **Monitoring Custom Scripts** feature.
2. Click the time selection dropdown.
   <img src="../images/time-selection-dropdown.png" alt="time selection" title="time selection" style="border: 1px solid gray; zoom:75%;">

3. Select the required period on the left panel, or select a specific date, month, or year on the calendar widget (the current day is the default selection).
4. Click **Apply**.
   <img src="../images/calendar-options.png" alt="calendar options" title="calendar options" style="border: 1px solid gray; zoom:75%;">

The relevant data is displayed for the selected period.

**Key Considerations and Tips**

The date range is automatically selected on the calendar widget once you select the period and is displayed at the bottom of the widget. 

<img src="../images/auto-selection.png" alt="auto selection" title="auto selection" style="border: 1px solid gray; zoom:75%;">

You can select a specific month or year from the relevant dropdown list and switch to different months by clicking the **forward/backward** arrows. 

<img src="../images/calendar-nav.png" alt="calendar" title="calendar" style="border: 1px solid gray; zoom:75%;">


To set a specific past date as the start date, click on the desired date in the widget. The same date is set as the end date unless you choose a different one specifically.

The current date or date range selection is retained until you change it.


## Filter Data by Columns

You can narrow down the information displayed for custom script runs and logs by applying **custom column filters**. This functionality is similar to the **Filter** in the Audit Logs feature. [Learn more](https://docs.kore.ai/agent-platform/settings/monitoring/audit-logs/#filter-audit-logs){:target="_blank"}. 

Additionally, the filter for custom scripts includes the **contains** operator, which matches results that include a specific keyword or value you enter. For example, the following image depicts checking if the **Log message** contains the string “*Adding*.”  
 
<img src="../images/contains-adding.png" alt="contains adding" title="contains adding" style="border: 1px solid gray; zoom:75%;">


These filters allow you to select specific column values, compare the chosen or entered values, and apply logical operators across columns for multi-level filtering, providing targeted, custom data on the UI.

Filter customization streamlines tracking and debugging of script runs at a detailed level, enhancing the user experience.


### Steps to Add a Custom Filter

1. [Navigate](../monitoring/monitoring-custom-scripts.md/#access-monitoring-custom-scripts){:target="_blank"} to the **Monitoring Custom Scripts** page.
2. Select the **All runs** or **Logs** tab based on the data you want to filter.
3. Click the **Filter** icon on the top right.
4. Click **+ Add Filter**.
    
    <img src="../images/access-filter.png" alt="access filter" title="access filter" style="border: 1px solid gray; zoom:75%;">

5. In the **Filter By** window, select the required option from the **Select** **Column**, and Select **Operator** dropdown lists, and enter the value you want to set.
   <img src="../images/choosing-filter.png" alt="choosing filter" title="choosing filter" style="border: 1px solid gray; zoom:75%;">
 
    <div class="admonition note">
    <p class="admonition-title">Note</p>
    <p>You can enter multiple values in the <b>Enter Value</b> field by pressing the <i>Tab</i> key after each entry. The system will filter data based on all the entered values. </p></div>

    <img src="../images/apply-multiple-filters.png" alt="multiple filters" title="multiple filters" style="border: 1px solid gray; zoom:75%;">

<ol start="6"><li>Click <b>Apply</b>.</li>
<img src="../images/apply-cs-filters.png" alt="apply filters" title="apply filters" style="border: 1px solid gray; zoom:75%;"></ol>


The UI displays all the relevant runs/logs records that align with the applied filter(s). The number of filters you have applied is displayed on the **Filter** icon.

<img src="../images/filter-count.png" alt="filter" title="filter" style="border: 1px solid gray; zoom:75%;">


To clear the filter settings, click **Clear All**.

<img src="../images/click-clear-all.png" alt="clear all" title="clear all" style="border: 1px solid gray; zoom:75%;">


### Add Multiple Filters

Adding multiple filter levels enhances the visibility of runs/logs on the UI. You can combine column, operator, and value filters using the AND or OR operators to target specific data, allowing you to focus on the entries most relevant to your needs. [Learn more](https://docs.kore.ai/agent-platform/settings/monitoring/audit-logs/#add-multiple-filters){:target="_blank"}.

<div class="admonition note">
<p class="admonition-title">Important</p>
<p><ul><li>AND and OR operators cannot be combined in multiple filtering steps to set filter criteria, ensuring consistent operator usage for each filtering step.</li>
<li>Using the AND operator ensures that all specified conditions must be met for an entry to be included in the results.</li>
<li>On the other hand, using the OR operator broadens the criteria, allowing entries that meet any of the specified conditions to be included. These operators provide flexibility in tailoring your runs/logs data.</li>
<li>Click the <b>Delete</b> icon to delete a filter criteria step.</li>
<img src="../images/delete-operator.png" alt="delete" title="delete" style="border: 1px solid gray; zoom:75%;"></ul>
</p></div>


#### Steps to Add Multiple Filters

1. Follow **Steps 1 to 4** mentioned [here](../monitoring/monitoring-custom-scripts.md/#steps-to-add-a-custom-filter){:target="_blank"}.
2. Select the **AND/OR** operator tab in the **Filter by** window.

   <img src="../images/logical-operators.png" alt="logical operators" title="logical operators" style="border: 1px solid gray; zoom:75%;">

<ol start="3"><li>Follow <b>Steps 5 to 6</b> mentioned <a href="https://docs.kore.ai/agent-platform/settings/monitoring/monitoring-custom-scripts/#steps-to-add-a-custom-filter" target="_blank">here</a>.</li></ol>

The matched entries are displayed in the UI.

## Record View: Log-Specific View for a Run

The record View offers log-specific insights at the script run level after each execution, enabling faster debugging, better traceability, and more effective optimization of custom scripts.

**Key Features**


### **Focused Debugging**

Script execution logs help effectively isolate and troubleshoot issues. 


**Detailed Visibility**

Shows **input, output, and log-level metadata**, allowing in-depth analysis of what happened during the run. 



### **Structured Layout**

Displays data in a clear and organized format, often with expandable sections in the JSON editors to facilitate easy inspection of values. 

### **Actionable Insights**

Helps identify: 

* Failures or performance bottlenecks 

* Unexpected inputs or outputs 

* Misconfigured logic or API responses 


**Enhanced Usability**

With features such as keyboard navigation (e.g., J/K to switch records), copy-to-clipboard, expand/collapse, and scroll, users can efficiently explore logs. 


### Steps to Access Record View

1. [Navigate](../monitoring/monitoring-custom-scripts.md/#access-monitoring-custom-scripts){:target="_blank"} to the **Monitoring Custom Scripts** page.
2. In the **All Runs** section, click the record you want to view.
3. The record view page is displayed with the following information: 

    * Run ID
    * Log-specific information, including the *Log ID*, *Log level*, *Log message*, and *timestamp*. [Learn more](../monitoring/monitoring-custom-scripts.md/#log-level-metadata){:target="_blank"}.
    * JSON editors that display the script’s input and the function’s output, respectively. 
    * Navigation buttons.

       <img src="../images/record-view.png" alt="record view" title="record view" style="border: 1px solid gray; zoom:75%;">

## Enhanced Logging for gVisor Monitoring

The Agent Platform offers two convenient logging options to help you effectively capture and monitor logs for your custom scripts: using default logging functions or a custom logging library (*korelogger*).

**Key Considerations**

* When using **default logging** (e.g., `print()` in Python or `console.log()` in JavaScript), logs appear in the **Logs** section only after the script execution completes (success or failure).
* **Custom logging** with the `korelogger` library enables real-time log streaming where logs are populated in the table as they're generated.
* We recommend using `korelogger` for its log-level control and immediate log visibility, which significantly improves monitoring and debugging efficiency.


### Option 1: Standard Logging (Simple Setup)

This method uses default logging functions such as:

* `print()` in Python 

* `console.log()` in JavaScript 


Logs generated using this method are captured and displayed under `stdout` during script execution. 

An example script and its output in Python are given below:


```
def check_print_function():
    print("Checking print function...")
    print("Print function is working!")
return
```

The output is captured in `stdout` as follows:

```
Checking print function...
Print function is working!
```

### Option 2: Advanced Logging with Korelogger (Recommended for Monitoring)

The `korelogger` library is provided to users to enable detailed trace capture, supporting enhanced script monitoring and observability.

Additionally, the same logs are also captured in stdout in the following format: 

```
<LOG_LEVEL> :: <LOG_MESSAGE>
```

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>The above log format can be modified as required.</p></div>

A sample script and its output, which uses the `korelogger` library in Python, are given below:

**Script**

```
import korelogger
def call_openai_chat(prompt):
    korelogger.debug("Debug log using korelogger")
    korelogger.info("Info log using korelogger")
    korelogger.warning("Warning log using korelogger")
    korelogger.error("Error log using korelogger")
    return
```

**Output captured in** `stdout`

```
DEBUG :: Debug log using korelogger
INFO :: Info log using korelogger
WARNING :: Warning log using korelogger
ERROR :: Error log using korelogger
```

**Log traces are pushed in the following format:**

```
{
    "name": "gvisor_info_log",
    "context": {
        "trace_id": "0x3453665abxxxxxxxxxxxxxxxxxxxxxxx",
        "span_id": "0x7e3xxxxxxxxxxxx",
        "trace_state": "[]"
    },
    "kind": "SpanKind.INTERNAL",
    "parent_id": null,
    "start_time": "2025-05-14T06:07:27.238927Z",
    "end_time": "2025-05-14T06:07:27.238966Z",
    "status": {
        "status_code": "UNSET"
    },
    "attributes": {
        "traceparent": "00-abxxxxxxxxxxxxxxxxxxxxxxxxxx0-12345xxxxxxxxxxxf-01",
        "run_id": "run_12345",
        "deployment_id": "deploy_67890",
        "source": "api_call",
        "source_type": "test",
        "log.message": "Using korelogger to log",
        "log.level": "INFO",
        "log.trace_id": "00-abcdef12345xxxxxxxxxxxxxxxxxxxx0-12345xxxxxxxxxxf-01",
        "log.meta.msg": "Using korelogger to log",
        "log.meta.pid": "41",
        "log.meta.logid": "4XXXXXX5-5XX0-4XX6-bXX8-4XXXXXXXXXX6"
    },
    "events": [],
    "links": [],
    "resource": {
        "attributes": {
            "service.name": "gvisor-py-normal",
            "service.instance.id": "4XXXXXX1-9XX9-4XXb-9XXc-aXXXXXXXXXX1",
            "deployment.environment": "rnd-gale.kore.ai"
        },
        "schema_url": ""
    }
}
```


Each log entry is organized using the following identifying markers for tracking and filtering:

* **traceparent** - Links related operations together.
* **run_id** - Identifies each script execution.
* **deployment_id** - Tracks which version of your script ran.
* **source** - Shows where the log came from.
* **source_type** - Categorizes the type of source.

Log messages and levels are available as `log.message` and <code>log.level</code> in the attributes field.

<div class="admonition note">
<p class="admonition-title">Note</p>
<p>The structure of the attributes field can be modified as required.</p></div>
