# Contact Center AI Metrics

<table>
  <tr>
   <td>Metric
   </td>
   <td>Source
   </td>
   <td>Method/Formula
   </td>
   <td>Definition
   </td>
   <td>API Link and Parameter
   </td>
  </tr>
  <tr>
   <td>Client Call Volume
   </td>
   <td>Interaction logs or session analytics.
   </td>
   <td>Export session data via the Session Logs API or Analytics Dashboard.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Intent ID rate
   </td>
   <td>NLU performance metrics in bot analytics.
   </td>
   <td>Use the Intent Recognition API or export Intent Analytics.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Fallout Disconnect Volume and Rate
   </td>
   <td>Interaction events in the platform.
   </td>
   <td>Query disconnection events using Session Events API, filter based on event reasons like “CX error.”
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Successful Disconnect Volume and Disconnect Rate
   </td>
   <td>Analytics Dashboard or Custom Reports.
   </td>
   <td>Filter sessions where tasks were completed, but no agent escalation occurred.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Total Disconnect Volume and Disconnect Rate
   </td>
   <td>Analytics on session drop-offs.
   </td>
   <td>Analyze logs for session disconnections pre-queue assignment.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Agent Handoff Volume and Rate
   </td>
   <td>Escalation data from the bot’s configuration.
   </td>
   <td>Extract handoff events via Agent Escalation API.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Calls Saved and Containment Rate
   </td>
   <td>Containment metrics in analytics.
   </td>
   <td>Use session IDs and timestamps to track sessions without subsequent escalations or callbacks.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Transfer Rate
   </td>
   <td>Agent interaction logs.
   </td>
   <td>Analyze events for warm/cold transfers.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Misroute Rate
   </td>
   <td>Wrap-up codes or agent feedback in analytics.
   </td>
   <td>Query session tags or agent logs via API.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Re-prompt Rate
   </td>
   <td>Bot’s error handling logs
   </td>
   <td>Count re-prompt events in session logs.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Bot AHT
   </td>
   <td>Analytics Dashboard (Handle Time section).
   </td>
   <td>Export handle time data via analytics API.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Client Experience Score
   </td>
   <td>CSAT feedback module.
   </td>
   <td>Fetch CSAT survey responses.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Task Completion Rate
   </td>
   <td>Task Analytics
   </td>
   <td>Query successful task completions via Task Execution Metrics API.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Handle Time (AHT)*
   </td>
   <td>Agent analytics or reports.
   </td>
   <td>Aggregate Talk Time, Hold Time, and After Call Work from session logs.
   </td>
   <td>Total handle time of the conversation in seconds.
   </td>
   <td><a href="https://docs.kore.ai/xo/apis/contact-center/contact-volume/">Contact Volume API</a>
<br>
Parameter: Contact Volume API (CallVolumeUpdate.conversationHandleTime)
   </td>
  </tr>
  <tr>
   <td>Talk Time
   </td>
   <td>Interaction logs.
   </td>
   <td>Extract agent-client conversation durations.
   </td>
   <td>Total talk time during the conversation in seconds.
   </td>
   <td><a href="https://docs.kore.ai/xo/apis/contact-center/contact-volume/">Contact Volume API</a>
<br>
Parameter: Contact Volume API(CallVolumeUpdate.conversationTalkTime)
   </td>
  </tr>
  <tr>
   <td>Hold Time
   </td>
   <td>Interaction logs.
   </td>
   <td>Query session logs for hold events.
   </td>
   <td>Total hold duration in seconds during the call.
   </td>
   <td><a href="https://docs.kore.ai/xo/apis/contact-center/contact-volume/">Contact Volume API</a>
<br>
Parameter: Contact Volume API(CallVolumeUpdate.holdDuration)
   </td>
  </tr>
  <tr>
   <td>After Call Work (ACW)
   </td>
   <td>Agent interaction reports.
   </td>
   <td>Extract ACW time from agent session logs.
   </td>
   <td>After-call work duration in seconds.
   </td>
   <td><a href="https://docs.kore.ai/xo/apis/contact-center/contact-volume/">Contact Volume API</a>
<br>
Parameter: Contact Volume API(CallVolumeUpdate.acwDuration)
   </td>
  </tr>
  <tr>
   <td>Net Calls Handled (NCH)*
   </td>
   <td>Analytics Dashboard or custom agent reports.
   </td>
   <td>Export total handled calls per agent.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Sample size
   </td>
   <td>Control/test group assignment in the analytics.
   </td>
   <td>Export agent metadata and session data.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Same Day Callback + 1 (SDCB)
   </td>
   <td>Interaction logs with timestamps.
   </td>
   <td>Identify callbacks using client IDs and timestamps.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Client Availability*
   </td>
   <td>Agent activity logs.
   </td>
   <td>Divide actual productive time by expected productive time.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>FCR
   </td>
   <td>Session interaction logs.
   </td>
   <td>Analyze client interactions within 7-day windows.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Agent Satisfaction
   </td>
   <td>Feedback from agent assist logs.
   </td>
   <td>Extract agent feedback via Agent Assist Feedback API.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>CSAT
   </td>
   <td>Post-interaction surveys.
   </td>
   <td>Fetch CSAT ratings via the survey response export feature.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Uptime
   </td>
   <td>System health logs or monitoring tools.
   </td>
   <td>Use bot monitoring APIs or analytics for uptime tracking.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Latency
   </td>
   <td>Session analytics or logs.
   </td>
   <td>Extract latency data from interaction response times.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Usage Adoption
   </td>
   <td>Agent activity logs.
   </td>
   <td>Calculate percentage usage from augment feature access logs.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Model accuracy Score
   </td>
   <td>NLU Model Performance Dashboard.
   </td>
   <td>Export intent and entity accuracy metrics from analytics.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Total Conversations
   </td>
   <td>Dashboard -> Automations/ Queues & Agents/ Interactions
<br>
Interactions Report
<br>
Total Volumes report
<br>
Queue Metrics Interval Report
<br>
Queue Metrics Summary Report
<br>
Call Details API
<br>
Call Volume API
   </td>
   <td>NA
   </td>
   <td>All the conversations that came into the Contact Center AI routing system fulfilling the filters
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Waiting
   </td>
   <td>Dashboard -> Queues & Agents
   </td>
   <td>NA
   </td>
   <td>All calls/chats, currently waiting in queue.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Ongoing
   </td>
   <td>Dashboard -> Queues & Agents
   </td>
   <td>NA
   </td>
   <td>All calls/chats currently interacting with agents.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Idle
   </td>
   <td>Dashboard -> Queues & Agents
   </td>
   <td>NA
   </td>
   <td>All calls/chats where the customer has been silent for some time.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Expired
   </td>
   <td>Dashboard -> Queues & Agents
   </td>
   <td>NA
   </td>
   <td>All calls/chats have been ended, but disposition has not yet been set.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Completed
   </td>
   <td>Dashboard -> Automations/ Queues & Agents/
<br>
Queue and Agent performace tables
<br>
Dashboard – Interactions
<br>
Interactions Report
<br>
Total Volumes Report
<br>
Queue Metrics Interval Report
<br>
Queue Metrics Summary Report
<br>
Agent Metrics Daily Report
   </td>
   <td>NA
   </td>
   <td>All calls/chats in a completed state. (They may have been properly closed by an Agent, Abandoned by the customer, or terminated by the system for any reason).
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Abandon Rate
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Monitor tab- SLA
<br>
Queue Metrics Summary Report
   </td>
   <td>(Number of conversations which were abandoned by the user / Number of conversations closed) *100
   </td>
   <td>All calls/chats that entered the queue in this time interval, were prematurely dropped by the customer.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Queue Load
   </td>
   <td>Dashboard -> Queues & Agents
   </td>
   <td>Queue Load = (Voice + Chat/3 + Messaging/8 + Email/10) x 100 / Available Agents
<br>
Where
<br>
Voice = Voice Count; Ongoing or waiting in queue (including Voicemails or Callbacks before turning Outbound).
<br>
Chat = Chat Count; Live chat conversations ongoing or waiting in a queue.
<br>
Messaging = MessagingCount; Messaging conversations ongoing or waiting in a queue.
<br>
Email = Email Count; Email conversations ongoing or waiting in a queue.
   </td>
   <td>NA
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Resolved Rate
   </td>
   <td>Dashboard -> Queues & Agents
   </td>
   <td>(Number of conversations which were closed with dispositions as Resolved / Number of conversations closed) * 100
   </td>
   <td>All calls/chats that entered the queue in this time interval, that were resolved successfully / All calls/chats.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Pick-up Time
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
   </td>
   <td>The sum of (time from when the agent’s phone starts ringing – Agent picks it up)/no. of conversations answered
   </td>
   <td>Average of (time from when the Agent’s phone starts ringing – Agent picks it up.)
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Engagement Time
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
   </td>
   <td>The sum of time from when the agent starts talking to the end of the call/no. of conversations answered
   </td>
   <td>Average of time from when the Agent starts talking to the end of the call
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Talk Time
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
<br>
Queue Metrics Interval Report
<br>
Total Volume Report
<br>
Queue Metrics Summary Report
<br>
Agent Metrics Daily Report
<br>
Call Volume API
<br>
Monitor tab
   </td>
   <td>Average Engagement time – mute/hold time
   </td>
   <td>Average talk time
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Mute/Hold Time
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
   </td>
   <td>NA
   </td>
   <td>The average duration of all mute/holds of an agent
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Speed to Answer ASA)
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
<br>
Queue performance table
<br>
Queue Metrics Summary Report
<br>
Queue Metrics Interval Report
<br>
Queue Chat Metrics Interval Report
<br>
Call Volume API
<br>
Monitor tab
<br>
Service levels
   </td>
   <td>NA
   </td>
   <td>Average of (Time from entering the queue to being accepted by Agent for answered conversations only)
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average First Response Time
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
<br>
Agent Chat Metrics Report
<br>
Monitor tab
   </td>
   <td>The sum of (Time from acceptance by agent to time of first greeting by Agent)/no. of answered conversations
   </td>
   <td>Average of (Time from acceptance by agent to time of first greeting by Agent.)
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Agent Response Time
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
<br>
Monitor tab
<br>
Agent Chat Metrics Report
   </td>
   <td>The sum of time duration taken by an agent to respond to a customer’s messages/no. of responses by an agent except the first agent’s message, that is, A2-C1 + A3-C2 +…/no. of agent responses except for the first msg of the agent (when the agent responds first)
   </td>
   <td>Average time taken by the Agent to respond to a message from the Customer.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Customer Response Time
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
   </td>
   <td>The sum of time duration taken by a customer to respond to an agent’s messages/no. of responses by an agent except the first customer message, that is,
<br>
C2-A1 + C3-A2 +…/no. of customer responses except the first message of the customer (when the customer responds first)
   </td>
   <td>The average time taken by the Customer to respond to the Agent.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Total Transfers
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
<br>
Service levels
<br>
Monitor tab
<br>
Agent Metrics Daily Report
<br>
Agent Chat Metrics Report
<br>
Queue Metrics Summary Report
<br>
Queue Metrics Interval Report
<br>
Total Volume Report
   </td>
   <td>NA
   </td>
   <td>Number of all calls/chats transferred to queues or agents in this time interval.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Call Transfers
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
<br>
Service levels
<br>
Monitor tab
<br>
Agent Metrics Daily Report
<br>
Agent Chat Metrics Report
<br>
Queue Metrics Summary Report
<br>
Queue Metrics Interval Report
<br>
Total Volume Report
   </td>
   <td>NA
   </td>
   <td>The number of all voice calls transferred out to other destinations that entered selected queues or agents that entered queues in this time interval.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Chat Transfers
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
<br>
Service levels
<br>
Monitor tab
<br>
Agent Metrics Daily Report
<br>
Agent Chat Metrics Report
<br>
Queue Metrics Summary Report
<br>
Queue Metrics Interval Report
<br>
Total Volume Report
   </td>
   <td>NA
   </td>
   <td>The number of all chats transferred out to other destinations that entered selected queues or agents that entered queues in this time interval.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Skills in Queue(Live)
   </td>
   <td>Dashboard -> Queues & Agents
   </td>
   <td>NA
   </td>
   <td>This widget shows the top 5 skills that current conversations (waiting or talking) require.
<br>
Each line shows the percentage of conversations that require each skill.
<br>
This percentage is also displayed at the end of the line, along with the number of conversations requiring that skill.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Top Skills
   </td>
   <td>Dashboard -> Queues & Agents
   </td>
   <td>NA
   </td>
   <td>This widget will show a WordCloud with the top 10 skills that are required by conversations, in this time interval.
<br>
Pressing the hamburger button will switch the view to a table of the skills (with numConversations and %), sorted by popularity.
<br>
WordCloud is the default view. You can also switch back from a table to the WordCloud.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Conversations by Disposition
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Queue Disposition Report
   </td>
   <td>NA
   </td>
   <td>Will display all conversations with Dispositions assigned
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Satisfaction Rating
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
<br>
Queue performance table
<br>
Agent performance table
<br>
Queue Chat Metrics Interval Report
<br>
Queue Metrics Interval Report
<br>
Queue Metrics Summary Report
<br>
Agent Chat Metrics Report
<br>
Agent Metrics Daily Report
<br>
Monitor tab
   </td>
   <td>The sum of CSAT/no. of conversations that provided CSAT
   </td>
   <td>Average of CSAT
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Customer Satisfaction by Channel
   </td>
   <td>Dashboard -> Queues & Agents
   </td>
   <td>NA
   </td>
   <td>Will display CSAT score according to the channels
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Offered
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Queue performance table
<br>
My Dashboard
<br>
Queue Chat Metrics Interval Report
<br>
Queue Metrics Summary Report
<br>
Queue Metrics Interval Report
<br>
Total Volume Report
<br>
Call Volume APIAgent Chat Metrics Report
   </td>
   <td>NA
   </td>
   <td>No. of conversations assigned to the agent
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Answered
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Agent performace table
<br>
My Dashboard
<br>
Agent Metrics Daily Report
<br>
Agent Chat Metrics Report
<br>
Call Volume APIQueue metrics Summary Report
<br>
Queue Metrics Interval Report
<br>
Queue Chat Metrics Interval Report
   </td>
   <td>NA
   </td>
   <td>No. of conversations accepted by an Agent(Conversation level)
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Response time
   </td>
   <td>
   </td>
   <td>The sum of time duration taken by an agent to respond to a customer’s messages/no. of responses by an agent except the first agent’s message, that is, Agent 2-Customer 1 + Agent 3-Customer 2 +…/no. of agent responses except for the first message of the agent (when the agent responds first)
   </td>
   <td>Average time taken by the Agent to respond to a message from the Customer.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Unanswered
   </td>
   <td>Agent chat metrics report
<br>
Dashboard -> Queues & Agents
<br>
Agent performace table
   </td>
   <td>NA
   </td>
   <td>No. of conversations assigned but not accepted by the agent until agent timeout
<br>
Note: The conversations that were transferred/moved out from the agent within the agent timeout will not be considered unanswered
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Abandoned (with Agent)
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Agent performace table
<br>
Queue performance table
<br>
My Dashboard
<br>
Agent Chat Metrics Report
<br>
Total Volume API
   </td>
   <td>Chat – user idle scenario
<br>
Voice – when a user ends the conversation while the agent puts it on hold
   </td>
   <td>Conversations abandoned by the user while with the agent
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Transferred
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Agent performace table
<br>
Queue performance tabel
<br>
My Dashboard
<br>
Agent Chat Metrics Report
<br>
Agent Metrics Report
<br>
Total Volume Report
<br>
Call Volume API
   </td>
   <td>NA
   </td>
   <td>Conversations transferred from the agent to another agent/queue
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Logged in
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Agent performace table
<br>
My Dashboard
<br>
Agent Login Logout Report
<br>
Agent Activity Summary Report
   </td>
   <td>NA
   </td>
   <td>How long the agent is in a logged-in state within the chosen interval
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Closed / Hour
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Agent performace table
<br>
My Dashboard
   </td>
   <td>No. of conversations closed / Logged in time
   </td>
   <td>Conversations properly closed by the agent per hour
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Incoming
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Queue performance table
<br>
Queue Chat Metrics Interval Report
<br>
Queue Metrics Summary Report
<br>
Queue Metrics Interval Report
<br>
Total Volume Report
<br>
Call Volume API
<br>
Agent Chat Metrics Report
<br>
Agent performance table
   </td>
   <td>NA
   </td>
   <td>No. of conversations that reached the queue
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Voicemails
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Queue performance table
<br>
Interaction Details Report
<br>
Queue Metrics Summary Report
<br>
Interactions Dashboard
   </td>
   <td>NA
   </td>
   <td>No. of conversations that went into voicemails
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Terminated
   </td>
   <td>Dashboard -> Queues & Agents
<br>
Dashboard – My Dashboard
<br>
System terminations
<br>
Queue performance table
<br>
Total Volume Report
<br>
Queue Metrics Summary Report
<br>
Queue Metrics Interval Report
<br>
Queue Chat Metrics Interval Report
   </td>
   <td>NA
   </td>
   <td>No. of conversations that were terminated by the system in the queue
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Start time
   </td>
   <td>
   </td>
   <td>NA
   </td>
   <td>The timestamp at which the conversation has started
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Duration
   </td>
   <td>
   </td>
   <td>NA
   </td>
   <td>The time duration between the start and end of the conversation
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Accepted
   </td>
   <td>Agent Chat Metrics Report
<br>
Queues & Agents – Agent performace table
<br>
Agent Metrics Daily Report
<br>
Queue Metrics Summary Report
<br>
Queue Metrics Interval Report
<br>
Queue Chat Metrics Interval Report
   </td>
   <td>NA
   </td>
   <td>The chats that are Accepted by the Agent.
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Not Accepted
   </td>
   <td>Agent Chat Metrics
<br>
Queues & Agents – Agent Performance table
   </td>
   <td>NA
   </td>
   <td>Not answered by Agent
<br>
1. Came to agent Queue but did not answer
<br>
2. Rejected the conversation
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Abandoned
   </td>
   <td>AgentChat Metrics
<br>
Queues & Agents – Queue and Chat performance tables
<br>
Queue Metrics Summary Report
   </td>
   <td>NA
   </td>
   <td>Chat – user idle scenario
<br>
Voice – when a user ends the conversation while the agent puts it on hold
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average Duration
   </td>
   <td>Agent Chat Metrics Report
<br>
Total Volume Report
<br>
Queue Chat Metrics Interval Report
<br>
Queue Metrics Interval Report
   </td>
   <td>(Sum of Total talk time) / Accepted Count
   </td>
   <td>The average total talk time of the agent during all the calls
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Average First Response Time (FRT)
   </td>
   <td>Dashboard -> Queues & Agents
<br>
My Dashboard
<br>
Agent Chat Metrics Report
<br>
Monitor tab
   </td>
   <td>The sum of (Time from acceptance by an agent to time of first greeting by Agent)/no. of answered conversations
   </td>
   <td>Average of (Time from acceptance by agent to time of first greeting by Agent.)
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Automations
   </td>
   <td>Dashboard – Automations
<br>
Total Volumes Report
<br>
Dashboard – Interactions, Export
<br>
Interaction Details Reports
<br>
Call Details API
<br>
Monitor tab – Automations Filter
   </td>
   <td>NA
   </td>
   <td>All the conversations that were completed without having to reach an agent
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Dropoffs
   </td>
   <td>Dashboard – Automations
<br>
Total Volumes Report
<br>
Dashboard – Interactions, Export
<br>
Interaction Details Reports
<br>
Call Details API
<br>
Monitor tab – Automations Filter
   </td>
   <td>Dropoffs –
<br>
Voice:
<br>
invalid input is received for the entity nodes
<br>
no input for several Allowed Retries configurations (timeout prompts)
<br>
max number of retires reached configured for the entity node (error prompts)Chat:
<br>
A user left the conversation midway without completing any task – user dropoff
<br>
The task ended as a failure (failure node is executed) – system dropoff
<br>
The last interaction/message resulted in an ‘intent not identified’ scenario – system dropoff
<br>
No response from the assistant – system dropoff
<br>
Live conversation when you abandon the assistant
   </td>
   <td>All the conversations where the end-user dropped off before the resolution
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Agent Transfers
   </td>
   <td>Dashboard – Automations
<br>
Dashboard -> Queues & Agents
<br>
Dashboard – Interactions, Export
<br>
Total Volumes Report
<br>
Interaction Details Reports
<br>
Call Details API
<br>
Monitor tab – Automations Filter
   </td>
   <td>NA
   </td>
   <td>All the conversations that were triggered to an agent and then accepted/ not accepted
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Deflections
   </td>
   <td>Dashboard – Automations
<br>
Dashboard – Interactions, Export
<br>
Total Volumes Report
<br>
Interaction Details Reports
<br>
Call Details API
   </td>
   <td>NA
   </td>
   <td>All the conversations that went to change of channel during a conversation
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Assignments
   </td>
   <td>Interaction Details Report
   </td>
   <td>NA
   </td>
   <td>The number of times this conversation has been assigned to any agent, irrespective of the queue
   </td>
   <td>NA
   </td>
  </tr>
  <tr>
   <td>Acceptances
   </td>
   <td>Interaction Details Report
   </td>
   <td>NA
   </td>
   <td>The number of times this conversation has been accepted by any agent, irrespective of the queue
   </td>
   <td>NA
   </td>
  </tr>
</table>