# Understanding the Agent Monitor interface

The Agent Monitor page consists of two main tabs:

1. **All runs**: This tab displays comprehensive data on all agent run instances and provides a comprehensive record of all the endpoint calls made to the agent. 
2. **LLM calls**: This tab shows specific data on Gen AI node run instances, focussing on endpoint calls made to Gen AI nodes within the agent.

Both tabs display summary metrics at the top of the page, including total runs/requests, average response times (P90 and P99), and failure rates.

## All runs

<img src="../images/agent_monitor_allruns.png" alt="Agent monitor All runs" title="Agent monitor All runs" style="border: 1px solid gray; zoom:80%;">

The All runs tab provides the following information for each agent run:

* **Status**: The status indicating a success or failure. A green icon indicates success, and a red icon indicates failure.
* **Run ID**: The unique identifier for the flow.
* **Response time**: The duration the agent takes to complete a request and provide an output.
* **Nodes executed**: The total number of nodes executed in the run.
* **Start time**: The time when the request is initiated. 
* **End time**: The time the response is received.
* **API key**: The API key used to execute the agent. (This is the name provided in the **API keys** page when you created a new API key. If you did not provide a name, the system uses the default name ‘Secret Key’. You can have multiple API keys for a single agent.)

You can also see the following metrics on the top of the page: 

* **Total Runs**: The total number of agent runs. 
* **Response Time**: The average response time of all the agent runs. It is measured by the following two metrics:
    * **P90**: This metric represents the response time below which 90% of the requests fall.
    * **P99**: This metric represents the response time below which 99% of the requests fall.
* **Failure Rate**: The percentage of failed runs.

These metrics are dependent on the selected date range, filters, and search criteria. When you apply a search, the metrics on the top of the page will be updated to reflect the specific request. Essentially, the displayed top metrics will vary based on the filters you apply. 

## 	LLM calls

Each GenAI node in the agent is recorded as a separate request in the LLM calls tab of the Agent monitor page. For example, if three GenAI nodes are used in an agent, three separate requests for each of the three GenAI nodes are displayed.

    **Note:** If your agent currently does not have any Gen AI nodes, this section will remain empty. Once you add Gen AI nodes, the LLM Calls will begin to reflect here.

<img src="..images/agent_monitor_llm_calls.png" alt="LLM calls" title="LLM calls" style="border: 1px solid gray; zoom:80%;">

The LLM calls tab provides the following information for each Gen AI node call:

* **Status**: The status indicating a success or failure. A green icon indicates success and a red icon indicates failure.
* **Request ID**: The unique identifier of the GenAI node request.
* **Node name**: The name of the GenAI node.
* **Model name**: The model that is used for the GenAI node.
* **Response time**: The amount of time taken by the GenAI node to complete the request.
* **Start time**: The time when the GenAI node has started its execution.
* **End time**: The time when the GenAI node has completed its execution.

You can also see the following metrics on the top of the page:

* **TOTAL REQUESTS**: The total number of Gen AI node requests.
* **Response Time**: The average response time of all the GenAI node requests. It is measured by the following two metrics:
    * **P90**: This metric represents the response time below which 90% of the requests fall.
    * **P99**: This metric represents the response time below which 99% of the requests fall.
* **FAILURE RATE**: The percentage of instances in which the Gen AI node has failed in execution.

These metrics are dependent on the selected date range, filters, and search criteria. When you apply a search, the metrics on the top of the page will be updated to reflect the specific request. Essentially, the displayed top metrics will vary based on the filters you apply.

# 	Viewing detailed run information

Clicking each row in either the All runs tab or the LLM calls tab opens a detailed view panel on the right. This view is similar to the Run dialog panel on the Agent flow canvas [Learn more](https://docs.kore.ai/gale/agents/agents-flows/perform-other-actions-on-the-flow-builder/run-the-flow/).

<img src="../images/agent_monitor_viewing_run_information.png" alt="Viewing detailed run information" title="Viewing detailed run information" style="border: 1px solid gray; zoom:80%;">

The panel displays the following details:

1. **Run ID/Request ID**: The unique identifier for the flow.
2. **Response Time**: The duration the agent takes to complete a request and provide an output.
3. **Debug icon**: Clicking this icon displays the debug log details.
4. **Input**: The Input section displays the input sent to the agent.
5. **Flow log**: The flow log section displays the information of each node.
    * **Success**: Displays the log as in the debug panel.
    * **Failure**: Displays failure details as in the debug panel.

        For GenAI nodes, when you expand the node you can see the information related to each node along with the scanner information.

6. **Output section**: The Output section displays the agent's output (for successful runs). You can copy the output and view tokens.

    <img src="../images/agent_monitor_viewing_run_information_detailed.png" alt="Viewing detailed run information" title="Viewing detailed run information" style="border: 1px solid gray; zoom:80%;">