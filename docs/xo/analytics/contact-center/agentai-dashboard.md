# Overview
The AgentAssist Dashboard provides the AgentAssist Widget’s performance data and the end user’s (agents and customers) behavioral trend. You can filter data by channel or time period. You can also view the total number of sessions and widget suggestions, the average number of widget suggestions used per session, which help content and automations agents used to resolve customer issues, what the agents are searching for, automation performance results, and agent feedback in the form of likes and dislikes.

To view the Dashboard, sign in to XO Platform and navigate to Analytics > Contact Center > AgentAssist.

# Dashboard Filters

The AgentAssist Dashboard lets you filter the dashboard data over a period of time and of a specific channel.

## Filter by Time Period

You can filter data based on a selected time duration. Click the Calendar icon at the top, select one of the options from the list, and then click Apply.
<img src="../agentai-dashboard-images/dashboard-filters-1.png" alt="dashboard-filters" title="dashboard-filters" style="border: 1px solid gray; zoom:80%;">

* Today: Default value. It shows data until the present time (minute).
* Yesterday: Data of the previous day.
* Last 7 Days: Data of the last one week.
* Last 15 Days: Data of the last 15 days.
* Last 30 Days: Data of the last 30 days.
* Custom Range: Data of the selected “From” and “To” dates. This duration shouldn’t exceed 60 days.

## Filter by Channel

You can filter data based on an available channel. These include all channels applicable to the client system. Click the All Channels button on the top-right corner and then select one of the channels from the list.

# Data on Widget Performance and Agent/Customer Behavior

This section lets you view and filter the AgentAssist Widget’s performance data.

## Total Sessions

It indicates the total number of uninterrupted interactions between the bot and the end user (customer or agent) over a selected time period on a selected channel. Each session has been set for 15 minutes. If a session lasts beyond 15 minutes but less than 30 minutes, it gets calculated as two sessions. The red superscripted percentage with an arrow symbol indicates a decrease, and the green one indicates an increase in the percentage of number of sessions over a selected time period over a previous session. For example, a number 532 and a 5.2% with a red downwards arrow implies 532 sessions over the interval shown (say, a week) and a 5.2% decrease over the previous week.

## Total Suggestions

It indicates the total number of suggestions from the AgentAssist Widget (for example, “ask customer” and “tell customer”) to the agent. These suggestions include automations, articles, and FAQs. The red and green percentages indicate a decrease and increase in numbers.

## Average Suggestions Used per Session

The average number of suggestions used per each session. This number is derived by dividing the total number of AgentAssist Widget suggestions by the number of sessions.

## What are Your Customers Looking for

This section shows which Articles, FAQs, and Dialogue Tasks are used to fulfill a customer’s needs. This list appears in popularity order–the most used item appears at the top. You can filter data based on values as All, Agent Initiated and AgentAssist Suggested values, with the default selection being Agent Initiated. You have four tabs at the top–All, Articles, FAQs, and Automations–with All being the default tab. Click the respective tabs to view the top four Articles, FAQs, or Automations. Each item on the list has a number on its right that indicates the number of times that item has been invoked or used, and the percentage value is the number of times invoked or used divided by the number of times invoked for each tab.

<img src="../agentai-dashboard-images/customers-looking-for-2.png" alt="customers-looking-for" title="customers-looking-for" style="border: 1px solid gray; zoom:80%;">

## What are your Agents Looking for

This section shows what the agents are searching for. AgentAssist gets this data through the AskAgentAssist search box. Every time an agent enters an item in this search box, AgentAssist records the data. The Total Search Requests shows the number of times agents have had search requests.
<img src="../agentai-dashboard-images/agents-looking-for-3.png" alt="agents-looking-for" title="agents-looking-for" style="border: 1px solid gray; zoom:80%;">

## Automation Performance

This section shows the performance results (successfully completed, error encountered, terminated, etc.) of all AgentAssist automations. The data is represented on a pie chart. To read the data, use the following pointers:

* The number at the center of the pie chart depicts the total number of all automation invocations.
* The pie chart is divided into three color-coded sections –Successfully Completed (green), Terminated or Error (red), and Other (dark blue).
* Hover over any section of the pie chart to see the top three automations of that result, with invocations percentage over total invocations.
* On the right, you find the total number and percentage out of the sum total for each item.

<img src="../agentai-dashboard-images/automation-performance-4.png" alt="automation-performance" title="automation-performance" style="border: 1px solid gray; zoom:80%;">

## Agent Feedback

This section shows the top three most disliked automations by agents in descending order of dislike percentage. AgentAssist gets this data by capturing the likes or dislikes at the end of a dialog task. You can have a detailed summary of Agent Feedback for dialog tasks, including “Not Helpful” feedback and Additional Comments. The detailed view of the “Not Helpful” feedback includes Responses, Additional Comments, and Counts. You must click View All to view further details of a dialog task.

* Click a dialog task under Automation Name.
* Click the “eye-like” icon under Additional Comments to access all comments linked to their conversation IDs.
* Click the Conversation ID link to go to the respective conversation.
* Click the Counts number to access the Conversation ID, Date, Time, and Agent Name/ID.
* Use the “search” button to find conversations by agent name, agent ID, or conversation ID.
* If the agent’s name is provided, the agent column appears for searching; otherwise, the conversation ID is available.

<img src="../agentai-dashboard-images/agents-feedback-5.png" alt="agents-feedback" title="agents-feedback" style="border: 1px solid gray; zoom:80%;">

## Average Widget Usage (Third-Party Agent Desktop)

This feature gives a graphical representation of the average amount of time agents spend on the Agent AI widget and is applicable only for the third-party agent desktops. You can use the Compare button to compare the data you have selected for a time period in an “n-1” formula. For example, if you have selected “30 days,” last 30 days’ data is compared with the previous 30 days’ data.

<img src="../agentai-dashboard-images/average-widget-usage-6.png" alt="average-widget-usage" title="average-widget-usage" style="border: 1px solid gray; zoom:80%;">