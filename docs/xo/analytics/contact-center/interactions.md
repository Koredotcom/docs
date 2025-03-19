# Interactions Dashboard

Interactions store the bot interactions. You can use the logs to review your bot’s performance and troubleshoot issues with conversations.

To view the Interactions dashboard, follow the steps:

1. Click the three dots on the left navigation pane and then click **Analytics**. The **Analytics** panel is displayed with the list of reports.
2. Click **Interactions** under the **Contact Center** section of the **Analytics** panel. The **Interactions** dashboard is displayed on the right side of the page.  
<img src="../images/navigation-interactions-report.png" alt="Navigation Interactions Report" title="Navigation Interactions Report" style="border: 1px solid gray; zoom:80%;">

3. On this page, the following details of the logs are displayed in a table:

  * CUSTOMER: The contact who initiated the conversation.
     * Direction (Icon): The direction of the conversation –  Inbound or Outbound.
    * LANGUAGE (Icon): The language of the conversation.
    * CHANNEL (Icon): The Channel of the conversation – Voice, Chat, or Email.
* ACTIONS: You can download recordings and transcripts, and copy the following Identifiers:
    * User ID
    * Session ID
    * Call Conversation ID
    * Agent Conversation ID  
    <img src="../images/agent-conversation-id.png" alt="Agent Conversation ID" title="Agent Conversation ID" style="border: 1px solid gray; zoom:80%;">

* SUPPORT: The agent who handled the conversation.
* START TIME: The date and time when the conversation was logged. This field can be rearranged to display newest to oldest or oldest to newest by clicking the arrow icon.
* DURATION: The duration of the inbound conversation.
* AGENTS: The profile pictures of the agents who handled the conversation are displayed in the order in which they participated. Hovering over the profile pictures shows the names of the agents.
* QUEUES: The last queue name is displayed with a +N for more queues. Hovering on the queues shows the order in which the conversation entered the queues.
* SKILLS: One skill is displayed with a +N for more skills. Hovering over the skills shows all skills associated with the conversation.
* STATUS: The statuses of the conversation are displayed:
    * In Progress: In Progress refers to an ongoing conversation. The interactions tab immediately displays a conversation that is in progress.
    * Error: Error is a disruption to an ongoing conversation, resulting in an error message. Failure of integrated systems results in errors.
    * Completed (Drop Off): Completed (Drop Off) refers to a voice call where there was no response from the user, and the conversation ends.
    * Completed (User Hangup): Completed (User Hangup) refers to a voice call where the user ends the conversation.
    * Completed (Bot Hangup): Completed (Bot Hangup) refers to a voice call where the task is completed, and the bot ends the conversation.
    * Completed: Completed refers to a chat conversation where the task is completed, and the conversation ends.

### Supervisor Actions

Supervisors can view ongoing interactions on the Interactions tab. They can intervene as a supervisor, similar to the Monitor tab, and join, reassign, or change the queue of any interaction visible on the Interactions tab.

Steps to perform supervisor actions:

1. Click **Interactions** under the **Contact Center** section of the **Analytics** panel. The **Interactions** dashboard is displayed on the right side of the page.

2. Click ( **⋮** ) under ACTIONS and then click **Supervisor View**.  
<img src="../images/supervisor-actions.png" alt="Supervisor Actions" title="Supervisor Actions" style="border: 1px solid gray; zoom:80%;">

3. You will be redirected to the interactions section on the MONITOR tab.  
  <img src="../images/supervisor-actions-1.png" alt="Supervisor Actions 1" title="Supervisor Actions 1" style="border: 1px solid gray; zoom:80%;">

4. Click the ongoing conversation. You can perform the following actions in the conversation:
    1. Join Conversation
    2. Assign
    3. Change Queue  
    <img src="../images/supervisor-actions-2.png" alt="Supervisor Actions 2" title="Supervisor Actions 2" style="border: 1px solid gray; zoom:80%;">

## Search Interactions

You can find the search field on the top right side of the Interactions tab.  
<img src="../images/search-interactions.png" alt="Search Interactions" title="Search Interactions" style="border: 1px solid gray; zoom:80%;">

The search feature on Interactions allows supervisors to do the following:

* Search for keywords in both chats and call transcripts.
* Search the Agent and Disposition notes.
* Exclude Agent AI Logs when searching the Transcripts.
* Search on Partial and Full Matches of Words and Phrases: The search function works for partial and complete matches of individual words and phrases.
    * Complete matches receive the highest rank in the search results.
    * Results that match all single words of a phrase receive the next priority.
    * Results that receive the last priority are those where only a few words of a phrase match.
* Ignore common words like Articles, Pronouns, and Prepositions while matching.

How it works:

1. Enter a word or phrase in the search field and click the **Search** icon.

2. The count of search results is displayed.  
<img src="../images/search-interactions-1.png" alt="Search Interactions 1" title="Search Interactions 1" style="border: 1px solid gray; zoom:80%;">

3. When you click a conversation, the Insights to Logs window is displayed. Enter the word or phrase in the search field to prompt the system to search for it in the conversation.  
<img src="../images/search-interactions-2.png" alt="Search Interactions 2" title="Search Interactions 2" style="border: 1px solid gray; zoom:80%;">

4. The system displays the count of the occurrences of the word or phrase along with the highlighted results.  
<img src="../images/search-interactions-3.png" alt="Search Interactions 3" title="Search Interactions 3" style="border: 1px solid gray; zoom:80%;">

## Export Conversation Data, Transcripts, and Events

The conversation data, transcripts, and events can be exported as a .csv file and downloaded to the local system from the dashboard.

Steps to export conversation data/transcripts:

1. Select the conversations and click **Export**.  
    <img src="../images/export-button.png" alt="Export Button" title="Export Button" style="border: 1px solid gray; zoom:80%;">

2. Click **Export Conversation Data**, **Export Transcripts**, or **Export Events** as required.  
    <img src="../images/export-fields.png" alt="Export Options" title="Export Options" style="border: 1px solid gray; zoom:80%;">  

    or

    Click **Download Recording** or **Download Transcript**.  
    <img src="../images/download-options.png" alt="Download Options" title="Download Options" style="border: 1px solid gray; zoom:80%;"> 

    !!! Notes

        * If Export Conversation Data is selected, the metadata of all selected conversations is exported.
        * If Export Transcripts is selected, the exported transcript files retain the same naming convention currently used for all transcript exports. These files are compressed into a zip file named "transcripts-YYYY-MM-DD-HH24-mm-SS.zip.
        * Up to 25 conversations can be selected for exporting transcripts. If a selected conversation does not have a transcript or the system cannot retrieve one, a blank transcript is exported for that conversation.
3. A status message is displayed at the start of the export. On completion, the file is downloaded.

Steps to Preview and Download Events:

1. Select the conversations, click **Export**, or click the Ellipsis (**⋮**) icon under Actions.  
    <img src="../images/ellipsis-button-event.png" alt="Ellipsis Button" title="Ellipsis Button" style="border: 1px solid gray; zoom:80%;">

2. Click **Preview Events**.  
    <img src="../images/preview-events.png" alt="Preview Events" title="Preview Events" style="border: 1px solid gray; zoom:80%;">

3. The preview is generated. Click **Download Events**.

    !!! Notes

        * The Download Events option will be unavailable for conversations over 30 days old.
        * Events are recorded periodically, so the exported document may not always reflect the entire event history. For a comprehensive record, it is recommended to download the events once the conversation has ended.

    <img src="../images/preview-events-page.png" alt="Preview Events Page" title="Preview Events Page" style="border: 1px solid gray; zoom:80%;">

4. A confirmation is displayed when the event is exported.  
    <img src="../images/export-completed.png" alt="Export Completed" title="Export Completed" style="border: 1px solid gray; zoom:80%;">  

    The following events and their timestamps are exported for chat and voice conversations.  
        1. Routing Initiation  
        2. Conversation Acceptance  
        3. Conversation Rejection  
        4. Conversation Transfer  
        5. Transfer Failures  
        6. Agent join  
        7. Agent left  
        8. Agent Consultation  
        9. Skill Change  
        10. Disposition Updates  
        11. After-Call Work (ACW)  
        12. Conversation Closure  

## Filters

To avoid repeatedly filtering your choices, you can create and save multiple filters on the Interactions tab.

### Create Filter

1. Click the **Filter** button.  
<img src="../images/create-filters-1.png" alt="Create Filters 1" title="Create Filters 1" style="border: 1px solid gray; zoom:80%;">

2. Click **New Filter**.  
<img src="../images/create-filters-2.png" alt="Create Filters 2" title="Create Filters 2" style="border: 1px solid gray; zoom:80%;">

3. Select the IDs, Queues, Channels, Agents, Status, CSAT, and Custom Tags.  
<img src="../images/create-filters-3.png" alt="Create Filters 3" title="Create Filters 1" style="border: 1px solid gray; zoom:80%;">

    Select from the below available options:
    1. Clear – Clears the selection.
    2. Save & Apply – Saves the filter, and it appears when selected.
    3. Apply – Applied for one instance and not saved.

4. Click **Save & Apply**.
5. On the pop-up window, enter a name for the filter and click **Save & Apply**.  
<img src="../images/create-filters-4.png" alt="Create Filters 4" title="Create Filters 4" style="border: 1px solid gray; zoom:80%;">

A confirmation message is displayed, and the filter is created.

#### Filter for Custom Tags [Beta]

You can filter conversations using custom tags.

Steps to enable the filter:

1. Click the Filter for Custom Tags (BETA) check box to enable the filters.
The following Custom Tag fields are displayed:
    1. Tag name
    2. Predicate drop-down (CONTAINS and DOES NOT CONTAIN)
    3. AND button to create a new clause
    <img src="../images/create-filters-1.png" alt="Create Filters 1" title="Create Filters 1" style="border: 1px solid gray; zoom:80%;">

2. Select the values for the custom tag fields and click **AND** to create a new clause.

3. Select the values for the second clause and click Apply.  
<img src="../images/create-filters-2.png" alt="Create Filters 2" title="Create Filters 2" style="border: 1px solid gray; zoom:80%;">

A confirmation is displayed.

Clicking the (-) button deletes a clause.

<img src="../images/create-filters-3.png" alt="Create Filters 3" title="Create Filters 3" style="border: 1px solid gray; zoom:80%;">

!!! note

    You can add up to 5 clauses.

The interactions that fulfill the criteria selected in the clauses are displayed.

### Edit Filter

Steps to edit a filter:

1. Click the **Filters** tab. The Saved Filter name appears.  
<img src="../images/edit-filters-1.png" alt="Edit Filters 1" title="Edit Filters 1" style="border: 1px solid gray; zoom:80%;">

2. Click the **Edit** button.  
<img src="../images/edit-filters-2.png" alt="Edit Filters 2" title="Edit Filters 2" style="border: 1px solid gray; zoom:80%;">

3. Make the necessary changes and click **Save & Apply**.

A confirmation message is displayed, and the filter is updated.

### Copy Filter

1. Click the **Duplicate** button.  
<img src="../images/copy-filters-1.png" alt="Copy Filters 1" title="Copy Filters 1" style="border: 1px solid gray; zoom:80%;">

2. On the **Rename Filter** window, enter a name for the filter and click **Save**.  
<img src="../images/copy-filters-2.png" alt="Copy Filters 2" title="Copy Filters 2" style="border: 1px solid gray; zoom:80%;">

A confirmation is displayed and a copy of the filter is created.

### Mark as Default

1. Click the **Mark as Default** button.  
<img src="../images/mark-as-default-1.png" alt="Mark as Default 1" title="Mark as Default 1" style="border: 1px solid gray; zoom:80%;">

2. A confirmation message is displayed and the filter is marked as default.  
<img src="../images/mark-as-default-2.png" alt="Mark as Default 2" title="Mark as Default 2" style="border: 1px solid gray; zoom:80%;">

### Delete Filter

1. Click the **Delete** button.  
<img src="../images/delete-filter.png" alt="Delete Filter" title="Delete Filter" style="border: 1px solid gray; zoom:80%;">


2. A Delete Filter message appears. Click **Delete**.

A confirmation message is displayed and the filter is deleted.

## Insights to Logs

The Insights to Logs panel provides details of the conversation between the contact and the agent.

Click the interaction to view the Insights to Logs panel. The following tabs are displayed:

1. TRANSCRIPT – (formerly CHAT HISTORY)  
2. DETAILS  
3. USER  
4. IDENTIFIERS

Icons beside the Insights to Logs header show the Direction (inbound or outbound), Language, and Channel.  
<img src="../images/insights-to-logs.png" alt="Insights to Logs" title="Insights to Log" style="border: 1px solid gray; zoom:80%;">

**TRANSCRIPT**: This tab shows the transcript of the voice conversation including whispers from the supervisor.  
<img src="../images/transcript-tab.png" alt="Transcript Tab" title="Transcript Tab" style="border: 1px solid gray; zoom:60%;">  

The transcripts tab also shows the call transfer stages:

* **User transferred to Agent** - When the Automation transfers the voice call to Agent.
* **User transferred to Automation** - When the Agent transfers the voice call back to Automation.  
<img src="../images/transfer-stages.png" alt="Transfer Stages" title="Transfer Stages" style="border: 1px solid gray; zoom:80%;">

!!! Note

    * When customers are placed on hold (either themselves or by an agent), the system will not display transcripts of any customer speech during the hold period. 

    * To redact Personally Identifiable Information (PII) in the transcript, select the option 'De-identify PII data while presenting it to the user' from the entity node. [Learn more](../../automation/use-cases/dialogs/node-types/working-with-the-entity-node.md#component-properties)

**DETAILS**: This tab shows the following details:

**Start**: Conversation start time  
**End**: Conversation end time  
**Agents**: Name of the agent  
**Consulting agents**: Name of the consulting agent  
**Joined Users**: Names of users who joined this conversation  
**Queues**: The queues where the call was handled  
**Skills**: The assigned skills  
**Status**: Conversation status  
**Mode**: Mode of the conversation  
**CSAT**: CSAT survey score  
**Disposition**: Dispositions assigned  
**Notes**: Notes added to the conversation (view only)  
**Snooze Count**: Number of times the conversation was snoozed  
**Snooze Duration**: Duration for which the conversation was snoozed  
**Session-level tags**: Session-level tags assigned to the conversation.    
<img src="../images/details-tab-insights-to-logs.png" alt="Details Tab" title="Details Tab" style="border: 1px solid gray; zoom:60%;">

**USER**: This tab shows the following details:

**Customer Phone**: Customer’s phone number.  
**Customer Name**: Customer’s name.  
**Customer Email**: Customer’s email address.  
**Channel User ID**: The user ID of the conversation channel.  
**User ID**: Agent’s user ID.  
**User-level tags**: User-level tags assigned to the conversation.  
<img src="../images/user-tab.png" alt="User Tab" title="User Tab" style="border: 1px solid gray; zoom:60%;">

**IDENTIFIERS**: This tab shows the following details:

**Call ID**: The call ID (for voice calls)  
**Session ID**: The session ID.  
**Channel User ID**: The user ID of the conversation channel.  
**Call Conversation ID**: The conversation ID (for voice calls)  
**Agent Conversation ID**: The agent conversation ID.  
**User ID**: The agent’s user ID.  
**Campaign Instance ID**: The campaign instance ID (for campaigns).

Click the **Copy All** button to copy all the identifier details (from the details tab) like:

* Start Time
* End time
* Caller ID
* Session ID
* Channel User ID
* Call Conversation ID
* Agent Conversation ID
* User ID
* Caller
* Callee

### Call Recording

The call recording feature available under CHAT HISTORY can play past conversations between a contact and an agent and is recorded by the system. It is helpful for conversational quality analysis and auditing purposes.  The recorded audio stream is available under CHAT HISTORY in the Insights to Logs panel.

The following recording settings can be configured:

* Play Audio: Click the Play icon to play the waveform of the audio.
    <img src="../images/play-audio.png" alt="Play Audio" title="Play Audio" style="border: 1px solid gray; zoom:80%;">

* Increase playback speed: To change the playback speed, click the speed selection drop-down, and select the speed. The values ranging from the lowest to highest speeds are as follows:  
    <img src="../images/increase-playback-speed.png" alt="Increase Playback Speed" title="Increase Playback Speed" style="border: 1px solid gray; zoom:80%;">

* Volume: The volume slider can be adjusted to increase or decrease the volume.  
    <img src="../images/volume-slider.png" alt="Volume Slider" title="Volume Slider" style="border: 1px solid gray; zoom:80%;">

* Mute: Click the Mute button to mute the audio.  
    <img src="../images/mute-button.png" alt="Mute Button" title="Mute Button" style="border: 1px solid gray; zoom:80%;">

* Rewind Audio: To rewind the audio by 10 seconds, click the Backward button.
* Forward Audio: To fast forward the audio by 10 seconds, click the Forward button.  
    <img src="../images/forward-audio.png" alt="Forward Audio" title="Forward Audio" style="border: 1px solid gray; zoom:80%;">

* Download: Click the Download button to download the transcript.  
    <img src="../images/download.png" alt="Download" title="Download" style="border: 1px solid gray; zoom:80%;">  

    You can choose either as a single file or separate files.

    * **Download as a single file**: If you choose this option, all the files in the conversation will be downloaded as a single file.  

        <img src="../images/download-as-single-file.png" alt="Download as single file" title="Download as single file" style="border: 1px solid gray; zoom:80%;">  

    * **Download as separate files**: If you choose this option, you can select the files and download them.  

        <img src="../images/download-as-separate-files.png" alt="Download as separate files" title="Download as separate files" style="border: 1px solid gray; zoom:80%;">

* Duration: The increment and the countdown counters appear when the audio plays. The total duration of the audio is displayed before the audio plays.  
    <img src="../images/duration.png" alt="Duration" title="Duration" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        * The system does not record or display customer speech during hold periods, regardless of who initiated the hold.  
    
        * If you enable the Pause/Resume Call Recording feature, the system does not record the duration of any paused voice interaction.

A message is displayed to the user on the Transcript tab when Call Recording Control is disabled in [Agent Settings](../../contactcenter/agent-and-supervisors/agent-management/agent-management.md#call-recording-control).  
<img src="../images/recording-disabled.png" alt="No Recording Available" title="No Recording Available" style="border: 1px solid gray; zoom:80%;">  

List of recording status and messages:

<table>
  <tr>
   <td><strong>Status</strong>
   </td>
   <td><strong>Message</strong>
   </td>
  </tr>
  <tr>
   <td>failed
   </td>
   <td>Media generation failed due to some technical issue. Please contact your administrator
   </td>
  </tr>
  <tr>
   <td>media_unavailable
   </td>
   <td>No audio recording found in the server. Please contact your administrator
   </td>
  </tr>
  <tr>
   <td>call_in_progress
   </td>
   <td>Media unavailable while call is in progress. Please recheck once the call has ended.
   </td>
  </tr>
  <tr>
   <td>media_in_progress
   </td>
   <td>Media generation is in progress. Please wait for a few minutes.
   </td>
  </tr>
  <tr>
   <td>partial_download_failed
   </td>
   <td>Unable to fetch the recording. Please click the button below to retry.
<strong>Note</strong>: A “Fetch Again” button appears. Users can click this button three times. If it still fails, ‘Media generation failed due to some technical issue. Please contact your administrator’ message appears.
   </td>
  </tr>
  <tr>
   <td>partial_upload_failed
   </td>
   <td>Unable to fetch the recording. Please click the button below to retry.
<p>
<strong>Note</strong>: A “Fetch Again” button appears. Users can click this button three times. If it still fails, ‘Media generation failed due to some technical issue.
   </td>
  </tr>
  <tr>
   <td>partial_failed
   </td>
   <td>Unable to fetch the recording. Please click the button below to retry.
<p>
<strong>Note</strong>: A “Fetch Again” button appears. Users can click this button three times. If it still fails, ‘Media generation failed due to some technical issue.
   </td>
  </tr>
</table>

## Diagnostics

Diagnostics is located at the top right corner of the Insights to Logs.

!!! Note

    This option is available only for voice interactions.

<img src="../images/diagnostics.png" alt="Diagnostics" title="Diagnostics" style="border: 1px solid gray; zoom:80%;">  

Clicking Diagnostics shows the following tabs:

### Flow

The Flow tab provides a detailed timeline of call signaling and media flow between endpoints. This interface displays the sequence of SIP messages and RTCP packets exchanged during a call, allowing Agents and Supervisors to track the complete communication flow and troubleshoot connection issues.  
<img src="../images/flow-tab.png" alt="Flow Tab" title="Flow Tab" style="border: 1px solid gray; zoom:70%;">  

The top row displays the IP addresses of all endpoints involved in the communication.

Example:

* 50.19.12.248
* 172.31.11.64
* 172.31.11.62
* 172.31.11.64

**SIP Message Flow**

The interface shows SIP signaling messages exchanged between endpoints:

1. **INVITE**
    * Direction: 50.19.12.248 to 172.31.11.64
    * Port: 5060 → 5060
    * Details: INVITE sip: +12513254563@domain...
    * Timestamp: [1][UU09]2024-04-15 15:29:37.679 +05:30 +0.000s
2. **100 (Trying)**
    * Direction: 172.31.11.64 to 50.19.12.248
    * Port: 5060 ← 5060
    * Details: INVITE sip: +12513254563@domain...
    * Timestamp: [1][UU09]2024-04-15 15:29:37.679 +05:30 +0.000s
3. **200 (OK)**
    * Direction: 172.31.11.64 to 50.19.12.248
    * Port: 5060 ← 5060
    * Details: INVITE sip: +12513254563@domain...
    * Timestamp: [1][UU09]2024-04-15 15:29:37.679 +05:30 +0.000s
4. **ACK**
    * Direction: 50.19.12.248 to 172.31.11.64
    * Port: 5060 → 5060
    * Details: INVITE sip: +12513254563@domain...
    * Timestamp: [1][UU09]2024-04-15 15:29:37.679 +05:30 +0.000s

The interface also shows RTCP media packets exchanged between endpoints:

1. **RTCP (First packet)**
    * Direction: 172.31.11.62 to 172.31.11.64
    * Port: 5060 → 5060
    * Details: INVITE sip: +12513254563@domain...
    * Timestamp: [1][UU09]2024-04-15 15:29:37.679 +05:30 +0.000s
2. **RTCP (Second packet)**
    * Direction: 172.31.11.62 to 172.31.11.64
    * Port: 5060 → 5060
    * Details: INVITE sip: +12513254563@domain...
    * Timestamp: [1][UU09]2024-04-15 15:29:37.679 +05:30 +0.000s

**How to Use**

1. **Track Call Setup**: Follow the initial INVITE, 100 Trying, 200 OK, and ACK sequence to verify proper call establishment.
2. **Analyze Response Times**: Note the timestamps to identify any delays in message processing.
3. **Monitor Media Flow**: Review RTCP packets to ensure media is flowing properly between endpoints.
4. **Identify Issues**: Look for missing messages or unexpected responses that might indicate connection problems.
5. **Export Data**: Use the export options to save the communication flow for further analysis.

### QoS (Quality of Service) 
The QoS tab provides detailed network metrics for call monitoring and troubleshooting. It offers comprehensive data visualization of network performance indicators to help Agents and Supervisors analyze call quality.  
<img src="../images/qos-tab.png" alt="QoS Tab" title="QoS Tab" style="border: 1px solid gray; zoom:70%;">  

**Packets**

<table>
  <tr>
   <td><strong>Metric</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Min. Packets
   </td>
   <td>Minimum number of packets transmitted (320)
   </td>
  </tr>
  <tr>
   <td>Avg. Packets
   </td>
   <td>Average number of packets transmitted (249.25)
   </td>
  </tr>
  <tr>
   <td>Max. Packets
   </td>
   <td>Maximum number of packets transmitted (602)
   </td>
  </tr>
</table>

**Octets**

<table>
  <tr>
   <td><strong>Metric</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Min. Octets
   </td>
   <td>Minimum number of octets/bytes transmitted (238047)
   </td>
  </tr>
  <tr>
   <td>Avg. Octets
   </td>
   <td>Average number of octets/bytes transmitted (238047)
   </td>
  </tr>
  <tr>
   <td>Max. Octets
   </td>
   <td>Maximum number of octets/bytes transmitted (802234)
   </td>
  </tr>
</table>

**Highest_Seq_No**

<table>
  <tr>
   <td><strong>Metric</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Min. Highest_Seq_No
   </td>
   <td>Minimum sequence number (2)
   </td>
  </tr>
  <tr>
   <td>Avg. Highest_Seq_No
   </td>
   <td>Average sequence number (249625)
   </td>
  </tr>
  <tr>
   <td>Max. Highest_Seq_No
   </td>
   <td>Maximum sequence number (435756)
   </td>
  </tr>
</table>

**IA (Inter Arrival) Jitter**

<table>
  <tr>
   <td><strong>Metric</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Min. IA Jitter
   </td>
   <td>Minimum inter-arrival jitter (0)
   </td>
  </tr>
  <tr>
   <td>Avg. IA Jitter
   </td>
   <td>Average inter-arrival jitter (0)
   </td>
  </tr>
  <tr>
   <td>Max. IA Jitter
   </td>
   <td>Maximum inter-arrival jitter (4)
   </td>
  </tr>
</table>

**LSR (Last Sender Report)**

<table>
  <tr>
   <td><strong>Metric</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Min. LSR
   </td>
   <td>Minimum last sender report (0)
   </td>
  </tr>
  <tr>
   <td>Avg. LSR
   </td>
   <td>Average last sender report (3445503.34)
   </td>
  </tr>
  <tr>
   <td>Max. LSR
   </td>
   <td>Maximum last sender report (3445503.34)
   </td>
  </tr>
</table>

**MOS (Mean Opinion Score)**

<table>
  <tr>
   <td><strong>Metric</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Min. MOS
   </td>
   <td>Minimum Mean Opinion Score (4.34)
   </td>
  </tr>
  <tr>
   <td>Avg. MOS
   </td>
   <td>Average Mean Opinion Score (2.32)
   </td>
  </tr>
  <tr>
   <td>Max. MOS
   </td>
   <td>Maximum Mean Opinion Score (5.74)
   </td>
  </tr>
</table>

**Packets_Lost**

<table>
  <tr>
   <td><strong>Metric</strong>
   </td>
   <td><strong>Description</strong>
   </td>
  </tr>
  <tr>
   <td>Min. Packets_Lost
   </td>
   <td>Minimum number of lost packets (0)
   </td>
  </tr>
  <tr>
   <td>Avg. Packets_Lost
   </td>
   <td>Average number of lost packets (0)
   </td>
  </tr>
  <tr>
   <td>Max. Packets_Lost
   </td>
   <td>Maximum number of lost packets (1)
   </td>
  </tr>
</table>

The interface displays IP connection information in expandable rows, showing source and destination IP addresses (for example, 172.31.11.62 → 172.31.11.62).

The bottom bar chart visualizes call metrics over time. The x-axis shows timestamps (2024-04-15), and the y-axis represents metric values from 0 to 100.

### Agents

The Agents tab provides comprehensive call information for agents and supervisors, displaying detailed metrics for all participants on a call. This enables a better understanding of interactions and assists with troubleshooting issues. The following data points are shown on this tab:  
<img src="../images/agents-tab.png" alt="Agents Tab" title="Agents Tab" style="border: 1px solid gray; zoom:70%;">  

<table>
  <tr>
   <td>Field Name
   </td>
   <td>Description
   </td>
  </tr>
  <tr>
   <td>Participant Name
   </td>
   <td>Name identifier of the person involved in the call. External Agents are marked with an "External Agent" tag.
   </td>
  </tr>
  <tr>
   <td>Call Status
   </td>
   <td>Indicates whether the participant is currently "In-Call" or has "Left" the call.
   </td>
  </tr>
  <tr>
   <td>Start Timestamp
   </td>
   <td>Date and time when the participant joined the call.
   </td>
  </tr>
  <tr>
   <td>End Timestamp
   </td>
   <td>Date and time when the participant left the call. Displays "NA" for participants currently in the call.
   </td>
  </tr>
  <tr>
   <td>Average MOS (Mean Operating Score)
   </td>
   <td>MOScore average value represents the participant's overall call quality.
   </td>
  </tr>
  <tr>
   <td>Call Exit Reason
   </td>
   <td>Categorized reason why the participant left the call (for example, "Disconnected", "Transfer", "Call Ended").
   </td>
  </tr>
  <tr>
   <td>Call Exit Description
   </td>
   <td>Detailed explanation providing additional context about why the participant exited the call.
   </td>
  </tr>
  <tr>
   <td>MOS (min, max, average)
   </td>
   <td>Minimum, maximum, and average MOScore values measuring voice quality during the call.
   </td>
  </tr>
  <tr>
   <td>Jitter (min, max, average)
   </td>
   <td>The minimum, maximum, and average jitter measurements indicate variations in packet delivery timing.
   </td>
  </tr>
  <tr>
   <td>Packets Lost (min, max, average)
   </td>
   <td>The minimum, maximum, and average count of data packets that failed to reach their destination.
   </td>
  </tr>
</table>

### Export

You can export the following reports:

* Export PCAP
* Export TEXT.  
    <img src="../images/export.png" alt="Export Reports" title="Export Reports" style="border: 1px solid gray; zoom:80%;"> 