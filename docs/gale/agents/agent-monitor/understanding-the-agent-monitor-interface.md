# Understanding Agent Monitor

The Agent Monitor capabilities are shown on the following tabs:

* **All runs**: It shows comprehensive data on all agent run instances and provides a comprehensive record of all the endpoint calls made to the agent. 

* **Model runs**: This tab shows specific data on Gen AI node run instances, focusing on endpoint calls made to Gen AI nodes within the agent.

Both tabs include summary metrics at the top of the page, including total runs/requests, average response times (P90 and P99), and failure rates.

## All Runs

<img src="../images/agent_monitor_allruns_new.png" alt="All runs" title="All runs tab" style="border: 1px solid gray; zoom:80%;">

The All runs tab provides the following information for each agent run:

* **Status**: The status indicating a success or failure. A green icon indicates success, and a red icon indicates failure.
* **Run ID**: The unique identifier for the flow.
* **Response time**: The duration the agent takes to complete a request and provide an output.
* **Nodes executed**: The total number of nodes executed in the run.
* **Start time**: The time when the request is initiated. 
* **End time**: The time the response is received.
* **API key**: The API key used to execute the agent. (This is the name provided in the **API keys** page when you created a new API key. If you did not provide a name, the system uses the default name ‘Secret Key’. You can have multiple API keys for a single agent.)

You can also see the following metrics on the top of the page: 

* **TOTAL RUNS**: The total number of agent runs. 
* **RESPONSE TIME**: The average response time of all the agent runs. It is measured by the following two metrics:
    * **P90**: This metric represents the response time below which 90% of the requests fall.
    * **P99**: This metric represents the response time below which 99% of the requests fall.
* **FAILURE RATE**: The percentage of failed runs.

These metrics are dependent on the selected date range, filters, and search criteria. When you apply a search, the metrics on the top of the page will be updated to reflect the specific request. Essentially, the displayed top metrics will vary based on the filters you apply. 

## 	Model Runs

Each GenAI node in the agent is recorded as a separate request in the Model runs tab of the Agent monitor page. For example, if three GenAI nodes are used in an agent, three separate requests for each of the three GenAI nodes are displayed.

If your agent currently does not have any Gen AI nodes, this section will remain empty. Once you add Gen AI nodes, the Model runs will begin to reflect here.

<img src="../images/agent_monitor_model_runs.png" alt="Model runs" title="Model runs tab" style="border: 1px solid gray; zoom:80%;">

The Model runs tab provides the following information for each Gen AI node call:

* **Status**: The status indicating a success or failure. A green icon indicates success and a red icon indicates failure.
* **Request ID**: The unique identifier of the GenAI node request.
* **Node name**: The name of the GenAI node.
* **Model name**: The model that is used for the GenAI node.
* **Response time**: The amount of time taken by the GenAI node to complete the request.
* **Start time**: The time when the GenAI node has started its execution.
* **End time**: The time when the GenAI node has completed its execution.

You can also see the following metrics on the top of the page:

* **TOTAL REQUESTS**: The total number of Gen AI node requests.
* **RESPONSE TIME**: The average response time of all the GenAI node requests. It is measured by the following two metrics:
    * **P90**: This metric represents the response time below which 90% of the requests fall.
    * **P99**: This metric represents the response time below which 99% of the requests fall.
* **FAILURE RATE**: The percentage of instances in which the Gen AI node has failed in execution.

These metrics are dependent on the selected date range, filters, and search criteria. When you apply a search, the metrics on the top of the page will be updated to reflect the specific request. Essentially, the displayed top metrics will vary based on the filters you apply.

## Viewing Detailed Run Information

Clicking each row in either the All runs tab or the Model runs tab opens a detailed view panel on the right. This view is similar to the Run dialog panel on the Agent flow canvas. [Learn more](https://docs.kore.ai/gale/agents/agents-flows/perform-other-actions-on-the-flow-builder/run-the-flow/).

<img src="../images/agent_monitor_viewing_run_information.png" alt="Viewing detailed run information" title="Viewing detailed run information" style="border: 1px solid gray; zoom:80%;">

The panel displays the following details:

*  **Run ID/Request ID**: The unique identifier for the flow.
* **Response Time**: The duration the agent takes to complete a request and provide an output.
*  **Debug icon**: Clicking this icon displays the debug log details.
*  **Input**: The Input section displays the input sent to the agent.
*  **Flow log**: The flow log section displays the information of each node.
    * **Success**: Displays the log as in the debug panel.
    * **Failure**: Displays failure details as in the debug panel.

        For GenAI nodes, when you expand the node you can see the information related to each node along with the scanner information.

*  **Output section**: The Output section displays the agent's output (for successful runs). You can copy the output and view tokens.

    <img src="../images/agent_monitor_viewing_run_information_detailed.png" alt="Viewing detailed run information" title="Viewing detailed run information" style="border: 1px solid gray; zoom:80%;">


## Searching and Filtering Information

### Manual Search

Use the search box in the top right corner of the Agent monitor page to find specific runs or calls based on keywords.

### Time-based Search

Use the calendar option to search for runs or calls from a specific time period. You can  filter your search results by time period, whether it’s something from the last day, week, month, or year. 

Steps to use the time-based search:

1. Click the calendar button in the top right corner of the Agent monitor page.

    <img src="../images/agent_monitor_calendar_selection.png" alt="calendar" title="Calendar" style="border: 1px solid gray; zoom:80%;">

2. Select a predefined time range or set custom dates.

    <img src="../images/agent_monitor_calendar_selection_new.png" alt="calendar custom dates" title="Calendar custom dates" style="border: 1px solid gray; zoom:80%;">

3. Click **Apply** to update the results.


### Custom Filters

Use the filter option to filter the information displayed in the Agent monitor dashboard by applying custom filters. These filters allow you to select specific columns, apply operators such as **Is** **Equal To** or **Is Not Equal To,** and then specify the desired value.

You can also add multiple filters using AND/OR operators for more precise results.

Steps to use the filters:

1. Click the Filter icon.
2. Click **+ Add filter**.

    <img src="../images/agent_monitor_filtericon_new.png" alt="Filter" title="Filter" style="border: 1px solid gray; zoom:80%;">

3. Select options for Column, Operator, and Value.

    <img src="../images/agent_monitor_filter_options.png" alt="Filter options" title="Filter options" style="border: 1px solid gray; zoom:80%;">

4. Click **Apply**.