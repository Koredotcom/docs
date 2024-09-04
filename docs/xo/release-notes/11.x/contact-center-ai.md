# Contact Center AI Updates

This document provides information on the feature updates and enhancements introduced in **Contact Center AI** of XO v11.x releases.

## v11.5.0 September 01, 2024

<u> Patch Release </u>

This update includes enhancements and bug fixes. Key enhancements included in this release are summarized below.

### Agent Console

#### Outbound Calling - Revised Dialpad Behavior

Agents now have more flexibility and validation options when dialing outbound calls. It streamlines the outbound calling process, giving agents more control and reducing potential mistakes when dialing international numbers.

**Key updates**:

* Automatic country code recognition:
    * Displays country flag when number includes country code.
* Enhanced number entry options:
    * Direct dialing without country code.
    * Option to change country code to "unknown".
    * Automatic country selection for pasted numbers with codes.
* Improved validation:
    * Error messages for invalid number formats.
    * The call button is disabled for non-compliant numbers.
* Flexible country code handling:
    * It supports dialing with or without country codes.
    * Allows manual country code changes.

[Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#outbound-dialer)

### Configuration

#### New Permission for Sentiment Visibility Control

The new permission to manage the visibility of captured customer sentiment in the Agent Console. It allows administrators to fine-tune sentiment visibility, balancing between providing agents with valuable customer insights and maintaining data privacy standards.

**Key updates**:

* Permission Details:
    * Name: Visibility of Captured Sentiment
    * Subtext: Manage the visibility of customer's sentiment in the agent console
    * Access Level: Yes/No
* Default Settings:
    * Administrator, Supervisor, Agent: Set to "Yes"
    * Custom Role: Default "Yes"
* Functionality:
    * When enabled, it displays real-time sentiment changes in the header pane.
    * Ensures agents have current information on customer sentiment.

[Learn more :octicons-arrow-right-24:](../../user-management/role-management.md#permissions)

#### Enhanced Conferencing Functionality

This update significantly enhances the conferencing capabilities, enabling more effective team collaboration and improved customer service in complex call scenarios.

**Key updates**:

* Expanded Participation:
    * Up to 5 contact center participants (1 agent + 4 supervisors).
* Improved Network Resilience:
    * In case of network disruption, only the affected participants are disconnected.
    * Rejoin option for disconnected users.
* Comprehensive Recording:
    * The recording status is updated in the database for compliance.
* Advanced Conference Management:
    * Transfer and exit options for all participants.
    * 5-second window to rejoin or close conversation after exit.
* Enhanced Accountability:
    * CSAT linked to the last handling agent.
    * The primary agent is responsible for After-Call Work (ACW).
* Improved Visibility:
    * Joined participants are highlighted in the chat transcript.
    * Clear conference indicators on the Monitor tab and Agent Console. [Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#consult-call-conference-call-and-warm-transfer-for-voice-calls)

### Analytics

#### “Yesterday” Filter Added to Reports

The "Yesterday" date filter is now available in all reports that previously did not have this option. Users can quickly view and analyze data from the previous day without manually setting the date range.

When the "Yesterday" filter is selected in any report, it automatically includes all data from the previous day, from 12:00.00 AM to 11:59:59.999 PM.

#### "Week to Date" and "Month to Date" Filters Added to Reports

This update has introduced two new date filters for reports. The filters provide more flexible and standardized options for viewing recent data, facilitating easier trend analysis and performance tracking.

* "Week to Date" Filter (All Reports):
    * Covers from most recent Sunday 12:00 AM to Yesterday 11:59:59.999 PM
    * Available in all reports.
    * No data is returned if it runs on a Sunday.
* "Month to Date" Filter (Specific Reports):
    * Added to 11 key reports, including Agent Activity, Queue Metrics, and IVR Containment.
    * Covers from the first day of the current month 12:00 AM to Yesterday 11:59:59.999 PM.
    * No data will be returned if run on the first day of the month.

#### Improved Analytics for Joining Agents

The update has enhanced the system’s tracking and reporting capabilities for user involvement in conversations and interactions. The capabilities provide a more detailed and accurate picture of user participation in interactions, supporting better resource management and performance analysis.

**Key updates**:

* Interactions Dashboard:
    * The new "Joined Users" field is in the **Insights to Logs** > **Details** tab. [Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#insights-to-logs)
    * Displays a comma-separated list of users who joined the conversation.
* Interactions Details Report:
    * The "Joined Users" column has been added to the CSV version.
    * Shows a pipe-separated list of joined users.
* Call Details API v2:
    * A new mandatory "JoinedUsers" array is added. [Learn more :octicons-arrow-right-24:](../../apis/contact-center/get-all-conversations-data-call-details.md)
* Agent Activity Summary Report:
    * Now includes interaction duration for all involved agents and supervisors.
    * The "Interacting" field counts time for primary agents, consultants, and joined users. [Learn more :octicons-arrow-right-24:](../../analytics/contact-center/reports/agent-activity-summary-report.md)

### Public API

#### Enhanced Conversation Transfer Functionality

This update enhances the conversation transfer functionality through API, allowing for more flexible and efficient chat transfers.

**Key updates**:

* Flexible Transfer Options:
    * Transfer to specific agents using agent ID (aId).
    * Transfer to waiting queues using queue ID (queueID).
* API Alignment with Agent Console:
    * API now mirrors the transfer capabilities of the agent console.
* Improved Response Handling:
    * Clear success or error messages for transfer requests.

**Key benefits**:

* More versatile conversation routing.
* Consistent transfer capabilities across API and Agent Console.
* Enhanced chat management efficiency.
* Improved clarity in transfer status communication. [Learn more :octicons-arrow-right-24:](../../apis/contact-center/transfer-conversation-to-a-specific-agent-or-queue.md)

#### Extended Debug Logs API to SmartAssist Channel

The Debug Logs API has been updated to collect logs for Voice/DTMF barge-in events within the SmartAssist channel. [Learn more :octicons-arrow-right-24:](../../apis/automation/fetch-debug-logs.md)

<hr>

## v11.4.1 August 11, 2024

<u> Patch Release </u>

This update includes only bug fixes.

<hr>

## v11.4 July 27, 2024

<u> Patch Release </u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Agent Console

#### Improved Arrival Summary Placement

When an agent accepts a conversation, the system now automatically generates an arrival summary and inserts it at the bottom of the Bot-User transcript. It helps agents quickly grasp the context of each interaction, thus improving their ability to assist users effectively.
A loading indicator is displayed for summaries that take time to generate. Additionally, a refresh button is available to retrieve any missing bot/user conversation data, ensuring agents have complete information. After an agent transfer, Agent 2 will see the entire summary of the prior conversation, displayed immediately after the last message from Agent 1. [Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#arrival-summary)

### Configuration

#### Load-Balanced Agent Routing

Contact Center AI now offers Load-Balanced Agent Routing, an administrator-enabled functionality that improves task distribution among agents. It enhances operational efficiency by ensuring optimal utilization of available agents while preserving task quality and agent expertise.

Key aspects:

* Fair workload distribution: Tasks are matched based on skills, language proficiency, and last assignment time.  

* Prioritization of less busy agents: Agents who haven't received recent tasks are given priority for new assignments.

* Skill-based allocation: Load balancing occurs within the pool of qualified agents, maintaining service quality.

Key benefits:  

* Reduced wait times for tasks.  

* Improved overall system performance.

* Balanced workload across qualified agents.

* Maintained service quality through skill-based assignments.

[Learn more :octicons-arrow-right-24:](../../contactcenter/agent-and-supervisors/agent-management/agent-management.md#load-balanced-agent-routing)

#### Phone Number Label Display Enhancement

Contact Center AI now shows labels for SIP-configured phone numbers in two places:

* Inbound flow attachment section: Labels appear next to phone numbers
* Phone number configuration page: New "Label" column in the table

Key benefits:

* Improved organization: Easier to manage multiple phone numbers.  
* Enhanced clarity: Easier identification of number purposes.  
* Better readability: Improved readability in configuration tables.  

This update streamlines phone number management, making it more efficient for agents and administrators to work with multiple SIP-configured numbers.

### Kore Voice Gateway

#### ID R&D integration with Kore Voice Gateway

Kore Voice Gateway can now be integrated with ID R&D.

### Campaigns

#### SMS Campaigns

The Campaigns module now supports SMS campaigns, enabling businesses to engage audiences through text messages. SMS allows businesses to leverage impactful, concise communication, enhancing marketing, informational, and transactional messaging strategies.

Key capabilities:

* Campaign Management: Create, edit, clone, and delete campaigns. Also, run, pause, stop, and re-run campaigns.
* Templates: Pre-define message structure and content to ensure consistency and efficiency in messaging.
* Dashboard: Track campaign progress and monitor essential metrics.

Key benefits:

* Direct audience engagement via mobile phones.
* Versatile use for promotions, alerts, reminders, and more.
* Streamlined campaign creation and management.
* Improved efficiency through standardized templates.
* Real-time performance tracking.

[Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/campaign-management/sms-campaigns.md)

#### Preview Dialer

Agent Console now includes a Preview Dialer for outbound calling campaigns.  
<img src="../images/preview-call.png" alt="Preview Dialer" title="Preview Dialer" style="border: 1px solid gray; zoom:70%;">

Key aspects:

* Call Information Preview: Agents see recipient details before calling, including name, account history, and other relevant data.
* Agent-Controlled Calls: Agents decide when to initiate each call. It allows preparation for more personalized interactions.
* Efficient Campaign Management: Assigns call records to available agents, helps optimize agent utilization, and adheres to dialing rules and compliance standards.

[Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/campaign-management/voice-campaigns.md#preview-dialer)

### Analytics

#### Add Alternate Text for JavaScript Messages

By default, a “JavaScript Message” label in displayed in the chat/interactions history for messages written using JavaScript. Now, an Alternate Text can be added to these messages to explain their purpose more clearly. This Alternate Text will be shown in place of the JavaScript label in the interaction history across the application. The “Alternate text” for a JavaScript message can be added using the function `tags.addAlternateText(“value”)`.

#### Interactions Dashboard

##### Improved Search Functionality with Filter Integration

The search functionality has been enhanced to work seamlessly with applied filters.

Key improvements:

* Integrated search and filter: Search now considers active filter criteria. Results are limited to conversations matching both search and filter.
* Increased result relevance: Conversations matching search but not filter are excluded. Ensures consistent results with current filter settings.
The improvements result in a streamlined user experience, faster access to desired conversations, and reduced time spent on manual filtering of search results.

<hr>

## v11.3.1 July 13, 2024

<u> Patch Release </u>

Key features and enhancements included in this release are summarized below.

### Agent Console

#### Enhanced Outbound Calling

Agents can now make outbound calls from any status except "System Away" (Chat and Voice) and "System Busy" (Voice). This feature allows agents to contact customers at scheduled times or during emergencies without changing to "Available" status, preventing incoming calls.  

Key Points:  

* Outbound calls are possible while handling digital interactions.  

* No secondary outbound calls until the current voice call ends.  

* Agent status automatically changes to "System Busy" when initiating an outbound call.  
[Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#manual-outbound-call)

### Administration

#### Two-Factor Authentication (2FA) Support

Contact Center AI now offers Two-Factor Authentication (2FA) for enhanced login security. When enabled in the Kore.ai Admin Console, 2FA becomes mandatory for all users of the account/workspace. If not enabled, the login process remains unchanged. [Learn more :octicons-arrow-right-24:](../../administration/security-and-control/two-factor-authentication-for-platform-access.md)

<hr>

## v11.3.0 June 29, 2024

<u> Patch Release </u>

Key features and enhancements included in this release are summarized below.

### Agent Console

#### Enhanced Outbound Dialer

The outbound dialer has been enhanced with the following functionalities:

* **Search Bar**: The search bar on the dialer interface allows agents to enter keywords or partial numbers to find configured contacts quickly.
* **International Subscriber Dialing (ISD) Code Update**: The dialer automatically adjusts the outbound phone number's ISD code based on the last country code used. This streamlines the process for agents making calls to different regions.
* **Phone Number Formatting**: The system displays the phone number in a standardized format when an agent enters it for dialing, regardless of whether the original number contains hyphens or brackets if the format is valid.
* **Validation and Error Handling**: An error message is displayed if an invalid number is entered (for example, incorrect length or characters). The call button is disabled until a valid number is entered, preventing accidental calls to inaccurate numbers. [Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#outbound-dialer)

#### Improved Conversation Handling With an Explicit Reject Button

Administrators can enable agents to explicitly reject an incoming interaction, allowing them to manage their workload efficiently. If Explicit Reject is enabled in the Answer Mode:

* Agents can Accept (✅) or Reject (❌) each interaction on the conversation tray.
* **Accept**: Displays the conversation panel for that interaction.
* **Reject**: Removes the interaction from the agent's queue and returns it to the queue for reassignment. [Learn more :octicons-arrow-right-24:](../../console/managing-incoming-interactions.md#manual-answer-mode)

The Monitor tab displays metrics relevant to rejection in the Agents and Interactions sub-tabs.

**Monitor** > **Agents**

* The Agents sub-tab now includes counts for rejected and unanswered interactions.
* Clicking an agent displays the count of Completed, Transferred, Rejected, and Unanswered interactions. [Learn more :octicons-arrow-right-24:](../../console/monitor-queues-agents-interactions-service-levels.md#agents)

**Monitor** > **Interactions**

* Clicking an agent displays the count of Answered, Transferred, Rejected, and Unanswered interactions. [Learn more :octicons-arrow-right-24:](../../console/monitor-queues-agents-interactions-service-levels.md#manually-assign-conversations-to-an-agent-and-change-queue)

### Configuration

#### Phone Number Labels for Outbound Dialer

Administrators can now label outbound phone numbers (for example, Technical Support, Helpdesk). These labels appear next to phone numbers on the outbound dialer. Agents can search numbers by label, with results updating dynamically. The system logs all label-related activities, including creation, modification, and deletion.

### Administration

#### PII Redaction: Consistency Between Instance and Automation Bots

To ensure consistency, the instance bot also redacts data that the Automation bot redacts and vice versa. This applies to all channels.

### Analytics and Reporting

#### Queue Metrics Interval Report

This report provides queue performance metrics at sub-daily intervals (15 minutes to 4 hours). It includes service level data, highlighting both met and unmet targets. [Learn more :octicons-arrow-right-24:](../../analytics/contact-center/reports/queue-metrics-interval-report.md)

#### Secure Form View Extended to 30 Days

Administrators and Supervisors with access to Dashboard > Interactions can now view the data captured via the Secure Forms for up to 30 days from the conversation date.

#### Auto Refresh of Monitor Tab Filters

Automatic refresh for filters applied in the Monitor tabs at fixed intervals is implemented to ensure real-time data accuracy.

* Filtered data on Monitor tabs is updated at the specified interval, reflecting real-time changes.
* New interactions are not immediately added to filtered results but appear after the 5-second update interval. [Learn more :octicons-arrow-right-24:](../../console/monitor-queues-agents-interactions-service-levels.md#auto-refresh-when-filters-are-applied)

### Kore Voice Gateway

#### Changes to Bot Delay Handling

These updates refine how delays are managed during bot interactions, enhancing the user experience by providing smoother transitions.

If a delay persists between two message nodes:

* In the case of a URL, the music stops immediately when the bot responds.
* In the case of a text message, the prompt plays completely, even after the bot responds.

Example: If a bot has the following nodes - Message → API → Message nodes.

* Waiting music starts playing when there is a delay from the API node.
* When the API node responds, the music stops gracefully, and the next message node begins playback without interruption.

### API

#### Conversation History API

#### Task Name (tN) Field Added in the Response for Automation Bots

The response of the Conversation History API is updated to show the “tN” field for all intents executed in Automation bots. This field accurately shows the task name associated with the executed intent. For example, “tN” = “Pay Bill”, “tN” = “Show Balance”. [Learn more :octicons-arrow-right-24:](../../apis/automation/conversation-history.md)

### Campaigns

#### Cloning Campaigns Without Schedule Configurations

When a campaign is cloned, the new campaign will not include the schedule configurations of the parent campaign. [Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/campaign-management/voice-campaigns.md#clone-a-voice-campaign)

#### Voice Campaigns: User Settings for Auto Dialers

Administrators can enable voice support for inbound calls and outbound campaigns.

* Inbound: In the case of an Agentless Dialer, the agent can handle transferred calls.
* Outbound Campaigns: Agents can handle calls from Auto Dialers. [Learn more :octicons-arrow-right-24:](../../user-management/manage-users.md#chat--voice)

#### Progressive Dialer

The Progressive Dialer is an outbound calling system that improves agent efficiency and productivity. It automatically dials the next number in a queue as agents complete their current calls, ensuring continuous activity. Calls are connected only when a human answers, filtering out voicemails and busy signals. Agents can review contextual information about the contact beforehand but have limited control over the timing or recipient of calls. The dialer optimizes lead allocation based on agent availability, tracks statuses to assign calls to the least busy agent, and provides comprehensive metrics and call statistics for monitoring and reporting purposes. [Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/campaign-management/voice-campaigns.md#auto-dialers)

<hr>

## v11.2.1 June 15, 2024

<u>Patch Release</u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Configuration

#### Revised Routing Logic When No Agents Available

When no agents are logged in, conversations will now remain in the queue until the maximum wait time specified for that queue is reached. After the queue timeout occurs, the "no agents available" flow will be automatically triggered.

This enhanced routing logic is enabled by default at the account level for all new accounts and applies across all channels. It ensures that when agents are unavailable, conversations are handled smoothly by the fallback flow after the configured wait time, improving the customer experience.

Existing accounts will continue to use their current routing logic. To take advantage of this improved routing, please contact Kore Support to modify your configuration. [Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#behavior-when-no-agents-are-available)

### Voice Gateway

#### Support for Additional Azure Voices

Contact Center AI now supports additional Azure voices, providing a wider range of options for voice-based interactions. The following voices have been added:

* en-US: Ava
* en-UK: Sonia
* de-DE: Louisa
* en-AU: Freya
* es-ES: Elvira
* es-CO: Salome
* fr-FR: Denise
* it-IT: Isabella
* ko-KO: SoonBok
* Mandarin (China): XiaoXiao
* Cantonese (China): XiaoMin

Additionally, Ava Multilingual, a voice that supports a wide range of languages, has been introduced. Ava Multilingual supports the following languages:

* af-ZA, am-ET, ar-EG, ar-SA, az-AZ, bg-BG, bn-BD, bn-IN, bs-BA, ca-ES, cs-CZ, cy-GB, da-DK, de-AT, de-CH, de-DE, el-GR, en-AU, en-CA, en-GB, en-IE, en-IN, en-US, es-ES, es-MX, et-EE, eu-ES, fa-IR, fi-FI, fil-PH, fr-BE, fr-CA, fr-CH, fr-FR, ga-IE, gl-ES, he-IL, hi-IN, hr-HR, hu-HU, hy-AM, id-ID, is-IS, it-IT, ja-JP, jv-ID, ka-GE, kk-KZ, km-KH, kn-IN, ko-KR, lo-LA, lt-LT, lv-LV, mk-MK, ml-IN, mn-MN, ms-MY, mt-MT, my-MM, nb-NO, ne-NP, nl-BE, nl-NL, pl-PL, ps-AF, pt-BR, pt-PT, ro-RO, ru-RU, si-LK, sk-SK, sl-SI, so-SO, sq-AL, sr-RS, su-ID, sv-SE, sw-KE, ta-IN, te-IN, th-TH, tr-TR, uk-UA, ur-PK, uz-UZ, vi-VN, zh-CN, zh-HK, zh-TW, zu-ZA.

#### AmiVoice Integration with Kore Voice Gateway

Kore Voice Gateway now integrates with AmiVoice, a Japanese Automatic Speech Recognition (ASR) system, as part of an external application. By leveraging this integration, the Voice Gateway can now accurately process and understand Japanese voice inputs, leading to more efficient and effective voice-based interactions.

!!! note

    This integration is being validated post-deployment.
 
<hr>

## v11.2 June 01, 2024

<u>Patch Release</u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Agent Console

#### HTML Elements Supported on the Agent Compose Bar

Agents can now add hyperlinks to their typed text in the compose bar by highlighting the text and adding a hyperlink.

Using this feature, agents can do the following:

* Select a portion of their text and add a hyperlink to it.
* Remove the hyperlink if they change their mind.
* Add hyperlinks for HTTP and HTTPS URLs.
* Add hyperlink actions for email (mailto:a@b.com). Clicking the link opens the associated mail app.
* Customize the display text of the hyperlink.
* Display the full URL when an agent hovers over the hyperlink. [Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#adddelete-hyperlinks-in-the-compose-bar)

#### Improved Sorting and Enhanced Auto Accept

By default, new conversations will appear at the top of the conversation tray based on their order of acceptance. Agents can choose to revise the sorting order, placing the latest conversation at the top or bottom.

When a new auto-accepted conversation arrives in the agent's conversation tray, a **New** indicator is displayed beside it. When anyone applies a conversation filter that hides incoming auto-accepted conversations (for example, ongoing, idle), a preview of the auto-accepted conversations appears with a "View" button next to each hidden conversation to allow quick view and access. The indicator and the view option remain till the agent clicks the conversation and sends the first message. [Learn more :octicons-arrow-right-24:](../../console/managing-incoming-interactions.md#handling-incoming-interactions-based-on-answer-mode)

### Voice Gateway

#### User Diagnostics

User diagnostics systematically assesses and analyzes network connectivity and device permissions to identify issues, optimize service delivery, and enhance user satisfaction. Using real-time monitoring, this tool helps resolve problems efficiently, improving agent performance and ensuring a seamless customer experience.

The User Diagnostics (♡) icon is at the top right corner of the Agent Console.  
<img src="../images/user-diagnostics-icon.png" alt="User Diagnostics Icon" title="User Diagnostics Icon" style="border: 1px solid gray; zoom:70%;">

**Agent Diagnostics**: Clicking the User Diagnostics (♡) icon displays the Agent Diagnostics page. Users can run diagnostics related to their:

* Audio Device,
* Video Device,
* Connectivity.

[Learn more :octicons-arrow-right-24:](../../console/manage-layout.md#user-diagnostics)

#### Set Voice Chat on Kore.ai Voice Gateway Account

Administrators can use a Utils method/script inside the script node to set up voice chat in accounts configured with Kore.ai Voice Gateway. [Learn more :octicons-arrow-right-24:](../../flows/node-types/utils.md#set-voice-chat-on-koreai-voice-gateway-account)

#### Handling ASR Fallback Using Call Control Parameters

The status column is updated if no fallback is configured or failover fails. If proper failover occurs, a timeline message is displayed.

### Campaigns

#### Schedule Proactive Web Campaigns

The ability to schedule campaigns is extended to Proactive Web Campaigns. [Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/campaign-management/proactive-web-campaigns.md#schedule-proactive-web-campaigns)

#### Dynamic Retrieval and Reflection of CSV Column Values

Campaign managers can read, fetch, and display column/field values from a CSV file whenever required. This can be done within the message node in the start flow or by sending the necessary values to the Agent Console during an agent transfer, ensuring these values are reflected in the voice campaign call. [Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/list-management/list-management.md#dynamic-retrieval-and-reflection-of-csv-column-values)

### Configuration

#### Start Flows Table: Enhanced Visibility for Channels and Flow Types

A Channels column is added to the Start Flows table. This column displays a list of all channels attached to each flow. Each row shows the flow type (call or chat) for each flow. [Learn more :octicons-arrow-right-24:](../../flows/introduction-to-flows.md#the-flows-live-board)

### Analytics

#### Bulk Download of ASR Transcripts

Supervisors can select conversations and choose to Export Conversation Data or Export Transcripts.

* If Export Conversation Data is selected, the metadata of all selected conversations is exported.
* If Export Transcripts is selected, the exported transcript files retain the same naming convention currently used for all transcript exports. These files are compressed into a zip file named "transcripts-YYYY-MM-DD-HH24-mm-SS.zip.
* Up to 25 conversations can be selected for exporting transcripts. [Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#export-conversation-datatranscripts)

#### Display Agent and Disposition Notes in Search Results on the Interactions Tab

**Dashboard** > **Interactions**

Agent notes and Disposition notes are now displayed in the search results on the Interactions tab. 
[Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#search-interactions)

## v11.1.1 May 11, 2024

<u>Patch Release</u>

This update includes feature enhancements and bug fixes. Key features and enhancements included in this release are summarized below.

### Voice Gateway

#### Play HT Streaming Support

Streaming for Play HT Text-to-Speech (TTS) is now supported. With streaming support, the voice gateway does not wait for the entire prompt audio to be generated before playback begins. This means reduced latency and a smoother user experience when playing prompts.

### API

#### Delete Call Recording API

Applications with the relevant access can delete call recordings to manage storage and comply with privacy regulations.

A new scope called Delete Recordings is added under API Scopes. You can assign this scope to delete call recordings using a session ID. [Learn more :octicons-arrow-right-24:](../../apis/contact-center/delete-call-recording.md)

<hr>

## v11.1.0 April 27, 2024

<u>Minor Release</u>

Key features and enhancements included in this release are summarized below.

### Agent Console

#### Outbound Emails

Outbound email functionality is a key feature within Contact Center AI designed to streamline communication between agents and customers through email channels. Agents can now send outbound emails from the agent console. The outbound emails are independent of the ongoing conversations.  
[Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers/interacting-with-customers.md#outbound-email)

A new permission for Outbound Email is added in the Agent & Supervisor Experience section with the following details:

**Name**: Outbound Email

**Subtext**: Make outbound emails if enabled for the account

**Access Level**: Yes/No

* App Owner – Yes
* App Developer – Yes
* Supervisor – Yes
* App Tester – No
* Agent – No
* Custom Role – No (Default)  
[Learn more :octicons-arrow-right-24:](../../user-management/role-management.md#permissions)

### Campaigns

#### Schedule Voice Campaigns

Scheduling allows precise control over when your messages will be delivered. You can now seamlessly plan campaigns to coincide with peak engagement times, ensuring maximum impact. [Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/campaign-management/voice-campaigns.md#schedule-voice-campaigns)

### Agents & Supervisors

#### System Busy and System Away Status Enabled by Default

System Away and System Busy statuses are enabled by default for new accounts. For existing accounts, contact Kore Support. [Learn more :octicons-arrow-right-24:](../../contactcenter/agent-and-supervisors/agent-management/agent-management.md#system-away-and-system-busy-status)

#### Enable/Disable Resolution Disposition Sets

The **Resolution** Disposition Set comes prebuilt. App Owners can now enable/disable and edit the resolution disposition set. [Learn more :octicons-arrow-right-24:](../../contactcenter/agent-and-supervisors/dispositions/manage-dispositions.md#disposition-sets)

### Analytics and Reporting

#### Selected Hours Report

The Selected Hours Report shows daily totals of every agent's productive hours. Productive hours are determined by built-in and custom statuses selected by users. [Learn more :octicons-arrow-right-24:](../../analytics/contact-center/reports/selected-hours-report.md)

