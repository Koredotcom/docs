
# Conversation Intelligence

## Overview

The Conversation Intelligence dashboard displays post-interaction analytics and is a powerful tool designed to provide insights and actionable information following customer interactions. This dashboard gathers and presents data derived from customer interactions, allowing admins and supervisors to gain valuable insights into agent performance, customer experience, and interaction details.

The key sections of this dashboard include:

* **Contact Center Efficiency** – Key Performance Indicators (Average Speed to Answer, Abandonment Rate, CSAT, and Transfer Rate).
* **Agent Efficacy** – Empathy Score, CSAT, Crutch Word Score, Agent Performance Monitor, and Agent Occupancy.
* **Customer Experience** – Avg. Wait Time, Net Promoter Score (NPS), Churn Risk, Sentiment Score, Sentiment Monitor, and Customer Churn Monitor.
* **Insights Mining** –  Topic vs. Sentiment Bubble, Keyword Cloud & Emotions
* **Interaction Details** – Date/Time of the session, Call ID, Agent Name/ID, Call Reason/Intent, Sentiment Score, and Dispositions.

Admins and Supervisors can access the Conversation Intelligence dashboard from **Contact Center AI** > **Quality Management** > **Analyze** > **Conversation Intelligence**.  
<img src="../images/conv-inetelligence-page.png" alt="Conversation Intelligence Page" title="Conversation Intelliegence Page" style="border: 1px solid gray; zoom:70%;">

## Filters

You can use the filters to customize the Intelligence tab.

### Create a Filter

Steps to create a filter:

1. Click the **Filters** button on the upper-right corner.  
<img src="../images/dashboard-filter.png" alt="Filters Button" title="Filters Button" style="border: 1px solid gray; zoom:70%;">

2. Click **+ Add New Filter**.  
<img src="../images/add-new-filter.png" alt="Add New Filter" title="Add New Filter" style="border: 1px solid gray; zoom:70%;">

3. On the **New Filter** window, select **Queues** or **Agents**. 
<img src="../images/queues-filter.png" alt="Filter Options" title="Filter Options" style="border: 1px solid gray; zoom:60%;">

4. Select the list of options pertaining to **Queues** or **Agents**, as required.
5. Click **Save & Apply**.
   
    !!! Note

        Clicking the **Apply** button does not save the filter.

6. Enter the **Filter Name**, and click **Save & Apply**.  

    !!! Note

        You can turn on the toggle to Make this the default view filter.

    <img src="../images/save-filter.png" alt="Save Filter" title="Save Filter" style="border: 1px solid gray; zoom:90%;">

    A confirmation message is displayed.

### Saved Filters

You can view the saved filters by clicking the **Filters** tab.  
<img src="../images/saved-filters.png" alt="Saved Filters" title="Saved Filters" style="border: 1px solid gray; zoom:90%;">

Hovering over a saved filter displays the following options:

* Duplicate
* Mark as Default
* Delete
* Edit  
<img src="../images/filter-options.png" alt="Filter Options" title="Filter Options" style="border: 1px solid gray; zoom:90%;">

### Duplicate Filter

Steps to duplicate a filter:

1. Click the **Duplicate** button on the filter that you want to copy.  
<img src="../images/duplicate-filter.png" alt="Duplicate Filter" title="Duplicate Filter" style="border: 1px solid gray; zoom:90%;">

2. Enter a name in the **Filter Name** field for the new filter, and click **SAVE**.  
<img src="../images/rename-filter.png" alt="Save Renamed Filter" title="Save Renamed Filter" style="border: 1px solid gray; zoom:90%;">

3. A confirmation message is displayed, and a copy of the filter is created.  
<img src="../images/filter-cloned-success.png" alt="Filter Cloned Success" title="Filter Cloned success" style="border: 1px solid gray; zoom:90%;">

### Mark as Default

Click the **Mark as Default** button to set the filter as the default filter.  
<img src="../images/mark-as-default.png" alt="Mark as Default" title="Mark as Default" style="border: 1px solid gray; zoom:90%;">

A confirmation message is displayed, and the filter is set as the default filter.  
<img src="../images/filter-marked-default.png" alt="Filter Marked Default" title="Filter Marked Default" style="border: 1px solid gray; zoom:90%;">

### Delete Filter

Steps to delete a filter:

1. Click the **Delete** button.  
<img src="../images/delete-filter.png" alt="Delete Filter" title="Delete Filter" style="border: 1px solid gray; zoom:90%;">

2. On the delete confirmation pop-up window, click **Delete**.  
    <img src="../images/confirm-delete.png" alt="Confirm Delete Filter" title="Confirm Delete Filter" style="border: 1px solid gray; zoom:90%;">

    A confirmation message is displayed, and the filter is deleted.

### Edit Filter

Steps to edit a filter:

1. Click the **Edit** button.  
    <img src="../images/edit-filter.png" alt="Edit Filter" title="Edit Filter" style="border: 1px solid gray; zoom:90%;">

2. Make the necessary changes, and click **Save & Apply**.  
    <img src="../images/save-edit-filter.png" alt="Save Edited Filter" title="Save Edited Filter" style="border: 1px solid gray; zoom:90%;">

    A confirmation is displayed.

## Time Selection

In this section, you can filter data by time range. By default, data is displayed for the current day (Today). Select a time range, and click **Apply**.  
<img src="../images/time-duration.png" alt="Time Selection" title="Time Selection" style="border: 1px solid gray; zoom:80%;">

## Compare Functionality

The Conversation Intelligence dashboard's compare functionality allows you to view a comparison of metrics between a selected date range and the previous date range. The compare toggle is enabled by default.

The spike or dip indicators for playbook adherence are linked to this toggle and only display across stages and steps if enabled. These indicators are included for all fields. They can have different meanings based on an increase or decrease; an increase can be positive or negative depending on the metrics, resulting in either red badges (negative) or green badges (positive). 

For example, if the selected date range is the last 7 days, all metrics, such as the Average Speed to Answer, will show a spike or dip indicating the percentage change for a selected period (June 5 - June 12) compared to the same duration in the previous period (May 29 - June 5).
  
<img src="../images/key-performance-indicators.png" alt="Compare Functionality" title="Compare Functionality" style="border: 1px solid gray; zoom:100%;">

## Channels

You can filter data by channels (**All**, **Voice**, **Chat**, and **Email**). This filter applies to the entire dashboard except for agent occupancy since occupancy per channel is not tracked.  
<img src="../images/channels.png" alt="Channels" title="Channels" style="border: 1px solid gray; zoom:100%;">

## Contact Center Efficiency

### Key Performance Indicators

Efficient contact centers are the backbone of excellent support. Managers use key performance indicators (KPIs) to ensure teams maximize productivity and efficiency. The KPIs in a contact center environment are measurable metrics used to assess the effectiveness and efficiency of customer service operations. They include:

**Average Speed to Answer** (**Voice**, **Chat**, **Email channels**): Average Speed to Answer (ASA) displays the average time an agent takes to answer inbound calls, starting when callers join the queue.

**Abandonment Rate (Voice** and **Chat channels**): The Abandonment Rate refers to the total number of customers who disconnect their calls while in the queue before reaching an agent.

**CSAT (Voice** and **Chat channels**): Customer Satisfaction (CSAT) scores indicate the level of customer satisfaction with Support services. This can be calculated from CSAT survey scores.

**Transfer Rate (Voice**, **Chat**, and **Email channels**): Transfer Rate measures the percentage of customer interactions that were transferred from one agent or queue to another to resolve the issue.

#### Default Zones for KPIs

* For Average Speed to Answer:
    * Voice Channel – Green up to 28 seconds, Yellow 28 to 40 seconds, Red 40 seconds and above.
    * Chat Channel – Green up to 35 seconds, Yellow 35 seconds to 50 seconds, Red 50 seconds and above.
* For Transfer Rate: Voice and Chat Channels – Green up to 10%, and Red beyond 10%.
* For Abandonment Rate: Voice and Chat Channels – Green up to 6%, and Red beyond 6%.
* For CSAT: Show the actuals as it is with the respective weight-ages of interactions.
    * CSAT is shown as a score in the range of 1-10 (1 being the lowest and 10 being the highest).
    * Green 8 and above, Yellow 6 to 8, and  Red 1 to 6.

The average of the KPIs for a time interval is shown beside the line bar, along with a percentage increase or decrease in comparison with the period selected.

Hovering over the color zones shows the percentage of calls and the actual number of calls for the represented percentage (volume).  
<img src="../images/cc-efficiency.png" alt="Contact Center Efficiency" title="Contact Center Efficiency" style="border: 1px solid gray; zoom:70%;">

## Agent Efficacy

### Empathy Score

Empathy is a crucial necessity for having a quality customer experience. The empathy detection module analyzes both customer and agent utterances and detects if there is a _need for empathy_. This is done by detecting the sentiment of customer utterance and classifying it either as _’empathy-seeking’ or ‘non-empathy-seeking’_.

The empathy module analyzes an agent’s utterance and classifies whether or not the agent is empathetic.

### CSAT

Customer Satisfaction (CSAT) is a widely used metric for measuring and evaluating customer satisfaction. This widget displays the average of customers' CSAT scores on a scale of 1 to 5.

### Crutch Word Score

This measures how frequently an agent uses crutch words during their speech. Crutch words are words or phrases that agents use as a filler or to give them more time to think. Common crutch words are “um,” “uh,” “like,” “you know,” “so,” and “basically.” The crutch word score is calculated for agent utterances only.

### Agent Performance Monitor

The admins and supervisors must completely understand customer interactions and their influence on customer satisfaction. Agent Performance Monitor provides a visual representation of the relationship among different metrics, including empathy score, crutch word score, CSAT score, and sentiment score. You can make informed, data-driven decisions by identifying the patterns to enhance the overall customer experience.

The agent performance metrics are on the Y-axis. You can select individual or multiple metrics to view and analyze. CSAT and sentiment score are the customer experience-based metrics on the X-axis.  
<img src="../images/agent-performance-monitor.png" alt="Agent Performance Monitor" title="Agent Performance Monitor" style="border: 1px solid gray; zoom:70%;">

### Agent Occupancy and Agent Status

Agent occupancy refers to the time agents actively handle customer interactions or perform work-related tasks like After Call Work (ACW). It represents the amount of time agents spend on productive activities compared to their total available working time.

**Agent Occupancy (%)** = (Total talk or chat time + Total ACW time) / (Total logged-in time) * 100

**Total talk or chat time**: The aggregate duration during which agents actively participate in customer interactions, including inbound and outbound calls or chats.

**Total ACW time**: The cumulative duration agents spend in post-call activities, including ACW, note-taking, updating customer records, or completing essential tasks linked to the interaction.

**Total logged-in time**: The total duration agents remain logged in to SmartAssist, available to handle customer interactions.

Agent statuses include available, busy, away, “break”, and other custom codes the administrator configures. This information is represented in a pie chart, enabling admins and supervisors to assess agents' distribution across various statuses quickly. This section also helps understand agent occupancy and optimize agent utilization.  
<img src="../images/agent-occupancy.png" alt="Agent Occupancy" title="Delete Filter" style="border: 1px solid gray; zoom:70%;">

### Script and Playbook Adherence

Agents follow predefined scripts when handling customer interactions. These scripts are part of either the static playbooks configured in Agent AI or business process-specific scripts configured in the dynamic playbooks in Agent AI. Supervisors can track agents’ adherence to the configured scripts.

The adherence is presented as a bar graph, with each attribute represented by individual bars indicating the compliance percentage for the selected period.

The compliance percentage for each attribute is displayed beside the graph, along with an indication for an increase or decrease in compliance percentage during the selected period compared to the same time range. For example, if a supervisor views the compliance scores for the last week, the percentage increase or decrease is indicated for the previous week. Similarly, if the supervisor selects a one-month time frame, the comparison period is one month.

When the playbook steps are the same across all the different playbook configurations, they appear as the default set of parameters for measuring adherence.

When no Agent AI playbooks are configured, adherence is displayed for the following scripts (Conversation Etiquettes) by default:

* Greeting. For example: Hello, My name is John Doe, and I am your customer support executive. How may I help you today?
* Branding. For example: Thank you for contacting XYZ.
* Privacy Policy. For example, This call is being recorded for quality and training purposes.
* Hold Etiquette (Voice calls). For example, May I place you on hold for a few minutes while I pull up some information?
* Customer Verification. For example: Can I know your date of birth?
* Proper Sign Off. For example, Thank you for calling XYZ today. It was a pleasure to assist you. Have a great day!  
    <img src="../images/script-adherence.png" alt="Script Adherence" title="Script Adherernce" style="border: 1px solid gray; zoom:90%;">

    Supervisors can choose specific playbooks from the dropdown menu other than the default options. In that case, adherence to the specific parameters/steps in that playbook is displayed.  
    <img src="../images/playbook-adherence.png" alt="Playbook Adherence" title="Playbook Adherence" style="border: 1px solid gray; zoom:90%;">

    Administrators can configure the attributes for agent playbook adherence. [Learn more](../../console/monitor-queues-agents-interactions-service-levels.md#configure-conversation-intelligence-dashboard).

## Customer Experience

You can monitor and review historical data to assess customer experience. This in-depth analysis of the metrics results in improved customer experience.

The following parameters can be monitored:

* **Average Wait Time**: The average wait time is the total wait time for all customers in a specific period (for example, an hour) divided by the total number of customers served during that period.
* **NPS Score**: The Net Promoter Score (NPS) measures customer loyalty and satisfaction. It is determined through a survey question that asks customers to rate, on a scale from 0 to 10, how likely they are to recommend the products or services to others.
* **Churn Risk**: Churn risk refers to the rate at which customers stop using the services or products provided by the contact center and switch to a competitor or discontinue their engagement altogether. It indicates the loss of customers over a specific period.
* **Sentiment Score**: The sentiment of each customer utterance is assessed in real-time at the keyword/phrase/sub-topic level and stored. Once the call concludes, all the customer sentiments recorded are averaged to compute a sentiment score for the entire call, which is then normalized within the range of 1 to 10. It is a numerical representation of the sentiment or emotion expressed during the interaction, such as a comment. The goal is to determine the overall sentiment or attitude conveyed in the interaction.  
<img src="../images/custom-experience.png" alt="Custom Experience" title="Custom Experience" style="border: 1px solid gray; zoom:90%;">

## Sentiment Monitor

The Sentiment Monitor module provides a score range from 1 to 10 for each interaction and indicates polarity as Positive, Neutral, or Negative. It determines the likely emotion involved based on the average sentiment score, such as Happy, Satisfied, or Disappointed.

The sentiment monitor graph shows the distribution of customer sentiment across different intents, enabling an admin to understand customer satisfaction and sentiment levels related to specific intents or topics of conversation.

The sentiment monitor graph is a bar chart where each bar represents an intent or topic. Each bar represents the associated sentiment across all interactions with that intent, categorizing the sentiment weightage as follows:

* Positive sentiment – Green color
* Neutral sentiment – Yellow color
* Negative sentiment – Red color  
<img src="../images/sentiment-monitor.png" alt="Sentiment Monitor" title="Sentiment Monitor" style="border: 1px solid gray; zoom:80%;">

## Customer Churn Monitor

The Customer Churn Monitor is a pie chart representation of the customer churn risk. This chart indicates customer churn percentage compared with total calls and any observed escalations in the same period. It functions as an interactive graph, where hovering over the graph reveals the weightage of each section based on the hover placement, and clicking a specific section directs to the calls associated with either escalation or customer churn. The following details are displayed:

* **No Customer Churn/Escalation** – Number of interactions with no customer churn/escalation.
* **Customer Churn** – Count of interactions where there has been a customer churn.
* **Escalation** – Number of interactions where the customer has requested assistance from a supervisor or a senior.  
<img src="../images/customer-churn-monitor.png" alt="Customer Churn Monitor" title="Customer Churn Monitor" style="border: 1px solid gray; zoom:80%;">

## Insights Mining

The insights mining dashboard comprises three widgets that facilitate data exploration.

## Topic vs. Sentiment Bubble

The widget grades sentiment scores for interactions on a scale of 1 to 10. Each topic is represented by a bubble with indicators for different weights associated with positive, neutral, or negative sentiment.

Hovering over a topic displays the associated average emotion index label (for example, angry or frustrated) instead of the topic name.

For example: The “Network issues” bubble indicates sentiment distribution as follows:

40% positive (green), 30% neutral, and 30% negative. These percentages are represented by the bubble’s circumference. Hovering over “Network issues” shows the average emotion index, such as “satisfied” (associated with the average sentiment score).

## Keyword Cloud & Emotions

This widget shows relevant keywords for a selected topic from the previous widget. It excludes general stop words and common words.  
<img src="../images/insights-mining.png" alt="Keyword Cloud" title="Keyword Cloud" style="border: 1px solid gray; zoom:90%;">

### Keyword Search

Supervisors can search specific keywords across interactions related to a chosen topic from the topic bubbles using the Keyword Search option.

You can select a single or all topics from the dropdown list to search for a keyword. The total mentions of the keyword and the total number of unique interactions where the keyword is displayed when hovering over the keyword.

If a specific topic bubble is selected, the topic dropdown list automatically chooses the relevant topic. The searched keyword appears in the selected topic bubble or the selected topic from the dropdown list.

When “all topics” are selected from the dropdown list, the topic bubble is deselected and it displays the keywords and interaction details across all topics.

Selecting a specific topic from the dropdown list selects the relevant topic bubble, which shows only the pertinent keywords for that topic.

If a keyword is present in multiple topics, the keyword count and interaction mention the specific topic’s relevance.

When searching for a keyword, only that specific keyword appears in the keyword cloud. Relevant semantic keywords, if available, are displayed in the keyword cloud.

The interaction details refer to the main keyword searched, and if any semantic variations are present, the interaction details are shown after the complete set of interactions for the specific keyword is searched.

When a specific semantic variation keyword is selected in the keyword cloud, the interactions related to that keyword are displayed in the interaction details.  
<img src="../images/keyword-search.png" alt="Keyword Search" title="Keyword Search" style="border: 1px solid gray; zoom:90%;">

## Interaction Details

Interaction details display the relevant details based on default settings that you can configure. When you select specific topics or keywords, the widget presents the relevant information, or if no specific selection is made, it displays information based on the highest sentiment score or other user-configured settings.

This section includes the following fields:

* Date/Time of the session
* Call ID
* Agent name/ID (you can select from a dropdown list of agent groups/agents)
* Description (text reference to the keyword cloud)
* Call Reason/Intent
* Sentiment Score (configurable from high to low)
* Dispositions  
<img src="../images/interaction-details.png" alt="Interaction Details" title="Interaction Details" style="border: 1px solid gray; zoom:90%;">
