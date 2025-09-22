# Manage Layout

The Manage Layout option allows you to add, delete, and switch between different layouts. While creating a new layout, you can add customizable widgets to the interface.  
<img src="../images/manage-layout-button.png" alt="Manage Layout Button" title="Manage Layout Button" style="border: 1px solid gray; zoom:80%;">

## Notifications

Notifications are real-time alerts that keep agents informed about crucial events and updates. Notifications plays a key role in enhancing the user experience by improving responsiveness, productivity, and workflow management. By promptly alerting agents about New Conversations, Messages from other Agents, Error prompts, Transfer Request, etc., notifications ensure that agents can prioritize their workload effectively and deliver swift, personalized customer service.

The Notifications icon helps you choose preferences to get notified about upcoming events, agent responses, and the type of sound generated upon receiving updates.  
<img src="../images/notifications.png" alt="Notifications Button" title="Notifications Button" style="border: 1px solid gray; zoom:80%;">

Notifications is compatible with the following browsers:

* Google Chrome
* Mozilla Firefox
* Microsoft Edge

!!! Note

    It is essential to check the browser and system settings to allow notifications to work properly. For example, Check if the browser pop-up and redirect are enabled, system DnD is disabled etc.

Steps to manage notifications:

1. Click the **Bell** icon on the top right corner.  
    <img src="../images/bell-icon.png" alt="Notifications Button" title="Notifications Button" style="border: 1px solid gray; zoom:80%;">

2. Click the **Settings** icon to view the available options.  
    <img src="../images/settings.png" alt="Settings" title="Settings" style="border: 1px solid gray; zoom:80%;">

3. Notifications can be managed for the following:  
    <img src="../images/notification-preference.png" alt="Notification Preferences" title="Notification Preferences" style="border: 1px solid gray; zoom:70%;">

    !!! Notes

        1. The error prompt sound notifications apply only to console runtime errors and not validation errors on the configuration page.
        2. Web notification option is available for New Message from Customer, Message from manager, SLA Breach, Transfer Request, and New Conversation.

4. Click the name on the right corner to change the sound for a notification type.  
    <img src="../images/notification-name.png" alt="Notification Name" title="Notification Name" style="border: 1px solid gray; zoom:60%;">

### Repeat Notifications

Repeated notifications for incoming interactions at configurable intervals can be enabled to ensure prompt attention to incoming conversations and transfers. This helps to:  

* Minimize missed interactions.  
* Improve response times.  
* Enhance overall customer satisfaction and SLA compliance.  

#### Enable Repeat Notifications

Steps to enable repeat notifications for incoming interactions:

1. Click the **Repeat** icon beside Incoming Interactions to enable it.    
    <img src="../images/enable-repeat-notification.png" alt="Enable Repeat Tone" title="Enable Repeat Tone" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        The repeat functionality is not enabled by default.

2. The default timer is set to 5 seconds. Select the duration from the dropdown.  
<img src="../images/duration-dropdown.png" alt="Duration" title="Duration" style="border: 1px solid gray; zoom:80%;">

3. Click **Save** to update the notification settings.

#### Incoming Call Notification From Speaker When Headphones Are Connected

Agents can receive incoming calls and interaction notification sounds through their system speakers or monitor, even when a headset is connected. The conversation audio continues through the headset or default system audio device, ensuring clear separation between alert sounds and ongoing communication.

This option appears only when the ‘Incoming Interactions’ permission is enabled. Learn more.

It affects notifications for voice calls, consult calls, chats, and other events under the Incoming Interactions category.

When enabled, the notification sound plays on both the system speaker and the headset.  
<img src="../images/notification-enabled.png" alt="Enabled Notification" title="Enabled Notification" style="border: 1px solid gray; zoom:70%;">

When disabled (default), the sound follows the default audio route (usually the headset).  
<img src="../images/disabled-default.png" alt="Disbaled Notification" title="Disabled Notification" style="border: 1px solid gray; zoom:70%;">

Users can customize this setting based on their preference for alert audibility.

## User Diagnostics

User diagnostics systematically assesses and analyzes network connectivity and device permissions to identify issues, optimize service delivery, and enhance user satisfaction. Using real-time monitoring, this tool helps resolve problems efficiently, improving agent performance, and ensuring a seamless customer experience.

The User Diagnostics (♡) icon is at the top right corner of the Agent Console.  
<img src="../images/user-diagnostics-icon.png" alt="User Diagnostics Icon" title="User Diagnostics Icon" style="border: 1px solid gray; zoom:80%;">

When an agent logs in to the Agent Console, the browser asks for microphone and speaker permissions. If the permissions are granted, the user diagnostics icon will appear green. Hovering over the icon displays “Device connections are active”.  
<img src="../images/device-permissions-active.png" alt="Device Permissions Active" title="Device Permissions Active" style="border: 1px solid gray; zoom:100%;">

If device permissions are denied, the user diagnostics icon will appear orange. A pop-up appears, prompting you to enable the settings.  
<img src="../images/permissions-popup.png" alt="Permissions Pop-up" title="Permissions Pop-up" style="border: 1px solid gray; zoom:100%;">

Hovering over the icon displays “Device permissions are missing”.  
<img src="../images/device-permissions-missing.png" alt="Device Permissions Missing" title="Device Permissions Missing" style="border: 1px solid gray; zoom:100%;">

Click the **Set Permissions** button to configure the device permissions.  
<img src="../images/device-permissions-page.png" alt="Device Permissions Page" title="Device Permissions Page" style="border: 1px solid gray; zoom:100%;">

### Agent Diagnostics

Clicking the User Diagnostics (♡) icon displays the Agent Diagnostics page. There are three sections on the agent diagnostics page:

1. Audio Device,
2. Video Device,
3. Connectivity.

**Audio Device**: You can check your microphone and speaker by recording and playing an audio clip.

Steps to check your audio device:

1. Select the **Speaker** and **Microphone** from the dropdowns on the **Audio Device** tab.  
<img src="../images/audio-device-selection.png" alt="Audio Device Selection" title="Audio Device Selection" style="border: 1px solid gray; zoom:90%;">

2. Click **Start Recording** to record the audio.  
<img src="../images/start-recording.png" alt="Audio Device Selection" title="Audio Device Selection" style="border: 1px solid gray; zoom:90%;">

3. You can record up to 12 minutes of audio. Click **Stop Recording** to stop the recording.  
<img src="../images/stop-recording.png" alt="Audio Device Selection" title="Audio Device Selection" style="border: 1px solid gray; zoom:90%;">

4. Click **Play**.  
<img src="../images/play-button.png" alt="Audio Device Selection" title="Audio Device Selection" style="border: 1px solid gray; zoom:90%;">

    A confirmation message is displayed if no issues are detected with the audio device.  

    <img src="../images/no-issues-detected.png" alt="Audio Device Selection" title="Audio Device Selection" style="border: 1px solid gray; zoom:90%;">

    !!! Note

        If you cannot hear the audio, check the volume, try a different speaker or microphone, or check your Bluetooth settings.

**Video Device**: You can check your camera by seeing if your video is visible.

Steps to check your video device:

1. Select the **Camera** from the dropdown on the **Video Device** tab.  
<img src="../images/camera-selection.png" alt="Camera Selection" title="Camera Selection" style="border: 1px solid gray; zoom:90%;">

2. Check if your video is visible. If yes, there are no issues with your video device/camera.  
<img src="../images/video-check.png" alt="Video Check" title="Video Check" style="border: 1px solid gray; zoom:90%;">

    !!! Note

        If you don't see your video, select another camera. If the camera is not part of your computer, check your settings to ensure your system recognizes it.

**Connectivity**: You can evaluate the client's network access by checking the connectivity, bandwidth, and server reachability through a loopback connection to our telephony infrastructure.

**Connectivity, Bandwidth, and Server Reachability Tests**: Users can run a connectivity test to verify STUN/TURN results, ensuring their network supports real-time communication. They can also initiate a test call that sends a static audio stream and returns metrics such as jitter, packet loss, and MOS, helping to assess call reachability and audio quality.

Administrators can view detailed test results to diagnose and resolve connectivity or audio issues efficiently.

Steps to perform the connectivity, bandwidth, and server reachability tests:

1. Click **Start Test**.  
    <img src="../images/start-tests.png" alt="Start Test - Connectivity" title="Start Test - Connectivity" style="border: 1px solid gray; zoom:70%;">

    The progress is displayed.  
    <img src="../images/test-progress.png" alt="Test Progress" title="Test Progress" style="border: 1px solid gray; zoom:70%;">

2. Once the test is completed, the detailed test results are displayed. You can copy the result by clicking **Copy Results**.  
    <img src="../images/test-result.png" alt="Test Results" title="Test Results" style="border: 1px solid gray; zoom:70%;">

!!! Note

    This feature is only available when using Kore's Twilio account. It's not supported for SIP trunk setups.

## Connection Handling

If the internet connection is lost, a message appears at the top of the agent console page.  
<img src="../images/connection-lost.png" alt="Connection Lost" title="Connection Lost" style="border: 1px solid gray; zoom:80%;">

The system automatically attempts to reconnect to the network. If it fails after several tries, a message instructs you to reload the page.  
<img src="../images/error-message.png" alt="Error" title="Error" style="border: 1px solid gray; zoom:60%;">

## Features

The three monitoring icons, CSAT, Completed, and Average Response, provide details on the completed tasks, in-progress conversations, response time, and customer feedback.

CSAT (Customer Satisfaction) is triggered under the following conditions:

* In all digital and voice channels, both for user-side and agent-side chat termination:
* Out of Hours of Operation: CSAT is triggered when a conversation occurs outside of the designated hours of operation.
* Queue Max Timeout: CSAT is triggered when a conversation remains unaccepted or unassigned to any subsequent agents due to reaching the maximum queue timeout.  
<img src="../images/csat.png" alt="Features" title="Features" style="border: 1px solid gray; zoom:80%;">

## Agent Status

The Status icon allows agents to show customers whether they are available for the conversation or not.  
<img src="../images/agent-status.png" alt="Agent Status" title="Agent Status" style="border: 1px solid gray; zoom:80%;">

## Agent Profile

The Agent Profile icon is located on the top-right corner of the console.  
<img src="../images/profile-icon.png" alt="Profile Icon" title="Profile Icon" style="border: 1px solid gray; zoom:80%;">

Clicking the profile displays a window that allows an agent to change their login and contact details.  
<img src="../images/profile-details.png" alt="Profile Details" title="Profile Details" style="border: 1px solid gray; zoom:80%;">

Clicking **Logout** allows an agent to exit XO Platform.  
<img src="../images/logout-button.png" alt="Logout Button" title="Logout Button" style="border: 1px solid gray; zoom:80%;">

### App Language

You can choose the language for the Agent desktop application from the following language options:

* English (United States)
* Japanese (Japan)
* Korean (South Korea)

!!! Note

    The language selection does not apply to the XO Platform.

Steps to choose the app language:

1. Click **App Language**.  
<img src="../images/app-language.png" alt="App Language" title="App Language" style="border: 1px solid gray; zoom:80%;">

2. On the App language pop-up window, choose the language.  
<img src="../images/select-language.png" alt="Select Language" title="Select Language" style="border: 1px solid gray; zoom:80%;">

3. Click **Save**.  
<img src="../images/save.png" alt="Save Button" title="Save Button" style="border: 1px solid gray; zoom:80%;">

    The app language is updated and a confirmation is displayed.

## Add Users to Multiple Accounts

You can add all users (Agents/Supervisors/App Owners/App Developers/App Testers) to multiple accounts.

During Sign-in, the user can choose the account and set it as default.

!!! Note

    If the user has multiple accounts, they have the option to mark one as the default.

<img src="../images/default-workspace.png" alt="Default Workspace" title="Default Workspace" style="border: 1px solid gray; zoom:80%;">

After the user has signed in, they can switch between accounts. The system displays the account name on the top right corner.  
<img src="../images/switch-workspace.png" alt="Switch Workspace" title="Switch Workspace" style="border: 1px solid gray; zoom:80%;">

## Adding New Layout

To configure the responses under a new layout for a particular conversation, follow these steps:

1. Go to **Console** > **Manage Layout** > **+ Create New**. A new layout page is displayed with the available widgets on the left-side panel.  
<img src="../images/create-new-layout.png" alt="Add New Layout" title="Add New Layout" style="border: 1px solid gray; zoom:80%;">

2. Drag and drop the required widgets to the right side of the layout page.  
<img src="../images/add-widgets.png" alt="Add Widgets" title="Add Widgets" style="border: 1px solid gray; zoom:80%;">

3. Enter a **Layout Name** for the new layout and click **Save**.  
<img src="../images/save-layout.png" alt="Save Layout" title="Save Layout" style="border: 1px solid gray; zoom:80%;">

### Adding Agent AI Widget to a Layout

The below example illustrates the process of adding the Agent AI widget to a layout.  
<img src="../images/adding-agent-ai.gif" alt="Adding Agent AI" title="Adding Agent AI" style="border: 1px solid gray; zoom:80%;">

### Refresh a Widget

The widget level refresh button enables customers to refresh a widget individually, eliminating the need to refresh the entire application, and keeping widgets up-to-date with the latest information.

The refresh button is accessible only when the user is within that specific widget. Clicking this button refreshes the widget with the most recent data.

Users can still refresh widgets by refreshing the entire application.  
<img src="../images/refresh-icon.png" alt="Refresh Widget Icon" title="Refresh Widget Icon" style="border: 1px solid gray; zoom:80%;">

## Chat

The **Chat** feature is used for internal communication between agents and supervisors. It provides real-time help to customers to solve product-related queries. Customers prefer live chat for quick query resolution. With live chat, you can provide customers with a method to contact you when they have questions or problems that they are unable to answer.

Clicking the **Chat** icon opens a new display to view the available agents, search for a particular agent, see chat history, and call the agent.  
<img src="../images/internal-chat.png" alt="Internal Chat" title="Internal Chat" style="border: 1px solid gray; zoom:60%;">

## Help

The purpose of Help is to assist users in understanding and effectively using the interface by providing contextual guidance, instructions, and troubleshooting tips directly within the application.

The Help icon is located in the top right corner.  
<img src="../images/help-icon.png" alt="Help Icon" title="Help Icon" style="border: 1px solid gray; zoom:60%;">

Click the help icon to view the following support options.

* [Introduction to AI for Service](https://platform.kore.ai/builder/app/console)
* [Help & Documentation](https://docs.kore.ai/xo/home/)
* [Community](https://community.kore.ai/)
* [What's New in v11.x.x](./../getting-started/whats-new-in-xo-platform.md)
* [Contact Us](https://support.kore.ai)
* [Academy](https://academy.kore.ai/)
* [Submit a Request](https://kore.canny.io/)
* Report voice issue for current call - When an agent faces any problem related to the agent console, they can report an issue.  
    <img src="../images/support-options.png" alt="Support Options" title="Support Options" style="border: 1px solid gray; zoom:60%;">

### Reporting Issues for Voice Calls

Click **Report voice issue for the current call** to display a pop-up with the following information:

1. Select the category of the issue from the following options, and select the issue from the available options:

    * Audio Clarity
    * Connection Problems
    * Voice Transmission
    * Other Issues (Please specify below)  
        <img src="../images/report-issue-window.png" alt="Report Issue Window" title="Report Issue Window" style="border: 1px solid gray; zoom:70%;">

2. Add a brief description of the issue and upload a screenshot.  
    <img src="../images/description-screenshot.png" alt="Description and Screenshot" title="Description and Screenshot" style="border: 1px solid gray; zoom:70%;">

3. Click **Submit**. A notification appears, and a pop-up is displayed.  
    <img src="../images/report-submitted.png" alt="Confirmation Message" title="Confirmation Message" style="border: 1px solid gray; zoom:70%;">  

    Click **Done** to close the Window or click **Download Logs** to export the logs. The communications team receives a report by mail to analyze the issue.