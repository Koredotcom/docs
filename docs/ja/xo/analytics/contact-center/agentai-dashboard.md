# **Overview**

The Agent AI Dashboard displays performance metrics of the Agent AI widget and the behavioral trends of the end users (agents and customers). You can filter data by channel or time period. Metrics include total sessions, widget suggestions, relevant suggestions, average widget suggestions used per session, help content and automations agents used to resolve customer issues, search behavior of agents, automation performance results, and agent feedback via likes and dislikes.

To view the Dashboard, sign in to XO, and click **Agent AI** > **Analytics** > **Contact Center** > **Agent AI**.  
<img src="../agentai-dashboard-images/agent-ai-dashboard-1.png" alt="agent-ai-dashboard" title="agent-ai-dashboard" style="border: 1px solid gray; zoom:80%;">

# **Dashboard Filters**

The Agent AI Dashboard lets you filter the dashboard data over a period of time and of a specific channel.

## **Filter by Time Period**

You can filter data based on a selected time duration. Click the **Calendar** icon at the top, select one of the options from the list, and then click **Apply**.  
<img src="../agentai-dashboard-images/dashboard-filters-2.png" alt="dashboard-filters" title="dashboard-filters" style="border: 1px solid gray; zoom:80%;">

* **Today**: Default value. It shows data until the present time (minute).
* **Yesterday**: Data of the previous day.
* **Last 7 Days**: Data of the last one week.
* **Last 15 Days**: Data of the last 15 days.
* **Last 30 Days**: Data of the last 30 days.
* **Custom Range**: Data of the selected “From” and “To” dates. This duration shouldn’t exceed 60 days.

## **Filter by Channel**

The default setting of the Agent AI Dashboard shows the combined data of all three channels – Voice, Chat, and Email. To filter data by channel, click the **All Channels** button on the top-right corner, and then click against a channel to select or clear it from the dropdown list.  
<img src="../agentai-dashboard-images/dashboard-channel-filters-3.png" alt="dashboard-channel-filters" title="dashboard-channel-filters" style="border: 1px solid gray; zoom:60%;">

### **Data on Widget Performance and Agent/Customer Behavior**

This section lets you view and filter the Agent AI Widget’s performance data.

## **Total Sessions**

It indicates the total number of uninterrupted interactions between the bot and the end user (customer or agent) over a selected time period on a selected channel. Each session has been set for 15 minutes. If a session lasts beyond 15 minutes but less than 30 minutes, it gets calculated as two sessions. The red superscripted percentage with an arrow symbol indicates a decrease, and the green one indicates an increase in the percentage of number of sessions over a selected time period over a previous session. For example, a number 532 and a 5.2% with a red downwards arrow implies 532 sessions over the interval shown (say, a week) and a 5.2% decrease over the previous week.  
<img src="../agentai-dashboard-images/dashboard-total-sessions-4.png" alt="dashboard-total-sessions" title="dashboard-total-sessions" style="border: 1px solid gray; zoom:40%;">

## **Total Suggestions**

It indicates the total number of suggestions from the Agent AI Widget (for example, “ask customer” and “tell customer”) to the agent. These suggestions include answers, automations, and FAQs. The red and green percentages indicate a decrease and increase in numbers, similar to the [Total Sessions](#total-sessions) section.  
<img src="../agentai-dashboard-images/dashboard-total-suggestions-5.png" alt="dashboard-total-suggestions" title="dashboard-total-suggestions" style="border: 1px solid gray; zoom:60%;">

## **Relevant Suggestions**

The percentage of suggestions used by agents. This number is derived by dividing the total suggestions used by agents with the total suggestions, multiplied by 100.  
<img src="../agentai-dashboard-images/dashboard-relevant-suggestions-6.png" alt="dashboard-relevant-suggestions" title="dashboard-relevant-suggestions" style="border: 1px solid gray; zoom:40%;">

## **Average Suggestions Used per Session**

The average number of suggestions used per each session. This number is derived by dividing the total number of Agent AI Widget suggestions by the number of sessions.  
<img src="../agentai-dashboard-images/dashboard-average-suggestions-used-7.png" alt="dashboard-average-suggestions-used" title="dashboard-average-suggestions-used" style="border: 1px solid gray; zoom:80%;">

## **What are Your Customers Looking for**

This section shows which Answers, FAQs, Dialogue Tasks, web suggestions, and other data sources are used to fulfill a customer’s needs. This list appears in popularity order–the most used item appears at the top. You can filter data based on values as All, Agent Initiated, and Agent AI Suggested values, with the default selection being All. You have four tabs at the top–All, Answers, FAQs, Automations, and Others–with All being the default tab. Click the respective tabs to view the top four Answers, FAQs, Automations, or others. Each item on the list has a number on its right that indicates the number of times that item has been invoked or used, and the percentage value is the number of times invoked or used divided by the number of times invoked for each tab.  
<img src="../agentai-dashboard-images/dashboard-what-are-customers-looking-for-8.png" alt="what-are-customers-looking-for" title="what-are-customers-looking-for" style="border: 1px solid gray; zoom:60%;">

## **What are your Agents looking for**

This section shows what the agents are searching for. Agent AI gets this data through the **Ask a question** search box. Every time an agent enters an item in this search box, Agent AI records the data. The **Total Search Requests** shows the number of times agents have had search requests. The green and red percentage colors with an arrow symbol are similar to the [Total Sessions](#total-sessions) section. By default, the data is displayed in WordCloud, and you can change it to Tabular form.  
<img src="../agentai-dashboard-images/dashboard-what-are-agents-looking-for-9.png" alt="what-are-agents-looking-for" title="what-are-agents-looking-for" style="border: 1px solid gray; zoom:80%;">

## **Automation Performance**

This section shows the performance results (successfully completed, error encountered, terminated, etc.) of all Agent AI automations. The data is represented on a pie chart. To read the data, use the following pointers:

* The number at the center of the pie chart depicts the total number of all automation invocations.
* The pie chart is divided into three color-coded sections –Successfully Completed (green), Terminated or Error (red), and Other (dark blue).
* Hover over any section of the pie chart to see the top three automations of that result, with invocations percentage over total invocations.
* On the right, you find the total number and percentage out of the sum total for each item.  
<img src="../agentai-dashboard-images/dashboard-automation-performance-data-10.png" alt="automation-performance-data" title="automation-performance-data" style="border: 1px solid gray; zoom:80%;">

## **Agent Feedback**

This section shows the top three most disliked automations by agents in descending order of dislike percentage. Agent AI gets this data by capturing the likes or dislikes at the end of a dialog task. You can have a detailed summary of Agent Feedback for dialog tasks, including “Not Helpful” feedback and Additional Comments. The detailed view of the “Not Helpful” feedback includes Responses, Additional Comments, and Counts. You must click **View All** to view further details of a dialog task.

* Click a **dialog task** under **Automation Name**.
* Click the “eye-like” icon under **Additional Comments** to access all comments linked to their conversation IDs.
* Click the **Conversation ID** link to go to the respective conversation.
* Click the **Counts** number to access the **Conversation ID**, **Date**, **Time**, and **Agent Name/ID**.
* Use the “search” button to find conversations by agent name, agent ID, or conversation ID.
* If the agent’s name is provided, the agent column appears for searching; otherwise, the conversation ID is available.  
<img src="../agentai-dashboard-images/dashboard-agent-feedback-data-11.png" alt="agent-feedback-data" title="agent-feedback-data" style="border: 1px solid gray; zoom:80%;">

## **Average Widget Usage (Third-Party Agent Desktop)**

This feature gives a graphical representation of the average amount of time agents spend on the Agent AI widget and is applicable only for the third-party agent desktops. You can use the Compare button to compare the data you have selected for a time period in an “n-1” formula. For example, if you have selected “30 days,” last 30 days’ data is compared with the previous 30 days’ data.  
<img src="../agentai-dashboard-images/average-widget-usage-12.png" alt="average-widget-usage" title="average-widget-usage" style="border: 1px solid gray; zoom:80%;">

