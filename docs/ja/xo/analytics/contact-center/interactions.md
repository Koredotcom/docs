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

## Export Conversation Data/Transcripts

The conversation data/transcripts can be exported as a .csv file and downloaded to the local system from the dashboard.

Steps to export conversation data/transcripts:

1. Select the conversations and click **Export**.  
<img src="../images/export-button.png" alt="Export Button" title="Export Button" style="border: 1px solid gray; zoom:80%;">

2. Click **Export Conversation Data** or **Export Transcripts** as required.  
<img src="../images/export-options.png" alt="Export Options" title="Export Options" style="border: 1px solid gray; zoom:80%;">

    !!! Notes

        * If Export Conversation Data is selected, the metadata of all selected conversations is exported.
        * If Export Transcripts is selected, the exported transcript files retain the same naming convention currently used for all transcript exports. These files are compressed into a zip file named "transcripts-YYYY-MM-DD-HH24-mm-SS.zip.
        * Up to 25 conversations can be selected for exporting transcripts. If a selected conversation does not have a transcript or the system cannot retrieve one, a blank transcript is exported for that conversation.
3. A status message is displayed at the start of the export. On completion, the file is downloaded.

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

TRANSCRIPT – (formerly CHAT HISTORY)
DETAILS
USER
IDENTIFIERS

Icons beside the Insights to Logs header show the Direction (inbound or outbound), Language, and Channel.  
<img src="../images/insights-to-logs.png" alt="Insights to Logs" title="Insights to Log" style="border: 1px solid gray; zoom:80%;">

**TRANSCRIPT**: This tab shows the transcript of the voice conversation including whispers from the supervisor.  
<img src="../images/transcript-tab.png" alt="Transcript Tab" title="Transcript Tab" style="border: 1px solid gray; zoom:60%;">

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
<img src="../images/identifiers-tab.png" alt="Identifiers Tab" title="Identifiers Tab" style="border: 1px solid gray; zoom:60%;">

## Call Recording

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

* Download: Clicking the Download button downloads the audio (.MP3) file.  
<img src="../images/download.png" alt="Download" title="Download" style="border: 1px solid gray; zoom:80%;">

* Duration: The increment and the countdown counters appear when the audio plays. The total duration of the audio is displayed before the audio plays.  
<img src="../images/duration.png" alt="Duration" title="Duration" style="border: 1px solid gray; zoom:80%;">

!!! note

    If you enable the Pause/Resume Call Recording feature, the system does not record the duration of any paused voice interaction.