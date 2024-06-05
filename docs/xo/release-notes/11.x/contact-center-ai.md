# Contact Center AI Updates

This document provides information on the feature updates and enhancements introduced in **Contact Center AI** of XO v11.x releases.

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

