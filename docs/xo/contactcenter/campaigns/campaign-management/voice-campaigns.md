# Campaign Management

Outbound campaigns are reshaping how businesses connect with their audience. These campaigns proactively reach out to a curated list of individuals, following predefined rules. At the core of this process, calls are orchestrated based on the information available in a contact list. Outbound campaigns infuse a personalized touch by crafting scripts that shape the agent's interaction.

You can access Campaigns by going to **Contact Center AI** > **Campaigns** > **Proactive Outreach** > **Campaign Management**.
<img src="../images/campaigns-page-main.png" alt="Campaigns Main Page" title="Campaigns Main Page" style="border: 1px solid gray; zoom:100%;">

## Voice Campaigns

The following details of the voice campaigns are shown in a table:
<img src="../images/campaigns-top-panel.png" alt="Campaigns Table Top Panel" title="Campaigns Table Top Panel" style="border: 1px solid gray; zoom:100%;">

* **Campaign** - Campaign name and Type.
* **Actions** - Play/Pause/Replay, Stop, Edit, Clone campaign.
* **Priority** - Priority of the campaign from 1 to 5 (1 being the lowest). The default priority is 5.
* **Status** - Status of the campaign.
    * **Ready**: When a manual campaign is saved and ready to run.
    * **Active**: The campaign is started and running.
    * **Paused**: The campaign is paused.
    * **Rerun**: Rerun the campaign.
    * **Completed**: The campaign has exhausted calling all numbers or the campaign has reached its scheduled end date.
* **Progress** - Progress of the campaign. The count refreshes every 5 seconds.
* **Contact List** - The call list that will be dialed.
* **Connection** - The following details are displayed based on the dialer type:
    * **Agentless dialer**- The Flow name selected while creating or editing a campaign is shown. For example, Default Conversational Input voice Flow.

    !!! Note

        The Campaigns module is only available on accounts configured with Kore Gateway. If an account is configured with AudioCodes or the mapped gateway is switched from AudioCodes to Kore Gateway, then the Campaigns module is unavailable.

#### Agentless Dialer

Agentless Dialer maintains a queue of leads to be dialed and can automatically dial a new phone number. The dialer initiates an outbound call to the selected phone number and when a call is answered, the dialer connects the call to the configured voice experience flow. The dialer can detect answering machines or voicemail and reschedule the call by sending the call status to the campaign manager. If a call goes unanswered or reaches a voicemail with Answering Machine Detection (AMD) turned on, the dialer disconnects the call and automatically dials the following number on the list.

Metrics and call statistics, such as the number of calls made, call duration, and call outcomes are generated for monitoring and reporting purposes.

Campaign managers can customize the dialing pace, allowing them to set the number of simultaneous calls dialed at any time.

To create a campaign when Agentless Dialing Mode is selected:

* Select the **Start Flow** associated with the campaign. [Learn more](../../../flows/create-flows.md#the-start-flows).
<img src="../images/start-flow.png" alt="Start Flow" title="Start Flow" style="border: 1px solid gray; zoom:100%;">

    !!! Note

        * You can turn on Answering Machine Detection toggle if you want the system to determine whether the outbound call was received by an answering machine.

        * Using the agentless dialer, you can configure the [Automation Node](../../../flows/node-types/automation.md) making this dialer a differentiator from our competitors. 

### Progressive Dialer

A progressive dialer is an outbound calling system that enhances the efficiency and productivity of agents. The dialer automatically calls the next number in a pre-defined queue immediately after agents complete their current calls. It ensures that one call is made for each available agent. For example, if 10 agents are free, it will initiate 10 calls simultaneously.

A progressive dialer connects the agent to the call only if a human answers, filtering out voicemails and busy lines. This gives agents time to review contextual information about the person they are about to contact, although they cannot control who they will speak to or the time they have for review.

The dialer efficiently manages lead allocation based on agent availability. It tracks agents’ statuses, ensuring the most idle agent receives the next call. It provides metrics and call statistics, such as the number of calls made, call duration, and call outcomes essential for monitoring and reporting.

To create a campaign when Progressive Dialing Mode is selected:

* Select the **Queue** to which the calls will be routed. [Learn more](../../routing/queues/queue-management.md)  
<img src="../images/select-queue.png" alt="Select Queue" title="Select Queue" style="border: 1px solid gray; zoom:100%;">

    !!! Note

        You can turn on Answering Machine Detection toggle if you want the system to determine whether the outbound call was received by an answering machine.

Progressive Dialer Call Handling

Once the dialer selects a contact from the list, it dials the number and upon successful connection with the contact, the interaction is assigned to an agent. The CUSTOMER INFO widget displays the customer's information. the interaction appears on the [Conversation Tray](../../../console/conversation-tray.md) along with the campaign name.  
<img src="../images/dialing.png" alt="Dialing" title="Dialing" style="border: 1px solid gray; zoom:60%;">

During the call the agent can Mute, place the call on Hold, Transfer, or end the interaction.  
<img src="../images/call-connected.png" alt="Call Connected" title="Call Connected" style="border: 1px solid gray; zoom:60%;">

Dispositions are displayed to the agent when the call ends.  
<img src="../images/dispositions.png" alt="Dispositions" title="Dispositions" style="border: 1px solid gray; zoom:60%;">

!!! Note

    Below is the dialing logic when the same agents are assigned multiple campaigns.

        * If the campaigns have different priorities, the dialer first dials contacts in campaigns with higher priority and then campaigns with lower priority.

        * If the campaigns have the same priority then it randomly selects contacts from the campaigns and assigns them to agents.

        * Say there are two campaigns with Priority 5 and one campaign with Priority 4, the dialer will first randomly dial contacts from the two Priority 5 campaigns and after completing all contacts from these two campaigns it will dial contacts from the Priority 4 campaign.

### Create Voice Campaigns

Steps to create Voice campaigns:

1. On the **Voice** tab, click **+ New Campaign**.  
<img src="../images/new-campaign-button.png" alt="New Campaign Button" title="New Campaign Button" style="border: 1px solid gray; zoom:80%;">

2. The **New Voice Campaign** dialog box is displayed. Under the **General** tab, enter the following details:
    * **Campaign Name**: Enter a name for the campaign.
    <img src="../images/campaign-name.png" alt="Campaign Name" title="Campaign Name" style="border: 1px solid gray; zoom:100%;">
    * **Description**: A description of the campaign.
    <img src="../images/description.png" alt="Campaign Description" title="Campaign Description" style="border: 1px solid gray; zoom:100%;">
    * **Contact Lists**: Select the **Contact Lists** that will be dialed, for the campaign from the drop-down list and then click **Done**.
    <img src="../images/contact-list.png" alt="Select Contact Lists" title="Select Contact Lists" style="border: 1px solid gray; zoom:100%;">
    * Select the **DNC List** from the drop-down.
    <img src="../images/dnc-list.png" alt="DNC List" title="DNC List" style="border: 1px solid gray; zoom:100%;">

        !!! Notes

            * Only 1 DNC list can be selected per campaign.
            * The contact list is automatically scrubbed against the DNC list after the Campaign is saved.

    * Select the **Priority** from the drop-down list.
    <img src="../priority-list.png" alt="Priority" title="Priority" style="border: 1px solid gray; zoom:100%;">
    * Select the **Dialing Mode** from the drop-down list.
    <img src="../images/dialing-mode.png" alt="Dialing Mode" title="Dialing Mode" style="border: 1px solid gray; zoom:100%;">

3. Under the **Outreach Strategy** tab, enter the following details:
    * **Caller ID**: Select the caller ID to be displayed for the campaign.
    <img src="../images/caller-id.png" alt="Caller ID" title="Caller ID" style="border: 1px solid gray; zoom:100%;">
    * **Dialing Order**: Choose the order of dialing the phone numbers.
    <img src="../images/dialing-order.png" alt="Dialing Order" title="Dialing Order" style="border: 1px solid gray; zoom:100%;">
    * **Max Attempts Per Contact**: Enter the count for the maximum number of attempts by the dialer to call each phone number in the campaign.
    <img src="../images/max-attempts-per-contact.png" alt="Max Attempts Per Contact" title="Max Attempts Per Contact" style="border: 1px solid gray; zoom:100%;">
    * **Default Retry Period**: Select the retry duration (in minutes) in case of an unsuccessful connection with a contact.
    <img src="../images/default-retry-period.png" alt="Default Retry Period" title="Defult Retry Period" style="border: 1px solid gray; zoom:100%;">
    * **Max Ring Time**: Select the duration (in seconds) that a call will ring until it is disconnected.
    <img src="../images/max-ring-time.png" alt="Max Ring Time" title="Max Ring Time" style="border: 1px solid gray; zoom:100%;">
    * **Contactable Timings**: Add the contactable timings (day of the week/time) when the dialer will dial the calls.
    <img src="../images/contactable-timings.png" alt="Contactable Timings" title="Contactable Timings" style="border: 1px solid gray; zoom:100%;">

        !!! Note

            Calls will be dialed to contacts based on the calling hours and timezone configured here, irrespective of the campaign's start and stop time.

4. Click **Save**. The campaign is created.

### Schedule Voice Campaigns

Scheduling allows precise control over when your messages will be delivered. You can seamlessly plan campaigns to coincide with peak engagement times, ensuring maximum impact. Whether daily, weekly, Monthly, or Yearly, tailor your schedule to optimize outreach and enhance audience responsiveness. Scheduling a campaign will activate the campaign at a designated date and time.

Steps to schedule a Campaign:

1. Click the **Schedule** tab and turn on the **Schedule Campaign** toggle.
<img src="../images/schedule-campaign-toggle.png" alt="Schedule campaign Toggle" title="Schedule Campaign Toggle" style="border: 1px solid gray; zoom:100%;">

2. Select the campaign **Start Date & Time**. **End Date & Time** is optional.
<img src="../images/start-and-end-time.png" alt="Start & End time" title="Start & End Time" style="border: 1px solid gray; zoom:100%;">

3. Select the **Time Zone** in which the campaign will be dialed.
<img src="../images/timezone-dropdown.png" alt="Timezone" title="Timezone" style="border: 1px solid gray; zoom:100%;">

4. Turn on the Recurrence toggle if you want the campaign to recur at defined intervals. You can select from the following options:
    1. Daily,
    2. Weekly,
    3. Monthly,
    4. Yearly.

    **Every “Enter Value” day(s)** is a subset of what you select, Daily, Weekly, Monthly, or Yearly.

    !!! Note

        When a Scheduled campaign completes the first occurrence, it considers that run as complete so on the next recurrence it will start reaching the contacts freshly.
        For example, If a campaign is scheduled to run every week on Monday then on the first occurrence of Monday, the dialer will dial as many contacts as it can and then treat the contact list as completed. The next Monday the dialer will again consider dialing all contacts in the list.

5. Turning on the Allow Recurrence Precedence toggle will give the recurrence start and end time precedence over Contactable timings.
For example, if Contactable Timings are 9:00 AM to 6:00 PM but the user selects Recurrence Start Time as 8:00 AM, the campaign will start contacting from 8:00 AM.
<img src="../images/allow-recurrence-precedence.png" alt="Allow Recurrence Precedence" title="Allow Recurrence Precedence" style="border: 1px solid gray; zoom:100%;">

6. Click **Save**. A campaign is created as per the configured schedule.

    !!! Notes

        * When a timezone is selected in the 'Contactable Timings' section, it automatically becomes the default timezone for scheduling in the 'Schedule' section. However, campaign managers can still choose a different timezone from the dropdown if necessary.
        
        * Once a campaign is scheduled, it will become active at the specified date and time. However, the contacts will be dialed according to the 'Contactable Timings' time and timezone settings.
        
        * To ensure accuracy, the contacts are scrubbed again 15 minutes before the scheduled time of a campaign.
        
        * A scheduled campaign will automatically run at the scheduled date/time but the contacts are dialed as per the contactable timings and timezone. Clicking the Run button for a scheduled campaign displays an error message.

### Stop a Scheduled Campaign

Click the **Stop** button under actions. Stopping a scheduled campaign will end the instance of that campaign.
<img src="../images/stop-scheduled-campaign.png" alt="Stop Button" title="Stop Button" style="border: 1px solid gray; zoom:100%;">

A confirmation message is displayed. Click **Stop**.
<img src="../images/stop-scheduled-campaign-confirmation.png" alt="Stop Scheduled campaign Confirmation" title="Stop Scheduled Campaign Confirmation" style="border: 1px solid gray; zoom:100%;">

### Edit a Voice Campaign

Editing a voice campaign allows you to make changes to the campaign as per your needs.

Steps to edit a campaign:

1. Click the **Ellipsis** (**⋮**) icon beside the campaign name and click **Edit**.
<img src="../images/edit-campaign-button.png" alt="Edit Campaign Button" title="Edit Campaign Button" style="border: 1px solid gray; zoom:100%;">

2. A pop-up window is displayed. Do the required changes and click **Save**.
<img src="../images/edit-campaign-window.png" alt="Edit and Save Campaign" title="Edit and save Campaign" style="border: 1px solid gray; zoom:100%;">

    !!! Note

        You cannot edit a campaign that in Active status. For campaigns in other statuses, you can edit limited fields.

### Clone a Voice Campaign

Cloning a voice campaign creates a replica of the original campaign. This is useful when two or more similar campaigns are run simultaneously.

Steps to clone a campaign:

1. Click the **Ellipsis** (**⋮**) icon beside the campaign name and click **Clone**.  
<img src="../images/clone-campaign.png" alt="Clone Campaign Button" title="Clone Campaign Button" style="border: 1px solid gray; zoom:80%;">
2. A cloned copy of the original campaign is created.  

    !!! Note

        The system does not clone the original campaign's schedule configuration.  
    <img src="../images/cloned-campaigns.png" alt="Cloned Campaign" title="Cloned Campaign" style="border: 1px solid gray; zoom:80%;">

### Stop a Voice Campaign

Stopping a voice campaign resets the data, and a new instance of the campaign is created when you rerun the campaign.

Steps to stop a campaign:

1. Click the **Stop** button under **ACTIONS** for the campaign you want to stop.
<img src="../images/stop-campaign-button.png" alt="Stop Campaign Button" title="Stop Campaign Button" style="border: 1px solid gray; zoom:100%;">

2. A **Stop Campaign** confirmation pop-up window is displayed. Click **Stop**.
<img src="../images/stop-campaign-confirmation.png" alt="Stop Campaign Confirmation" title="Stop Campaign Confirmation" style="border: 1px solid gray; zoom:100%;">

### Delete a Voice Campaign

You can delete a voice campaign if the campaign has served its purpose or is no longer required.

Steps to delete a campaign:

1. Click the **Ellipsis**(**⋮**) icon beside the campaign name and click **Delete**.
<img src="../images/delete-campaign-button.png" alt="Delete Campaign Button" title="Delete Campaign Button" style="border: 1px solid gray; zoom:100%;">

2. A **Delete Campaign** confirmation pop-up window is displayed. Click **Delete**.
<img src="../images/delete-campaign-confirmation.png" alt="Delete Campaign Confirmation" title="Delete Campaign Confirmation" style="border: 1px solid gray; zoom:100%;">
3. The campaign is deleted.

### Run Voice Campaigns

You can run a voice campaign by clicking the **Play** button.
<img src="../images/run-campaign-button.png" alt="Run Campaign" title="Run Campaign" style="border: 1px solid gray; zoom:100%;">

When the campaign runs, you can pause or stop it. You can also rerun a completed campaign.