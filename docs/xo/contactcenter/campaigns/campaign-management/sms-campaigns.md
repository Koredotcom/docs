# SMS Campaigns

SMS campaigns use text messages to reach and engage a target audience for marketing, informational, or transactional purposes. These campaigns use the SMS channel to deliver concise, impactful messages directly to users' mobile phones. SMS campaigns are versatile and used for promotions, alerts, reminders, surveys, and customer support, offering businesses a direct and efficient way to communicate with their audience.

You can access Campaigns by going to **Campaign Management** > **SMS**.  
<img src="../images/sms-campaign-page.png" alt="SMS Campaigns Page" title="SMS Campaigns Page" style="border: 1px solid gray; zoom:80%;">

On this page, the following details of the SMS campaigns are shown in a table:  
<img src="../images/campaign-page-header-panel.png" alt="SMS Campaigns Header" title="SMS Campaigns Header" style="border: 1px solid gray; zoom:80%;">  

* **Campaign** - The campaign name.
* **Actions** - Play/Pause/Replay, Stop, Edit, Clone campaign.
* **Priority** - Priority of the campaign from 1 to 5 (1 being the lowest). The default priority is 5.
* **Status** - Status of the campaign.
    * **Ready**: When a manual campaign is saved and ready to run.
    * **Active**: The campaign is started and running.
    * **Paused**: The campaign is paused.
    * **Rerun**: Rerun the campaign.
    * **Completed**: The campaign has exhausted calling all numbers or the campaign has reached its scheduled end date.
* **Progress** - Progress of the campaign. The count refreshes every 5 seconds.
* **Contact List** - The call lists that will be dialed.
* **Schedule** - Start and End date when the campaign is scheduled to run.

To run SMS campaigns, you must configure the SMS channel first. [Learn more](../../../channels/add-sms-channel.md).

## Create SMS Campaigns

Steps to create an SMS campaign:

1. Click **+ New Campaign**.  
    <img src="../images/new-campaign-button-sms.png" alt="+ New Campaign" title="+ New Campaign" style="border: 1px solid gray; zoom:80%;">

2. The **New SMS Campaign** dialog box is displayed. Under the **General** tab, enter the following details:

    * **Campaign Name**: Enter a name for the campaign.
    * **Description**: Enter a description of the campaign.
    * **Contact Lists**: Select the contact lists that will be dialed, for the campaign from the drop-down list and then click **Done**. [Learn more](../list-management/list-management.md#contact-lists).
    * **DNC List**: Select the DNC List from the drop-down. [Learn more](../list-management/list-management.md#dnc-lists).
    * **Priority**: Select the priority for the campaign from the drop-down.  
    <img src="../images/general-tab-sms.png" alt="General Tab" title="General Tab" style="border: 1px solid gray; zoom:80%;">

3. On the **Message** tab, you can select from two available formats:

    * **Simple**: This format is useful for sending simple outbound messages. Select a template for the SMS campaign from the drop-down. Click the 🖉 icon to enter the message to be shared.  
        <img src="../images/simple-message.png" alt="Simple Message" title="Simple Message" style="border: 1px solid gray; zoom:80%;">

        !!! Note

            * Users can select system or custom templates and edit them for a particular campaign.
            * Editing a custom or system template modifies it for a specific campaign, and does not alter the original template. 
            * When a system or custom template is selected and the user chooses to edit it, the template selection drop-down resets to "None."

    * **Advanced**: This format is useful for two-way messaging (Inbound and Outbound) by linking to a start flow that contains dialog tasks. All the published start flows are displayed regardless of a number associated with them. This format can also be used to transfer to an agent using the attached flow. Select a start flow from the dropdown.  
        <img src="../images/advanced-message.png" alt="Advanced Message" title="Advanced Message" style="border: 1px solid gray; zoom:80%;">

4. Click **Save** after entering the message.  
    <img src="../images/save-message-sms.png" alt="Save Message" title="Save Message" style="border: 1px solid gray; zoom:80%;">

5. On the **Outreach Strategy** tab, first, select the Caller ID. Caller ID is the number that is used to send SMS, and the same number is displayed on the recipient's phone. All the numbers available in the app are available to be selected as the caller ID.  
In the Simple message format, the caller ID displays numbers configured for Outbound only, which are not linked to any flows.  
In the Advanced message format, businesses can establish two-way communication with their end customers. Using the Advanced message format, you can associate an SMS Flow that can take the end customers through an automation journey, run dialog tasks, and connect to live agents if required.

## Edit an SMS Campaign

Editing an SMS campaign allows you to make changes to the campaign as per your needs.

Steps to edit an SMS campaign:

1. Click the Ellipsis (**︙**) icon beside the campaign name and click **Edit**.  
    <img src="../images/edit-button-sms.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;">

2. A pop-up window is displayed. Do the required changes and click **Save**.  
    <img src="../images/save-edited-campaign-sms.png" alt="Save Edited Campaign" title="Save Edited campaign" style="border: 1px solid gray; zoom:70%;">

## Clone an SMS Campaign

Cloning an SMS campaign creates a replica of the original campaign. This is useful when two or more similar campaigns are run simultaneously.

Steps to clone an SMS campaign:

1. Click the Ellipsis (**⋮**) icon beside the campaign name and click **Clone**.  
    <img src="../images/clone-button-sms.png" alt="Clone Button" title="Clone Button" style="border: 1px solid gray; zoom:80%;">

2. A cloned copy of the original campaign is created.  
    <img src="../images/cloned-campaign-sms.png" alt="Cloned Campaign" title="Cloned Campaign" style="border: 1px solid gray; zoom:80%;">

## Delete an SMS Campaign

You can delete an SMS campaign if it has served its purpose or is no longer required.

Steps to delete an SMS campaign:

1. Click the Ellipsis (**⋮**) icon beside the campaign name and click **Delete**.  
    <img src="../images/delete-button-sms.png" alt="Delete Campaign Button" title="Delete Campaign Button" style="border: 1px solid gray; zoom:80%;">

2. A confirmation pop-up window appears. Click **Delete**.  
    <img src="../images/delete-campaign-confirmation-sms.png" alt="Delete Campaign Confirmation" title="Delete Campaign Confirmation" style="border: 1px solid gray; zoom:60%;">  

## Run SMS Campaigns

Running an SMS campaign changes the campaign status to **Active** and sends the configured message to the numbers in the contact lists.

Steps to run an SMS Campaign:

1. You can run a voice campaign by clicking the **Play** button.  
    <img src="../images/play-button.png" alt="Play Button" title="Play Button" style="border: 1px solid gray; zoom:80%;">  

    When the campaign runs, you can pause or stop it. You can also rerun a completed campaign.

## Stop an SMS Campaign

Stopping an SMS resets the data, the campaign status changes to **Stopped**, and a new instance of the campaign is created when you rerun the campaign.

Steps to stop an SMS campaign:

1. Click the **Stop** button under **Actions** for the campaign you want to stop.  
    <img src="../images/stop-button.png" alt="Stop Button" title="Stop Button" style="border: 1px solid gray; zoom:80%;">

2. A confirmation pop-up window appears. Click **Stop**.  
    <img src="../images/stop-campaign-confirmation-sms.png" alt="Stop Campaign Confirmation" title="Stop Campaign Confirmation" style="border: 1px solid gray; zoom:80%;">
