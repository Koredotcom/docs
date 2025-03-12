# Proactive Web Campaigns

Web campaigns are online strategic initiatives to promote a product, service, cause, or brand. They harness the power of web engagement to reach and engage target audiences effectively. Their utility lies in their ability to amplify visibility, generate leads, foster brand awareness, and ultimately, achieve predefined objectives with precision and measurable outcomes.

You can access the Proactive Web Campaigns by going to **Campaign Management** > **Proactive Web**.
<img src="../images/campaign-management-page.png" alt="Proactive Web Page" title="Proactive Web" style="border: 1px solid gray; zoom:80%;">

## Proactive Web Campaign Types

| **TYPE** | **DESCRIPTION**                                                                                                            |
|----------|----------------------------------------------------------------------------------------------------------------------------|
| Chat     | A message is displayed on the web page. This action pushes the configured messages to the chat widget message channel.     |
| Banner   | A banner is displayed to the customer at the top or bottom of a web page.                                                   |
| Post     | A post is displayed as a pop-up at the center of the web page.                                                               |
| Button   | A button is displayed to the customer on the web page. This button can be static or triggered by an action from the customer and can be placed on the right or left side of the web page. |

On this page, the following details of the web campaigns are shown in a table:  
<img src="../images/campaign-management-page-details.png" alt="Campaign Details" title="Campaign Details" style="border: 1px solid gray; zoom:80%;">

* **Name** - The campaign name and Type.
* **Actions** - Play/Pause/Replay, Stop, Edit, Clone campaign.
* **Status** - Status of the campaign.
    * **Ready**: When a campaign is saved and ready to run.
    * **Active**: The campaign is started and running.
    * **Paused**: The campaign is paused.
    * **Completed**: The campaign is exhausted, and all the proactive messages are sent.
* **Type** - Chat, Post, Banner, or Button.
* **Sent** -  The count of proactive messages sent to website visitors.
* **Goals** - The count of campaign goals achieved.

## Create Proactive Web Campaigns

Creating proactive web campaigns involves strategizing and implementing initiatives to anticipate and address user needs before they arise, enhancing user experience and engagement. Campaign managers are crucial in orchestrating these efforts, utilizing data-driven insights and innovative techniques to craft compelling content and optimize campaign performance.

Steps to create a proactive web campaign:

1. Go to **Campaign Management > Proactive Web**.
2. Click **+ New Campaign**.
You can access the Proactive Web Campaigns by going to **Campaign Management** > **Proactive Web**.  
<img src="../images/new-campaign-button-proactive.png" alt="New Campaign Button" title="New Campaign Button" style="border: 1px solid gray; zoom:80%;">

### Chat

1. On the **New Proactive Web Campaign** page, click **Chat**.  
<img src="../images/chat.png" alt="Chat Button" title="Chat Button" style="border: 1px solid gray; zoom:80%;">

2. Click the **General** tab and enter the **Campaign Name** and **Description**.  
<img src="../images/general-tab.png" alt="General Tab" title="General Tab" style="border: 1px solid gray; zoom:80%;">

3. Click the **Layout Design** tab. Under the **Message Header** click the **Edit** icon to enter the header **Text** and **Image** that can be used along with the displayed message, and click **Save**. By default, the message header is enabled.  
<img src="../images/message-header.png" alt="Message Header" title="Message Header" style="border: 1px solid gray; zoom:80%;">

4. Click the **Edit** icon and enter the message to be displayed to the website visitor. You can select the font size, make the text bold, italics, underline, select, add links,  text color, or add variables, and click **Save**.  
<img src="../images/messages.png" alt="Messages" title="Messages" style="border: 1px solid gray; zoom:80%;">

5. Click **+ Add Button** to add a new button.  
<img src="../images/add-button.png" alt="Add Button" title="Add Button" style="border: 1px solid gray; zoom:80%;">  

    Click the **Edit** icon to edit the details of an existing button. You can enter the Text for the button, select the Action performed on clicking the button, Background Colour, Text Colour for the button, and click **Save**.  
    <img src="../images/buttons.png" alt="Buttons" title="Buttons" style="border: 1px solid gray; zoom:80%;">  
    The following options are available for the Actions:
        1. **Send to URL** - Selecting this option displays the URL field where the user will be redirected.
        2. **Send to Bot** - The conversation will be redirected to the bot.
        3. **Dismiss** - Dismiss the proactive chat offer.

6. Under the **Appearance** section, select the **Message Bubble Alignment**, **Bubble Alignment**, and **Dark Shadow**.  
<img src="../images/appearance.png" alt="Appearance" title="Appearance" style="border: 1px solid gray; zoom:80%;">

7. The **Preview Section** on the left side shows the configured layout.  
<img src="../images/preview-section.png" alt="Preview Setion" title="Preview Section" style="border: 1px solid gray; zoom:80%;">

8. Click the **Engagement Strategy** tab and configure the following:
    1. **Website**: Click the **+ Add Website** button and select the **URL**/**Page Name**. URLs are crucial for directing users to specific web pages, tracking campaign performance, and optimizing user experience, ultimately enhancing audience engagement and conversion rates. Select the URL and the condition about what the URL contains.  
    <img src="../images/engagemet-strategy.png" alt="Engagement Stategy" title="Engagement Strategy" style="border: 1px solid gray; zoom:80%;">

    2. **Rules**: Rules establish guidelines and standards to govern the execution of online marketing initiatives, ensuring effectiveness and compliance. Click the **+ Add Rule** button and select the rules. You can select from the following rules:

        * User, Is, known/anonymous.
        * Country, Is/Not, “name of the country”.
        * City, Is/Not, “name of the city”.
        * Page Visit Count, Equals To, “count”.
        * Time Spent, Equals To, no.of Seconds.
        * Hover On, ID/Class/Query Selector, “Add Rule”. The rule can be set as follows:
            * On a web page, select the **object** or **element**.
            * Right-click and select '**Inspect**'.
            * In the 'Inspect' section, click the **Elements** tab. It will have the "**id**" and/or "**class**"
            * To use a "**Query Selector**", right-click the specific HTML element and select '**Copy Selector**'.

                !!! Note

                    The above steps are specific to Chrome browser and might vary for other web browsers.  

        <img src="../images/rules.png" alt="Rules" title="Rules" style="border: 1px solid gray; zoom:80%;">            

    3. **Goals**: The purpose is to provide clear objectives and measurable targets to guide the campaign's strategy and assess its effectiveness in achieving desired outcomes. Click the **+ Add Goal** button and select the goals.  
    <img src="../images/goal.png" alt="Goals" title="Goals" style="border: 1px solid gray; zoom:80%;">

    4. **Channel**: The purpose of channels in a web campaign is to designate a medium through which the campaign's message is disseminated, facilitating targeted outreach and engagement with the intended audience. Select the channel for the campaign from the dropdown.  
    <img src="../images/channel-selected.png" alt="Channel" title="Channel" style="border: 1px solid gray; zoom:80%;">

    5. **Engagement Hours**: Select the time duration for running the campaign. You can select from the following:
        1. **Anytime**: The campaign will be visible 24 hours, 7 days a week.
        2. **Custom**: The campaign will be visible in the chosen time zone only during the set days and times.  
        <img src="../images/engagement-hours.png" alt="Engagement Hours" title="Engagement Hours" style="border: 1px solid gray; zoom:80%;"> 

12. Click **Save**.

### Post

1. On the **New Proactive Web Campaign** page, click **Post**.  
<img src="../images/post.png" alt="Post Button" title="Post Button" style="border: 1px solid gray; zoom:80%;"> 

2. Click the **General** tab, and enter the **Campaign Name** and **Description**. Steps to add the name and description are same for all proactive web campaign types. [Learn more](#chat).
3. Click the **Layout Design** tab. Click the **Edit** icon under **Message,** enter a message to be displayed, and click **Save**. You can use the options available in the editor to design the layout. Under **Appearance**, select the **Size**.  
<img src="../images/layout-design-post.png" alt="Layout Design Post" title="Layout Design Post" style="border: 1px solid gray; zoom:80%;"> 

4. Click the **Engagement Strategy** tab and configure the **Website**, **Rules**, **Goal**, **Channel**, and **Engagement Hours**. Steps to configure the engagement strategy are same for all proactive web campaign types. [Learn more](#chat).
5. Click **Save**.

### Banner

1. On the **New Proactive Web Campaign** page, click **Banner**.  
<img src="../images/banner.png" alt="Banner Button" title="Banner Button" style="border: 1px solid gray; zoom:80%;"> 

2. Click the **General** tab, and enter the **Campaign Name** and **Description**. Steps to add the name and description are same for all proactive web campaign types. [Learn more](#chat).
3. Click the **Layout Design** tab. Click the **Edit** icon under **Message,** enter a message to be displayed, and click **Save**. You can use the options available in the editor to design the layout. Under **Appearance**, select the **Pattern** (**Sticky**/**Floating**), **Placement** (**Top**/**Bottom**), **Background**, and **Text Color**.  
<img src="../images/banner-layout design.png" alt="Layout Design Banner" title="Layout Design Banner" style="border: 1px solid gray; zoom:80%;"> 

4. Click the **Engagement Strategy** tab and configure the **Website**, **Rules**, **Goal**, **Channel**, and **Engagement Hours**. Steps to configure the engagement strategy are same for all proactive web campaign types. [Learn more](#chat).
5. Click **Save**.

### Button

1. On the **New Proactive Web Campaign** page, click **Button**.  
<img src="../images/button.png" alt="Button" title="Button" style="border: 1px solid gray; zoom:80%;"> 

2. Click the **General** tab, and enter the **Campaign Name** and **Description**. Steps to add the name and description are same for all proactive web campaign types. [Learn more](#chat).
3. Click the **Layout Design** tab. Click the **Edit** icon on the right corner and do the following:
    1. Enter the **Text** that will be displayed on the button.
    2. Select the **Action** (Send to URL/Slide Out Message) to be performed when the button is clicked.
    3. Upload an image if required.
    4. Enter the header **Text** that will be displayed when the button is clicked.
    5. Enter the **Message** that will be displayed when the button is clicked. You can use the options available in the editor to design the layout.
    6. Select the **Background** and **Text Color**.
    7. Select the **Placement** of the button (Left/Right).  
    <img src="../images/slide-out.gif" alt="Layout Design Button" title="Layout Design Button" style="border: 1px solid gray; zoom:80%;"> 

4. Click the **Engagement Strategy** tab and configure the **Website**, **Rules**, **Goal**, **Channel**, and **Engagement Hours**. Steps to configure the engagement strategy are same for all proactive web campaign types. [Learn more](#chat).
5. Click **Save**.

## Templates

The purpose of using templates in web campaigns is to streamline and expedite the creation of consistent and visually appealing content. Templates provide a structured framework that enables you to easily plug in content elements, ensuring uniformity across various campaign materials. By using templates, marketers can save time, maintain brand coherence, and efficiently produce engaging content tailored to different platforms and audience segments. Additionally, templates facilitate collaboration among team members and allow for swift adjustments and iterations based on campaign performance and feedback. Overall, templates enhance productivity, brand consistency, and campaign effectiveness in the dynamic landscape of digital marketing.

You can choose templates by going to **Campaign Management** > **Proactive Web** > **+ New Campaign** > **All Templates** / **Choose from Templates**.  
<img src="../images/templates-main-page.png" alt="Templates Main Page" title="Templates Main Page" style="border: 1px solid gray; zoom:80%;"> 

### Using a Template to Create a Proactive Web Campaign

Steps to create a proactive web campaign using a template:

1. Click the template that you want to use for the campaign. For example, Banner.  
<img src="../images/banner-template.png" alt="Banner Template" title="Banner Template" style="border: 1px solid gray; zoom:80%;"> 

2. The template format is displayed. Click **Use this Template**.  
<img src="../images/use-this-template.png" alt="Use This Template" title="USe This Template" style="border: 1px solid gray; zoom:80%;"> 

3. The **New Proactive Web Campaign** page is displayed.  
<img src="../images/new-web-campaign-page.png" alt="New Proactive Web Campaign" title="Engagement Hours" style="border: 1px solid gray; zoom:80%;"> 

4. Enter the required information and create the web campaign.

### Schedule Proactive Web Campaigns

Scheduling allows precise control over when your messages will be delivered. You can seamlessly plan campaigns to coincide with peak engagement times, ensuring maximum impact. Whether daily, weekly, Monthly, or Yearly, tailor your schedule to optimize outreach and enhance audience responsiveness. Scheduling a campaign will activate the campaign at a designated date and time.

Steps to schedule a Campaign:

1. Click the **Schedule** tab and turn on the **Schedule Campaign** toggle.  
<img src="../images/schedule-campaign-toggle.png" alt="Schedule campaign Toggle" title="Schedule Campaign Toggle" style="border: 1px solid gray; zoom:80%;">

2. Select the campaign **Start Date & Time**. **End Date & Time** is optional.  
<img src="../images/start-and-end-time.png" alt="Start & End time" title="Start & End Time" style="border: 1px solid gray; zoom:80%;">

3. Select the **Time Zone** in which the campaign will be dialed.  
<img src="../images/timezone-dropdown.png" alt="Timezone" title="Timezone" style="border: 1px solid gray; zoom:80%;">

4. Turn on the Recurrence toggle if you want the campaign to recur at defined intervals. You can select from the following options:
    1. Daily,
    2. Weekly,
    3. Monthly,
    4. Yearly.

    **Every “Enter Value” day(s)** is a subset of what you select, Daily, Weekly, Monthly, or Yearly.  

    <img src="../images/recurrance-duration.gif" alt="Allow Recurrence Precedence" title="Allow Recurrence Precedence" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        When a Scheduled campaign completes the first occurrence, it considers that run as complete so on the next recurrence it will start reaching the contacts freshly.
        For example, If a campaign is scheduled to run every week on Monday then on the first occurrence of Monday, the dialer will dial as many contacts as it can and then treat the contact list as completed. The next Monday the dialer will again consider dialing all contacts in the list.

5. Turning on the Allow Recurrence Precedence toggle will give the recurrence start and end time precedence over Contactable timings.
For example, if Contactable Timings are 9:00 AM to 6:00 PM but the user selects Recurrence Start Time as 8:00 AM, the campaign will start contacting from 8:00 AM.  
<img src="../images/allow-recurrence-precedence.png" alt="Allow Recurrence Precedence" title="Allow Recurrence Precedence" style="border: 1px solid gray; zoom:80%;">

6. Click **Save**. A campaign is created as per the configured schedule.

    !!! Notes

        * When a timezone is selected in the 'Contactable Timings' section, it automatically becomes the default timezone for scheduling in the 'Schedule' section. However, campaign managers can still choose a different timezone from the dropdown if necessary.
        
        * Once a campaign is scheduled, it will become active at the specified date and time. However, the contacts will be dialed according to the 'Contactable Timings' time and timezone settings.
        
        * To ensure accuracy, the contacts are scrubbed again 15 minutes before the scheduled time of a campaign.
        
        * A scheduled campaign will automatically run at the scheduled date/time but the contacts are dialed as per the contactable timings and timezone. Clicking the Run button for a scheduled campaign displays an error message.

### Stop a Scheduled Campaign

Click the **Stop** button under actions. Stopping a scheduled campaign will end the instance of that campaign; re-running a stopped scheduled campaign creates a new instance and all the contacts will dialed again.    
<img src="../images/stop-scheduled-campaign.png" alt="Stop Button" title="Stop Button" style="border: 1px solid gray; zoom:80%;">

A confirmation message is displayed. Click **Stop**.  
<img src="../images/stop-scheduled-campaign-confirmation.png" alt="Stop Scheduled campaign Confirmation" title="Stop Scheduled Campaign Confirmation" style="border: 1px solid gray; zoom:80%;">

### Edit a Proactive Web Campaign

Editing a proactive web campaign allows you to make changes to the campaign as per your needs.

Steps to edit a web campaign:

1. Click the **Ellipsis** (**⋮**) icon beside the campaign name and click **Edit**.  
<img src="../images/edit-campaign-button.png" alt="Edit Button" title="Edit Button" style="border: 1px solid gray; zoom:80%;"> 

2. A pop-up window is displayed. Do the required changes and click **Save**.  
<img src="../images/edit-and-save-web-campaign.png" alt="Edit and Save Web Campaign" title="Edit and Save Web Campaign" style="border: 1px solid gray; zoom:80%;"> 

### Clone a Proactive Web Campaign

Cloning a proactive web campaign creates a replica of the original campaign. This is useful when two or more similar campaigns are run simultaneously.

Steps to clone a web campaign:

1. Click the **Ellipsis** (**⋮**) icon beside the campaign name and click **Clone**.  
<img src="../images/clone-web-campaign-button.png" alt="Clone Web Campaign Button" title="Clone Campaign Button" style="border: 1px solid gray; zoom:80%;">
2. A cloned copy of the original campaign is created.  
<img src="../images/cloned-web-campaign.png" alt="Cloned Web Campaign" title="Cloned WebCampaign" style="border: 1px solid gray; zoo8100%;">

### Stop a Proactive Web Campaign

Stopping a web campaign resets the data, and a new instance of the campaign is created when you rerun the campaign.

Steps to stop a web campaign:

1. Click the **Stop** button under **ACTIONS** for the campaign you want to stop.  
<img src="../images/stop-campaign-button.png" alt="Stop Campaign Button" title="Stop Campaign Button" style="border: 1px solid gray; zoom:80%;">

2. A **Stop Campaign** confirmation pop-up window is displayed. Click **Stop**.  
<img src="../images/stop-campaign-confirmation.png" alt="Stop Campaign Confirmation" title="Stop Campaign Confirmation" style="border: 1px solid gray; zoom:80%;"> 

### Delete a Proactive Web Campaign

You can delete a web campaign if it has served its purpose or is no longer required.

Steps to delete a web campaign:

1. Click the **Ellipsis** (**⋮**) icon beside the campaign name and click **Delete**.  
<img src="../images/delete-web-campaign.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:80%;"> 

2. A **Delete Campaign** confirmation pop-up window is displayed. Click **Delete**.  
<img src="../images/delete-campaign-confirmation.png" alt="Delete Campaign Confirmation" title="Delete Campaign Confirmation" style="border: 1px solid gray; zoom:80%;"> 

3. The web campaign is deleted successfully.

### Run Proactive Web Campaigns

You can run a proactive web campaign by clicking the **Play** button.  
<img src="../images/run-web-campaign.png" alt="Run Web Campaign Button" title="Run Web Campaign Button" style="border: 1px solid gray; zoom:80%;"> 

When the campaign runs, you can pause or stop it. You can also rerun a completed campaign.

## Proactive Web Campaign Plugin for the Kore.ai Web SDK

The Proactive Web Campaign plugin extends the Kore.ai Web SDK, enabling dynamic, rule-based interactions with website visitors. With this plugin, you can define campaigns that trigger actions like displaying messages or starting chats based on visitor behavior.

For installation instructions, configuration options, and examples, refer to the README file in the [GitHub repository](https://github.com/Koredotcom/web-kore-sdk/tree/v3/dev/docs/plugins/proactive-web-campaign){:target="_blank"}.