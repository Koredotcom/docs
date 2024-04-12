# Introduction

Outbound campaigns are reshaping how businesses connect with their audience. These campaigns proactively reach out to a curated list of individuals, following predefined rules. At the core of this process, calls are orchestrated based on the information available in a contact list. Outbound campaigns infuse a personalized touch by crafting scripts that shape the agent's interaction.


# Campaign Management

You can find the **Campaign Management** tab on the left panel.

On this page, the following details of the voice campaigns are shown in a table:

* **Campaign** - Campaign name and Type.
* **Actions** - Play/Pause/Replay, Stop, Edit, Clone campaign.
* **Priority** - Priority of the campaign from 1 to 10 (1 being the lowest). The default priority is 1.
* **Status** - Status of the campaign 
    * **Ready**: When a manual campaign is saved and ready to run.
    * **Active**: The campaign is started and running.
    * **Paused**: The campaign is paused.
    * **Rerun**: Rerun the campaign.
    * **Completed**: The campaign has exhausted calling all numbers or the campaign has reached its scheduled end date.
* **Progress** - Progress of the campaign. The count refreshes every 5 seconds.
* **Contact List** - The call list that will be dialed.
* **Connection** - The following details are displayed based on the dialer type:
    * **Agentless dialer**- The Experience Flow name selected while creating or editing a campaign is shown. For example: Default Conversational Input voice Flow.

**Note**: The Campaigns module is only available on accounts configured with Kore Gateway. If an account is configured with AudioCodes or the mapped gateway is switched from AudioCodes to Kore Gateway, then the Campaigns module is unavailable. 


## Create Voice Campaigns

Steps to create Voice campaigns:



1. Click **+ New Campaign**.
2. The **New Voice Campaign** dialog box is displayed. Under the **General** tab, enter the following details:
    * **Campaign Name**: Enter a name for the campaign.
    * **Description**: A description of the campaign.
    * **Contact Lists**: Select the contact lists that must be dialed for the campaign from the drop-down list and then click **Done**.
    * Select the DNC List from the drop-down.  
    **NOTES**: 
        * Only 1 DNC list can be selected per campaign.
        * The contact list is automatically scrubbed against the DNC list after the Campaign is saved.
        * Select the Priority from the drop-down list.
        * Select the Dialing mode from the drop-down list.
3. Under the** Outreach Strategy **tab, enter the following details:
    * **Contactable Timings**: Add the contactable timings (day of the week/time) when the dialer will dial the calls.  
    **NOTE**: Calls will be dialed to contacts based on the calling hours and timezone configured here, irrespective of the campaign's start and stop time.
    * **Dialing Order**: Choose the order of dialing the phone numbers.
    * **Max Attempts Per Contact**: Enter the count for the maximum number of attempts by the dialer to call each phone number in the campaign.
    * **Default Retry Period**: Select the retry duration (in minutes) in case of an unsuccessful connection with a contact.
    * **Max Ring Time**: Select the duration (in seconds) that a call will ring until it is disconnected.
4. Click **Save**.


### Agentless Dialer

Agentless Dialer maintains a queue of leads to be dialed and can automatically dial a new phone number. The dialer initiates an outbound call to the selected phone number and when a call is answered, the dialer connects the call to the configured voice experience flow. The dialer can detect answering machines or voicemail and reschedule the call by sending the call status to the campaign manager. If a call goes unanswered or reaches a voicemail with Answering Machine Detection (AMD) turned on, the dialer disconnects the call and automatically dials the following number on the list.

Metrics and call statistics, such as the number of calls made, call duration, and call outcomes are generated for monitoring and reporting purposes.

Campaign managers can customize the dialing pace, allowing them to set the number of simultaneous calls dialed at any time.

Steps to create a campaign when Agentless Dialing Mode is selected:



1. Select the** Experience Flow** associated with the campaign.
2. Select the **Dialing Rate** and click **Save**. The campaign is created.  
**NOTE**: You can toggle on Answering Machine Detection if you want the system to determine whether the outbound call was received by an answering machine.


## Edit a Voice Campaign

Editing a voice campaign allows you to make changes to the campaign as per your needs.

Steps to edit a campaign:



1. Click the **Ellipsis** (**⋮**) icon beside the campaign name and click **Edit**.
2. A pop-up window is displayed. Do the required changes and click **Save**.  
**NOTE**: You cannot edit a campaign that is in Active status. For campaigns in other statuses,  you can edit limited fields.


## Clone a Voice Campaign

Cloning a voice campaign creates a replica of the original campaign. This is useful when two or more similar campaigns are run simultaneously.

Steps to clone a campaign:



1. Click the **Ellipsis** (**⋮**) icon beside the campaign name and click **Clone**.
2. A cloned copy of the original campaign is created.


## Stop a Voice Campaign

Stopping a voice campaign resets the data, and a new instance of the campaign is created when you rerun the campaign.

Steps to stop a campaign:



1. Click the **Stop** button under ACTIONS for the campaign you want to stop.
2. A **Stop Campaign** confirmation pop-up window is displayed. Click **Stop**.


## Delete a Voice Campaign

You can delete a voice campaign if the campaign has served its purpose or is no longer required.

Steps to delete a campaign:



1. Click the **Ellipsis **(**⋮**) icon beside the campaign name and click **Delete**.
2. A **Delete Campaign** confirmation pop-up window is displayed. Click **Delete**.
3. The campaign is deleted.


## Run Voice Campaigns

You can run a voice campaign by clicking the **Play** button.
When the campaign runs, you can pause or stop it. You can also rerun a completed campaign.



# Frequently Asked Questions (FAQs)


1. What is the difference in the resumption behavior of a paused campaign and a completed campaign when using the 'Rerun' icon?  
When you pause and resume a running campaign, it will restart from where it left off. However, if a campaign has dialed the last record and is then resumed by clicking the 'Rerun' icon, it will start dialing from the beginning of the dial list and will be a new instance of the same campaign. The new instance will not maintain data of the previous run.
2. How does the system handle contact lists in campaigns, and what are the limitations when it comes to sharing contact lists or running campaigns concurrently with the same list?  
Each campaign can have its contact list. Campaigns also can share contact lists. However, it is not possible for campaigns to simultaneously operate with the same contact list.
3. Is there a limit to the number of call lists per campaign?  
A campaign can have a maximum of 10 Call Lists.
4. Is there a limit on the number of Do Not Contact (DNC)  lists per campaign?  
The maximum number of DNC lists per campaign is one.
5. How many contact lists are permitted to be created?  
Each account can create a maximum of 1000 contact lists.
6. What are the limitations on DNC lists in terms of the number of records allowed per DNC list and per account?  
There is a limit of one million records for each DNC list and a total limit of two million DNC records for each account.
7. How many DNC lists are permitted to be created?  
Each account can create a maximum of 1000 DNC lists.
8. How many voice campaigns can be run concurrently?  
You can run a maximum of 50 voice campaigns concurrently.
9. What is the maximum number of contacts per account?  
Each account can have a maximum of five million contacts.
10. What is the maximum number of contacts that can be added to a contact list?  
Each contact list can contain a maximum of one million contacts, or up to a 5 MB file size limit.
11. How does priority work in Voice Campaigns?  
Assigning percentages to campaigns facilitates managing campaigns with varying priorities. A higher percentage implies more contacts will be dialed for that specific campaign. However, it's important to note that a higher priority doesn't guarantee that the campaign will be completed first.  

A Campaign Manager can oversee multiple campaigns with similar or different priorities. The campaign management system is capable of selecting and transferring contacts to the dialer automatically.  
**Priority Percentage** = (Sum of Priority Value of each Campaign / Number of Campaigns) *100

    **Scenario 1:** Two campaigns with priorities 5 and 3 respectively
    percentage allocation to campaign 1 = (5/ (5+3))*100 = 62.5%
    percentage allocation to campaign 2 = (3/ (5+3))*100 = 37.5%


    **Execution in this case:
    **62.5% of calls will be picked from campaign 1 and given to campaign 1 hopper.
    37.5% of calls will be picked from campaign 2 and given to campaign  2 hopper.
From each campaign’s hopper, the calls will be given to the Master Hopper.
Dialer will randomly dial from the 62.5% of calls of camp1 and the 37.5% of calls of campaign 2.


    **Scenario 2:** Two campaigns with the same priorities of 5.


    percentage allocation to campaign 1 = (5/ (5+5))*100 = 50% 
    percentage allocation to campaign 2 = (5/ (5+5))*100 = 50%


    **Execution in this case:
    **50% of calls will be picked from camp1 and given to the hopper.
    50% of calls will be picked from camp2 and given to the hopper.
    From each campaign’s hopper, the calls will be given to the Master Hooper
    Dialer will randomly dial from the 50% of calls of campaign 1 and the 50% of calls of campaign 2
