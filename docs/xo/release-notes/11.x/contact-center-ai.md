# Contact Center AI Updates

This document provides information on the feature updates and enhancements introduced in **Contact Center AI** of XO v11.x releases.

## v11.11.1 March 15, 2025

<u> Patch Release </u>

This update include only bug fixes.

<hr>

## v11.11.0 March 04, 2025

<u>Minor Release</u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Agent Console

#### Agent Channel Selection Control

Added new permission that enables you to configure custom roles to select the interaction type for upcoming interactions from the following options:

* Voice & Digital
* Voice
* Digital  
<img src="../images/channel-selection-dropdown.png" alt="Channel Selection" title="Channel Selection" style="border: 1px solid gray; zoom:80%;">

Key Benefits:

* Workload Control: Ability to focus on preferred interaction types.
* Reduced Context Switching: Focus on a single channel at a time.
* Improved Efficiency: Better management of interaction flow.
* Clear Status: Visual indication of current channel selection.

[Learn more :octicons-arrow-right-24:](../../console/managing-incoming-interactions.md#channel-selection)

### Configuration

#### Summarization with External Models in Contact Center AI

Contact center admins can configure and integrate custom AI models, supporting additional languages and tailored summarization prompts.

Key benefits

* Contact Center Admins
    * Configure external Gen AI models and define custom summarization prompts.
    * Manage summarization across additional languages via custom models.
    * Extend summarization capabilities beyond native Contact Center AI support.
* Agents
    * Leverage external AI models for more flexible and accurate conversation summaries.
    * Ensure consistent summarization across multiple languages and use cases.

[Learn more :octicons-arrow-right-24:](../../contactcenter/configurations/advanced-settings/llm-based-conversation-summary.md)

#### Enable/Disable Conversations to Wait Till Queue Timeout

This configurable setting allows supervisors and admins to enable or disable the waitTillQTimeout property. This enhancement provides better control over how long conversations wait in the queue before transitioning to the no-agent-available flow.

Key benefits

* Provides greater flexibility in handling agent unavailability scenarios.
* Ensures better visibility into waiting conversations, allowing supervisors to intervene.
* Reduces missed interactions by notifying agents of potential SIP registration issues.

[Learn more :octicons-arrow-right-24:](../../contactcenter/agent-and-supervisors/agent-management/agent-management.md#additional-routing-configuration)

### Campaigns

#### Full Access to Mapped and Unmapped Contact Fields in Campaigns

All mapped and unmapped fields from Contact List records are now accessible in Dialog Tasks and Experience Flows via the `UserSession` context object. Developers can retrieve `metaInfo` data through the context object for seamless integration.

Advanced SMS and Agentless Dialer Campaigns can use mapped and unmapped contact fields, enabling dynamic customer interactions. Campaign managers can utilize contact record fields in the `UserSession` context object to build more personalized SMS campaigns. [Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/list-management/list-management.md#accessing-the-contact-list-fields-through-their-labels)

### Analytics

#### Center-Wide Wallboards

A new wallboard is introduced for comprehensive center-wide data visualization.

Key features

* New Tab Display: Dedicated browser tab view for wallboard display
* Full-Screen Capability: Optimized for HDTV displays
* Resolution: 4K support (3840 × 2160 pixels)
* Aspect Ratio: 16:9
* Live Data Updates: 60-second refresh cycle with real-time field updates
* Fixed Layout Design: Standardized, non-customizable widget arrangement

[Learn more :octicons-arrow-right-24:](../../analytics/contact-center/wallboards.md)


#### Interaction Details by Segment Report

The Interaction Details by Segment Report is a comprehensive report that covers how all interactions were processed for each segment. [Learn more :octicons-arrow-right-24:](../../analytics/contact-center/reports/interaction-details-by-segment.md)

#### “Today” Added to Service Level Time-Period Filter

**Monitor** > **Service Levels**

The "Today" option is added to the time-period filter dropdown. Selecting "Today" displays all values based on conversations retrieved from the user's current day, starting from 12:00:00 AM midnight, according to the user's system time zone. [Learn more :octicons-arrow-right-24:](../../console/monitor-queues-agents-interactions-service-levels.md#time-intervals)

<hr>

## v11.10.0 February 12, 2025

<u>Minor Release</u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Supervisor Console

#### Monitor and Intervene in Bot-led Interactions

This update includes new permissions, filtering options, and intervention capabilities to help supervisors monitor and manage bot-led conversations effectively.

Key benefits

* Greater visibility into bot-handled conversations.
* Improved control over conversation routing.
* Enhanced ability to maintain conversation quality.
* Flexible filtering options for better workflow management.

[Learn more :octicons-arrow-right-24:](../../console/monitor-queues-agents-interactions-service-levels.md#manually-assign-a-bot-led-conversation-to-an-agent-or-queue)

#### Quick Agent Information Pop-up on Monitor Tab

Hovering over an agent’s name in the agents' tab shows key details about the agent, reducing the need to navigate multiple screens. [Learn more :octicons-arrow-right-24:](../../console/monitor-queues-agents-interactions-service-levels.md#agents)

### Configuration

#### Support for Queue Name in agentUtils.setQueue

The `agentUtils.setQueue` function is enhanced with queue identification capabilities and improved error handling.

* The function now accepts Queue IDs and Queue Names.
* Direct ‘Queue ID’ resolution without additional API calls.
* Added validation for queue names in numeric format.
* A new error message for unsupported queue name formats.  
[Learn more :octicons-arrow-right-24:](../../flows/node-types/utils.md#set-queue)

### API

#### Fetch Real-Time Agent Status Distribution

Introduced a new API endpoint to fetch real-time agent status distribution. [Learn more :octicons-arrow-right-24:](../../apis/contact-center/check-agent-availability-status.md)

#### Fetch Agent ID Using Custom ID (Extension Number)

Custom IDs can effectively retrieve agent IDs if mapped one-to-one. However, in scenarios where the organization has multiple agent IDs for the same custom ID, it will return an array of agent IDs. [Learn more :octicons-arrow-right-24:](../../apis/contact-center/get-the-agent-id-using-custom-id.md)

### Analytics

#### Interaction Details Enhancement

The 'Copy All' functionality in the Interaction Details tab now includes additional information fields: Timezone and Caller and Callee Numbers. [Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#insights-to-logs)

<hr>

## v11.9.1 January 25, 2025

<u>Patch Release</u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Agent Console

#### Connection Status Alerts

A new status indicator at the top of the Agent Console shows the connection state and automatically updates when:

* The connection is lost (offline),
* Reconnection is in progress, or
* The connection is restored (online).  
<img src="../images/connection-lost.png" alt="Connection Status Alert" title="Connection Status Alert" style="border: 1px solid gray; zoom:80%;">

[Learn more :octicons-arrow-right-24:](../../console/manage-layout.md#connection-handling)

#### Improved Monitoring of Listen and Whisper Functionality

When a supervisor shifts focus away from the current conversation, a Listen Banner appears in the Monitor Tab. This ensures supervisors can monitor other conversations without being tied to one conversation.

A restriction message ensures supervisors confirm before leaving the monitor tab during an active Listen or Whisper session, preventing unintentional interruptions.
The feature enhances supervisor flexibility while maintaining oversight during live conversations. [Learn more :octicons-arrow-right-24:](../../console/monitor-queues-agents-interactions-service-levels.md#listen-and-whisper-voice-calls)

### Configuration

#### Enhanced IVR channel Flow

Multiple prompts in the IVR voice channel flow are combined into a single message before being handed over to the Virtual Assistant using the Automation Node. A "Prompt: True" flag indicates the system awaits user input, ensuring smooth and uninterrupted communication.

Key benefits

* Ensures effective user input capture.
* Prevents call disconnections.
* Maintains seamless transitions between the IVR Welcome Voice Flow and the Automation Node.
[Learn more :octicons-arrow-right-24:](../../channels/IVR-integration.md#managing-multiple-prompts-in-ivr-voice-channel)

### Kore Voice Gateway (v0.9.3-rc4)

#### Deepgram TTS Support

This update includes Deepgram TTS support to complement their existing ASR integration. Deepgram is now available as a TTS option when configuring [Start Flows](../../flows/create-flows.md#create-a-start-flow) and [Voice Preferences](../../channels/kore.ai-voice-gateway/configure-kore-voice-gateway.md#voice-preferences).

All Deepgram voices can be selected, and Deepgram TTS can be set using call control parameters. This enables the use of Deepgram TTS across the Kore.ai XO platform, with existing flows working successfully using Deepgram voices.

<hr>

## v11.9.0 January 05, 2025

<u>Minor Release</u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Agent Console

#### Enhanced Contact Recognition for Better Customer Service

This enhancement improves how saved contact information is displayed during customer interactions to help agents deliver more personalized service.

Key updates

* Automatic contact name display for inbound/outbound interactions.
* For the saved contact entries, phone numbers now show associated contact names instead of "Anonymous".
* Updates are visible in the chat history and interaction pane.

Key benefits

* Instant recognition of known contacts for personalized customer interactions.
* Reduced time spent identifying callers.
* Consistent contact display across all interaction points.

### Supervisor Console

#### Improved Supervisor Monitoring with Callback and Voicemail Filters

Supervisors can now improve their monitoring efficiency using specific filters for callback and voicemail interactions in the Monitor tab, with a new callback icon for better visibility. Filters can be combined with existing agent, queue, and status filters. [Learn more :octicons-arrow-right-24:](../../console/monitor-queues-agents-interactions-service-levels.md)

### Configuration

#### Configurable Repeat Notification Alerts for Improved Response Time

The enhanced notification system ensures agents never miss an incoming interaction.

Key updates

* Configurable notification intervals (5s, 10s, 30s, 1min).
* Unified sound alerts for transfers and incoming interactions.
* Visual loop notification icon in settings; disabled by default for all accounts.

Key benefits

* Fewer missed interactions.
* Customizable alerts based on team needs.
* Automatic alert management based on agent actions.
* Simplified notification system with combined transfer alerts.

Notification alerts automatically stop when an agent takes action - either accepting/rejecting the interaction, sending their first message, or when a supervisor reassigns the interaction, or it times out in the system. [Learn more :octicons-arrow-right-24:](../../console/manage-layout.md#enable-repeat-notifications)

#### Blended Mode for Voice and Digital Interactions

Blended Mode allows agents to handle both voice and digital interactions simultaneously.

Key updates

* Blended Agents toggle to enable/disable it at the organization level.
* System Busy activates only when all slots (voice and digital) are full. The existing channel-specific system busy logic applies when blended mode is disabled.

Key benefits

* Efficient handling of mixed interaction types.
* Better resource utilization.
* Clearer agent availability status.

[Learn more :octicons-arrow-right-24:](../../contactcenter/agent-and-supervisors/agent-management/agent-management.md#blended-agents)

#### Real-time LLM Streaming for Enhanced Voice Interactions

Contact Center supervisors can enable real-time streaming of LLM responses to significantly reduce latency to create more responsive and engaging voice interactions.

Key updates

* Real-time streaming of rephrased responses.
* Bot delay response behavior controls. [Learn more :octicons-arrow-right-24:](../../contactcenter/configurations/advanced-settings/llm-streaming.md)
* Role-based access controls (Full Access for Admins/Supervisors). [Learn more :octicons-arrow-right-24:](../../user-management/role-management.md#permissions)

### Campaigns

#### Decoupling Flows and Numbers for SMS Campaigns

This update decouples flows and numbers in Advanced SMS Campaigns to offer more flexible flow and number selection.

Key updates

* Independent flow and number selection.
* Access to all published start flows.
* Comprehensive caller ID options from available numbers.

Key benefits

* Greater campaign configuration flexibility.
* Simplified flow selection process.
* More efficient campaign setup.
* Better control over outbound messaging.

[Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/campaign-management/sms-campaigns.md#create-sms-campaigns)

#### Outbound SMS API Integration

This update introduces a new public API to send outbound SMS messages via the Generic SMS Channel, enabling seamless integration of SMS communication into applications and services. [Learn more :octicons-arrow-right-24:](../../apis/contact-center/send-outbound-sms.md)

### Analytics

#### External Transfer Status Tracking

This update adds detailed transfer status visibility across the Interaction Dashboard, Reports, and API.

Key updates

* Success/failure status tracking.
* Transfer mode and reason reporting.
* Consistent status display in the dashboard, reports, and API.
* Detailed failure reason reporting ("No Answer," "Busy," "Declined").

Key benefits

* Better transfer outcome monitoring.
* Improved transparency for external transfers.
* Standardized status tracking across platforms.
* Clear visibility into transfer failures.

#### Updated Queue Load Calculation for Blended Conversations

**DASHBOARD** > **Queues & Agents**

The modified queue load formula accurately reflects the blended conversation handling. It represents how agents manage multiple conversation types simultaneously across voice, chat, messaging, and email channels.

**Queue Load** = (Voice + Chat/3 + Messaging/8 + Email/10) x 100 / Available Agents

Where

Voice = Voice Count; Ongoing or waiting in queue (including Voicemails or Callbacks before turning Outbound).  
Chat = Chat Count; Live chat conversations ongoing or waiting in a queue.  
Messaging = MessagingCount; Messaging conversations ongoing or waiting in a queue.  
Email = Email Count; Email conversations ongoing or waiting in a queue.

### API

#### Call Termination Tracking Added to Call Details API (v2)

The Call Details API (v2) has been updated to include the `disconnectingEvent` parameter to provide clearer visibility into call termination reasons. [Learn more :octicons-arrow-right-24:](../../apis/contact-center/get-all-conversations-data-call-details.md)

### Kore Voice Gateway (v0.9.3-rc4)

#### Fetch Again Option for Failed Recordings

This update provides clear visibility of the call recording status for failed interactions, including predefined failure scenarios and reprocessing capabilities using a "Fetch Again" button. This allows agents and supervisors to take appropriate action when call recordings fail to be retrieved or processed. [Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#call-recording)

#### Enhanced SIP Trunk Options

To enhance the flexibility and compatibility of the SIP Trunk configuration, two new fields have been added to the 'SIP Trunk' configuration. These fields give more control over how DID numbers are handled and DTMF signals are transmitted.

Key updates

* E.164 Syntax Checkbox: Adds '+' prefix to DID numbers during origination attempts to comply with E.164 formatting standards.
* DTMF Types Dropdown: Choose from the following DTMF signaling methods for SIP Trunk - RFC 2833 (Default option) or Tones. [Learn more :octicons-arrow-right-24:](../../channels/kore.ai-voice-gateway/configure-kore-voice-gateway.md#sip-trunk-setup)

#### Microsoft Teams Integration for Inbound and Outbound Calls

In the SIP Trunk configuration page, the MS Teams option is added under the Network field to support SIP trunk directly to Microsoft Teams for both inbound and outbound calls. [Learn more :octicons-arrow-right-24:](../../channels/kore.ai-voice-gateway/configure-kore-voice-gateway.md#sip-trunk-setup)

<hr>

## v11.8.1 December 19, 2024

<u>Patch Release</u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Campaigns

#### Configure SIP Transfer Voice Numbers for SMS Campaigns

This update allows supervisors to set up Twilio voice numbers in the generic SMS channel, enabling a single number to be used for both voice and SMS flows.

Key Updates

* Twilio numbers purchased for voice can be configured in the generic SMS channel.
* The number can be attached to both a voice flow and an SMS flow.
* Voice flow is triggered when a customer calls the number.
* SMS flow is triggered when a customer texts the number.
* Currently, it only supports Twilio numbers in the generic SMS channel.

### Flows

#### Configuring Bot Delay – Transfer to External Agent

A new option is added to transfer calls to external agents if the bot fails to respond in time.

When enabled, the following options are available:

* BotNoInputTimeout: Timeout in seconds (default is 2 sec).
* BotNoInputSpeech/URL: Allows text or audio URL input (default is text).
* BotNoInputRetries: Number of retries (default is 2).
* BotNoInputGiveUpTimeout: Timeout in seconds (default if not provided).

Two options are available if the bot does not respond within Give Up Timeout:

* End the Call (default): Option to add a custom message.
* Transfer the Call: Option to add a custom message for external agent transfer.

<hr>

## v11.8.0 December 11, 2024

<u> Minor Release </u>

### Agent Console

#### Keypad for IVR Navigation During Conference Calls

Agents can now access a keypad during active conferences with DTMF (Dual-Tone Multi-Frequency) input in the conference call interface. The keypad allows agents to navigate through IVR menus and make IVR number calls without disrupting the main conference call. [Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#external-consult-and-conference-during-an-ongoing-interaction)

#### Depleting Timer Post Caller Disconnection

A depleting timer is introduced on the call disconnected screen, prompting agents to either **Call Back** or **End** the call within a specified timeframe.

This feature prevents agents from occupying slots indefinitely by enforcing timely action and enhancing productivity and slot availability.

Administrators can enable this functionality through Agent Settings. By default, the timer is disabled for existing users. [Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#timer-after-caller-disconnects-a-voice-call)

#### Enhanced Call Connection

Calls now connect within 3 seconds when agents click the **Accept** button on their console. The default message, **“Thank you for waiting…”**, will only play after an agent successfully connects to the call. [Learn more :octicons-arrow-right-24:](../../contactcenter/agent-and-supervisors/agent-management/agent-management.md#call-acceptance-behaviour)

### Configuration

#### Custom Email Domain Configuration

The enhanced email configuration options allow platform users to set up and manage Kore and custom domain email addresses. The options significantly expand email capabilities, allowing businesses to maintain brand consistency in their communications while leveraging the full features of Contact Center AI.

Key Updates

* Kore Domain Email Management:
    * Configure multiple Kore domain email addresses.
    * Easy addition of new addresses via the “Add Email Address” button.
    * Attach experience flows to specific email addresses. [Learn more :octicons-arrow-right-24:](../../channels/add-email-channel.md#attach-a-flow-to-a-kore-domain-email-address)
* Custom Domain Setup:
    * “Add Domain” button for custom email domain configuration.
    * Domain ownership verification through email login test.
    * Tabular display of custom domains with associated email addresses. [Learn more :octicons-arrow-right-24:](../../channels/add-email-channel.md#create-a-custom-domain)
* Improved User Interface: Clear organization of Kore and custom domain settings.

[Learn more :octicons-arrow-right-24:](../../channels/add-email-channel.md)

#### Email Address Blocklisting

This update introduces Email Address Blocklisting functionality for Contact Center AI administrators. By proactively managing potentially problematic email addresses, contact centers can maintain a clear communication channel, improve efficiency, and protect their email reputation.

<img src="../images/email-blocklist.png" alt="Email Address Blocklist" title="Email Address Blocklist" style="border: 1px solid gray; zoom:80%;">

Key Updates

* **Blocklist Management**: Administrators can specify blocklisted email addresses.
* **Verification Process**: The system checks incoming email addresses against the blocklist.
* **Automated Response**: Disables pre-configured automations for blocklisted addresses and prevents automated agent transfers for blocklisted interactions.
* **Normal Processing**: Non-blocklisted emails proceed through the usual automation and transfer processes.

[Learn more :octicons-arrow-right-24:](../../channels/add-email-channel.md#email-blocklist)

### Analytics

#### Enhanced Call Recording Download

On the **Dashboard** > **Interactions** tab, supervisors now have two options to download call recordings:

* Download as a single file,
* Download as separate files.

[Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#call-recording)

#### Enhanced Diagnostics for Voice Interactions

Diagnostics functionality is enhanced by adding the **Flow** and **Quality of Service (QoS)** tabs.

<img src="../images/flow-qos.png" alt="Flow and QoS" title="Flow and QoS" style="border: 1px solid gray; zoom:80%;">

The diagnostics reports can be exported in the following formats:

* Export PCAP
* Export TEXT

[Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#diagnostics)

#### Call Recording Status Messaging Enhancements

On the Dashboard > Interactions tab, a message, **“No audio is available for this interaction as call recording is disabled,”** will be displayed in the following scenarios:

* Transcript Tab: When call recording is disabled in Agent Settings, no audio is available.
* Transcript Tab: When call recording is disabled, and media generation is in progress.
* Interactions Page: When call recording is disabled and users attempt to download the recording from the Actions menu, the “Media generation is in progress” message will also appear. [Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#call-recording)

#### Copy All Identifiers

Supervisors can copy all details from the **Identifiers** tab by clicking Copy All.

The copied details include:

* Call Start and Call End timestamps.
* All other identifier information.

[Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#insights-to-logs)

#### Agent Activity Summary Report CSV Format: Added Count for Each Status

Each Status Duration field now includes a corresponding **“Status - Count”** field (for example, **“Busy:Busy-Count”**).  The field displays the number of times an agent was in each status, with a count of 0 if the agent was never in that status.

#### Agent Chat Metrics Report Merged with Agent Metrics Daily Report

The Agent Chat Metrics Report is deprecated, and its fields have been moved to the CSV version of the Agent Metrics Daily Report. The “Sessions” field is changed to “Answered” in the PDF version of the Agent Metrics Daily Report.

#### Conversation Lifecycle Tracking

The system now captures all significant events throughout the conversation lifecycle, providing visibility into key actions and transitions.

Each tracked detail includes the following:

* Precise Timestamp
* Event Type
* Involved Agents/Supervisors
* Detailed Event Description

[Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#export-conversation-data-transcripts-and-events)

### Kore Voice Gateway (v0.9.3-rc4)

#### Wait Time for IP Whitelisting While Configuring SIP Transfer

Users must wait for at least 10 minutes after saving their IPs to be whitelisted while configuring SIP Transfer. [Learn more :octicons-arrow-right-24:](../../channels/kore.ai-voice-gateway/configure-kore-voice-gateway.md#sip-numbers)

#### Session and Node Level Call Control Parameters

Developers can now apply Call Control Parameters at the **Session** or **Node** level, offering more flexibility in managing call behavior.

* **Session-Level Parameters**: Add the prefix “`session.`" to apply parameters throughout the session (for example, “`session.ttsprovider`”).
* **Node-Level Parameters**: Add the prefix “`node.`" to apply parameters only at a specific node (for example, “`node.ttsprovider`”).
* **Default Behavior**: Parameters without a prefix are considered session-level by default.
* Node-level parameters take precedence over session-level parameters. If no node-level parameters are defined, session-level properties will be applied. [Learn more :octicons-arrow-right-24:](../../channels/kore.ai-voice-gateway/call-control-parameters.md)

#### SIP REFER Handling and Transcript Enhancements

When an external system sends a SIP REFER to Contact Center AI:

* **Matching Numbers**: If the referred number matches a configured experience flow, Contact Center AI will trigger the corresponding flow.

* **Non-Matching Numbers**: Calls will be returned to the source (default behavior).

The Transcripts now show key conversation stages, including:

* User transferred to Agent (When the Automation transfers the voice call to Agent)
* User transferred to Automation (When the Agent transfers the voice call back to Automation)

[Learn more :octicons-arrow-right-24:](../../analytics/contact-center/interactions.md#insights-to-logs)

#### Mean Opinion Score (MOS) Display in Call Controls

The Mean Opinion Score (MOS), indicating signal connectivity strength, is now displayed as a bar chart within the call controls widget.

<img src="../images/mos-connection.png" alt="Mean Opinion Score" title="Mean Opinion Score" style="border: 1px solid gray; zoom:80%;">

Color Coding:

* 4-5 (Excellent): Green
* 3-4 (Moderate): Orange
* 2-3 (Poor): Orange
* 1-2 (Very Poor): Red

Hovering over the bars displays tooltips providing details on network connection status.

<hr>

## v11.7.1 November 18, 2024

<u> Patch Release </u>

This update includes bug fixes.

<hr>

## v11.7.0 November 03, 2024

<u> Patch Release </u>

This update includes enhancements and bug fixes. Key enhancements included in this release are summarized below.

### Agent Console

#### Preserve Agent’s Last Status

To improve agent experience and maintain consistent availability, the agent’s last manually set status is now preserved across sessions. A chosen status (Available, Away, or Busy) is automatically restored when the agent:

* Return from breaks,
* Complete outbound calls, or
* Switch from system-assigned states.

[Learn more :octicons-arrow-right-24:](../../contactcenter/agent-and-supervisors/agent-management/agent-management.md#system-away-and-system-busy-status).

#### Real-Time Disposition Updates

The enhanced disposition management allows agents to select dispositions during active conversations, improving categorization and data accuracy.

Key benefits:

* Agent Productivity and Data Accuracy: Agents can tag interactions as they happen, reducing the risk of oversight.
* Enhanced Filtering: Dispositions are integrated in real-time with dashboard filters, allowing users to track conversations with instant dashboard updates. [Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#dispositions)

#### Improved Visibility of Auto-Accepted Conversation

Tracking auto-accepted conversations is now more effective with real-time agent assignment visibility:

* See assigned agents immediately in the queue and agent tabs.
* Monitor conversations before the agent's first response.
* View synchronized assignment updates across all tabs.

Key benefits:

* Better workload monitoring.
* Improved resource allocation.
* Real-time conversation tracking.

### Campaigns

#### SMS Campaigns - Advanced Message Option

SMS Campaigns now support the Advanced Message format in addition to the Simple message format. With the Advanced message format, businesses can establish two-way communication with their end customers. Within the Advanced message format, you can associate an SMS Flow that can take the end customers through an automation journey, run dialog tasks, and connect to live agents if required. [Learn more :octicons-arrow-right-24:](../../contactcenter/campaigns/campaign-management/sms-campaigns.md#create-sms-campaigns)

### Kore Voice Gateway

#### External Agent Transcription Control using SIP INVITE

The new `agentUtils.setExternalAgentTranscribe` utility method helps manage transcription settings for external agents integrated via SIP INVITE. It allows transcription enablement or disablement during active calls on the Agent Assist platform.

Utility details:

* Function: `agentUtils.setExternalAgentTranscribe(param)`
* Supported in:
    * Experience Flow script nodes
    * Bot Builder Dialog Flows
    * Kore Voice Gateway integrations

Key usage:

* Enable/disable transcription during live calls.
* Adjust settings based on agent requirements.
* Configure language and provider preferences.
* Control transcription in temporary scenarios.

#### Handling Concurrent Outbound Calls

This update allows agents to make concurrent outbound calls to the same customer seamlessly while maintaining separate conversation contexts for each agent.

Each call remains independent with the following:

* Isolated conversation records.
* Separate call controls.
* Independent agent sessions.

#### Call Trace Enhancement

This update extends the display of SIP stack traces to all Kore Voice Gateway calls regardless of automation status or agent transfers. This improved visibility helps administrators monitor connections, diagnose issues, and troubleshoot more effectively.

#### Text-to-Speech Customization

New voice controls for PlayHT, Eleven Labs, and Deepgram enable users to customize parameters like speaking speed, pitch, and emotion to improve overall quality of speech output. Bot developers using AWS Polly, Microsoft Azure, and Google Cloud can use SSML tags for advanced customization.

### Analytics

#### Queue Tracking Improvement

Queue metrics now focus on live customer interactions, showing only active cases in the dashboards. Voicemails and callbacks are excluded from counts until an agent accepts them. Also, "Waiting" and "In Queue" queue labels are standardized across views to reflect this change for clearer monitoring.

#### Revised Average Speed to Answer Calculation

The Average Speed to Answer (ASA) calculation is refined to focus on initial customer wait times:

* Only counts first queue entry.
* Excludes voicemails, callbacks, and outbound calls.
* Measures time until first agent response.

By excluding repeat entries and non-standard conversation types, ASA now better represents the average answer speed, positively impacting service-level evaluations.

<hr>

## v11.6.1 October 21, 2024

<u> Patch Release </u>

This update includes enhancements and bug fixes. Key enhancements included in this release are summarized below.

### Kore Voice Gateway

#### Automatic IP Address Resolution for Fully Qualified Domain Names (FQDNs)

Kore Voice Gateway now automatically resolves IP addresses for specific Fully Qualified Domain Names (FQDNs), simplifying network configuration and secure domain access management.

Key benefits:

* Ease of use: Add FQDNs directly without manually entering multiple IP addresses for whitelisting.
* Efficiency: Reduces the need for ongoing manual updates as IP addresses change or expand for the associated domain.

#### Improved Welcome Event Handling

The “Reject calls with a delayed first response” setting allows admins to configure call handling for smoother user experiences. When enabled, the welcome event triggers only after the Conversation Server successfully sends the first message, eliminating dead air during call connections. This ensures more reliable call handling and improves customer interactions with the platform. [Learn more :octicons-arrow-right-24:](../../contactcenter/configurations/advanced-settings/reject-calls-with-delayed-first-response.md)

#### Nuance ASR and TTS No Longer Supported

Contact Center AI no longer supports Nuance Automatic Speech Recognition (ASR) and Text-to-Speech (TTS).

<hr>

## v11.6.0 September 28, 2024

<u> Minor Release </u>

This update includes enhancements and bug fixes. Key enhancements included in this release are summarized below.

### Agent Console

#### Enhanced Live Interaction Pane

This update improves clarity and efficiency by visually distinguishing different types of incoming conversations and system messages, allowing agents to identify the nature of the request quickly.

* New conversations, agent transfers, and supervisor transfers are differentiated on the conversation tray.
* System messages sent to the user are visually differentiated using a different color from those sent to an agent.

    [Learn more :octicons-arrow-right-24:](../../console/managing-incoming-interactions.md#manual-answer-mode)

#### Notification for Completed Agent Forms

Agents will receive an alert on the console whenever a customer submits an agent form. This enhancement improves agent responsiveness by providing real-time alerts, ensuring faster follow-up and more efficient customer service.

The notification includes the following key information:

* Customer’s Name
* Time of submission
* View Form link

[Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#agent-forms-for-handling-sensitive-information)

### Analytics

### Interactions Dashboard

#### Display Active Callback Requests on the Interactions Tab

The Interactions tab now displays active call-back requests and ongoing interactions, ensuring supervisors can track and monitor these requests in real time.

**Supervisor Actions**:

* **Assigning Call-Backs to Agents**: Supervisors can manually assign call-back requests to available agents, streamlining the process and reducing wait times.
* **Queue Management**: Supervisors can change the queue for a call-back request, optimizing resource allocation and prioritizing customer interactions. [Learn more :octicons-arrow-right-24:](../../console/monitor-queues-agents-interactions-service-levels.md#interactions)

<hr>

## v11.5.1 September 14, 2024

<u> Patch Release </u>

This update includes enhancements and bug fixes. Key enhancements included in this release are summarized below.

### Agent Console

#### Call Forwarding Source Selection

The Agent Console now offers Call Forwarding Source Selection, allowing agents to choose the call source when forwarding calls. This feature integrates call history into the dialer tab, improving compatibility with outgoing targets and streamlining the call management workflow.

[Learn more :octicons-arrow-right-24:](../../console/interacting-with-customers.md#external-consult-and-conference-during-an-ongoing-interaction)

<hr>

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

To ensure consistency, the instance bot also redacts data that the Automation bot redacts and vice versa. This applies to all channels. This change affects new transcripts created from this release onwards. [Learn more :octicons-arrow-right-24:](../../app-settings/advanced-settings/pii-data-masking.md)

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