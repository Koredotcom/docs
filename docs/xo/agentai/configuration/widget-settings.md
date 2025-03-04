# Customizing the Agent AI Widget

The Agent AI Settings page allows users to set the Agent AI widget’s appearance. On this page, users can decide what features they want on the widget, channel-specific settings, and the URL opening behavior.

The Agent AI Settings page has the following sections:

* Agent AI Channel Specific Settings
* Agent AI General Settings

## Agent AI Channel-Specific Settings

This section lets you set your preferences based on the channels. It has three channels – Chat, Voice, and Email – with a channel-specific default selection of options. The following option toggles are available to select under this section:

* **Proactive Mode**: This widget automates intent identification, entity extraction, and transcripts generation. It lets you have automatic (proactive) transcripts logging and intent suggestions. When enabled, you can also use the “Automatic Dialog Task Entity Extraction” option to automatically extract entities from user messages during a dialog task execution. If disabled, there will not be any automatic intent suggestions or transcripts logging. However, you can still use greetings, search bar, and MyBot automations. By default, this widget is enabled for all three channels.
    * The Assist tab/Run button remains in the disabled state. Only Run with agent’s input will be available.
    * The Playbook feature functions as follows:
        * For Dynamic playbooks, identification through the bulb icon and adherence are not functional, but tick-off and step progression continue to function.
        * For Primary playbooks, the automatic adherence or automatic tick-off does not happen.
        * If the Playbook widget is also disabled, the default landing page is “My Bot”.
* **Agent Coaching**: This widget enables real-time agent coaching based on the analysis of agent utterances and speech. You can set up specific utterances and speech patterns for Agent AI to take relevant actions, such as providing hints and nudges or emailing the manager when those patterns occur. If disabled, you will no longer be able to utilize this feature. To resume real-time coaching, you must enable this feature. By default, it is disabled for all channels and is available for Chat and Voice channels only.
* **Agent Playbook**: This widget provides agents with structured guidance and helps streamline task management. Supervisors can define stages and steps to follow, choose step progression (sequential or random), mark whether the steps are completed manually or automatically, and set adherence notifications. They can leverage this feature to gain valuable insights into agent adherence to specific playbook steps and use this data to enhance agents’ ability to handle interactions and significantly improve customer satisfaction.

    If disabled, the Playbook tab doesn’t appear in the widget, but you have the Assist tab and the welcome messages in the Assist tab. However, if Playbook is enabled, then welcome messages become a part of the Playbooks step, and nothing appears in the Assist tab. By default, this widget is disabled, but you can enable it for all three channels.

* **Auto-Scroll Widget Content**: This widget lets you manage the auto-scroll functionality for the content in the Assist, My Bot, and Transcript tabs. When enabled, the system automatically navigates to the bottom of the respective tab to display the newest content. Admins can enable/disable it through the **Widget Settings** > **Agent AI Settings** > **Agent AI Channel Specific Settings** page, while the Agents can access it in the **Agent AI** widget > **Settings** tab. Between these two users, the Agents can override the Admin’s selection.

* **Send Button**: This widget lets you control the accessibility of the Send button functionality for Agent AI responses. By default, this widget is enabled for Voice and Chat channels only.

* **Copy Button**: This widget lets you control the accessibility of the Copy button functionality for Agent AI responses. By default, this widget is enabled for all three channels.

* **Conversation Transfer**: This widget lets you define and categorize the conversation transfer behavior based on the transfer type and channels. It applies only to the third-party configurations where appropriate transfer events are transmitted.

    * **Cold Transfer**: It is defined as a conversation handover that happens between two agents and is applicable to all three channels – Voice, Chat, and Email. The conversation summary is generated again for the receiving agent, and this summary, along with the feedback options, gets added to Agent-1’s Assist tab. Agent-2 can change the summary feedback for voice and email channels.
    * **Warm Transfer**: It is defined as a conference call between two agents and applies to both Voice and Chat channels. During this process, Agent-2 has the ability to modify the Summary Feedback, but the Run, Override, Send, Copy, Terminate, Restart, and List View buttons remain disabled until Agent-1 disconnects from the call.
    
        Both the Cold Transfer and the Warm Transfer have the following options to choose from:

        * Scroll up to the First Message: The chat history page scrolls up to the top of the page (first message).

        * Continue from the Last Message: The chat history page scrolls down to the bottom of the page (last message).

        * Configure Dialog Task: The user has to select one of the dialog tasks associated with a bot from the list. If a dialogue task of fetching a summary of agent 1 and the customer is selected, agent 2 will see it automatically when the conversation is transferred to them.

* **Transcript Tab**: This widget appears only for the **Voice** channel and lets you control the appearance of the Transcript tab in the Agent AI widget. By default, this widget is enabled.

* **Auto Summarization**: This widget lets you automatically generate a summary of the conversation when it ends. Agents can copy the summary and save it into the **Notes** or **Remark** field while closing the conversation. By default, this widget is enabled for Voice and Chat channels only, and it also has the option to select the **Submit** button.

    Third-party agent desktops can use the **Auto Summarization Model** widget to manage the automatic summarization process. They can select Kore’s default automatic summarization or the “Custom Dialog Task“ option, which lets them select a language-specific dialog task, enabling them to customize the Conversation Summary.

    !!! note
        The summary customization through "Custom Dialog Task" feature works only for third-party agent desktops.

### Steps to set channel specific preferences

1. Sign in to XO Platform.
2. Go to **Agent AI** > **Configuration** > **Widget Settings** > **Agent AI Settings** > **Agent AI Channel Specific Settings**.
3. Click to expand the **Agent AI Channel Specific Settings** section on the **Agent AI Settings** page.
4. Select a **channel** in the **Select channel** list.
5. Click the **toggle** against **Agent AI Channel Specific Settings** to enable it (if disabled).
6. Turn the toggle **on** or **off** against the **Proactive Mode** widget.
    * Select or clear the **Automatic Dialog Task Entity Extraction** option.
7. Turn the toggle **on** or **off** against each widget, as required.
8. Select an option under the **Conversation Transfer** section.
9. Enable or disable the **Auto Summarization** toggle.
10. Select a language for the **Auto Summarization** field. The selected app's language appears by default.
11. Select or clear the **Submit** button under the **Auto Summarization** section.

    Under the **Auto Summarization Model** section, select:

    * **OOTB Kore Summarization**: For Kore’s default auto summarization.

    * **Custom Dialog Task**: To select a language-specific dialog task that is displayed based on the selected language. The Custom Dialog Task field displays a list of dialog tasks or child bots based on bot selection at the app level. At the app level, if you have selected:

        * **Universal Bot**: The backend logic detects it and populates its associated Child Bots. You can expand each Child Bot to view and select its dialog task.

        * **Child Bot/Normal/Singular Bot**: The Dialog Tasks list displays dialogs linked to the selected bot, and you can select any from the displayed list.

        !!! note
            The summary customization through "Custom Dialog Task" feature works only for third-party agent desktops.

12. Click **Save** to save your settings.
   <img src="../widget-settings-images/agentassist-channel-specific-settings-page-1.png" alt="agentassist-channel-specific-settings-page" title="agentassist-channel-specific-settings-page" style="border: 1px solid gray; zoom:80%;">

## Agent AI General Settings

This section lets you set up the general features of the Agent AI widget. Here, you can turn on or off the event-not-found event trigger, control the URL opening behavior.

* **URL opening behavior**: Here, you can customize the behavior for URL opening in the Agent AI widget for desktop applications. The following options are available:
    * **Default System Behavior**: The Agent AI widget uses the system’s default approach for URL opening – the link/page opens in a new window.
    * **Post Event**: When a URL is clicked within the Agent AI widget, it initiates an event named “**AgentAI.UrlClickedMessage**.” This event enables the desktop application to manage the URL’s opening behavior, as defined in the agreement between Agent AI and the agent desktop application. The following screenshot depicts the actions in the widget when you click a URL:  
    <img src="../widget-settings-images/post-event-url-opening-behavior-3.png" alt="post-event-url-opening-behavior" title="post-event-url-opening-behavior" style="border: 1px solid gray; zoom:80%;">

    As in the above image, when you click a link in the widget the **AgentAI.UrlClickedMessage** event is triggered and a log opens on the right showing the URL. Desktop applications can take this URL and customize its opening behavior.

* **Data Format Preference**: You can decide the message text format that you send to the customer through the **Send**/**Copy** fields for the Playbooks and Dialog Tasks in the Agent AI widget. The values to choose from are:
    * **Plain String**: Transmits messages in plain text format.
    * **Original Format**: Transmits messages in HTML tags as received.

* **Help & Support**: This section gives you access to the available documents, FAQs, and the Kore Academy courses. You can select whether or not to display Help & Support, which components to show under it, and the URLs of those components.

* **Honor Bot Event** **– Intent not found**: Here, you can turn on or off the **Honor Bot Event – Intent not found** toggle. When turned on, the configured intent-not-found event triggers if Agent AI doesn’t understand the user’s intent.

* **Default Language for Agent AI Widget**: In this section, you can select a language for the **Agent AI widget**. In runtime, the widget appears in the selected language. Also, you can enable a checkbox that allows agents to change the language in runtime. If this checkbox is disabled, agents can’t change the language.

* **Dialog Task Display Name Configurations**: Here, you can set up the “trait” identification method that helps display appropriate trait-based Dialog Tasks for agents. This method helps display the “child”/sub Dialog Tasks if they are the most accurate match, based on customer interaction. To use the “trait” based Dialog Task display, admins must define a custom script logic in the Agent AI Settings page.

### Steps to set Agent AI General Settings

1. Go to **Agent AI** > **Configuration** > **Widget Settings** > **Agent AI Settings** > **Agent AI General Settings**.
2. Click to expand the **Agent AI General Settings** section.
3. Select **Default System Behavior** or **Post Event** under the **URL opening behavior** section.
4. Select **Plain String** or **Original Format** in the **Data Format Preference** section.
5. **Enable** or **disable** the **Help & Support** toggle.
    1. Click to select any or all of the components (**Documentation**, **FAQ**, and **Kore Academy**).
    2. Click to customize the default URLs of the **Documentation** and/or **FAQ** components.
6. Enable or disable the **Honor Bot Event – Intent not found** toggle.
7. Select a language from the list in the **Default Language for Agent AI Widget** section. Select **Interactive Language**, if you want the app’s language to appear as the widget’s default language.

    1. Select/clear the **Allow agents to switch between multiple available languages** field.
8. Select **Default System Behavior** or **Advanced Mode** in the **Dialog Task Display Name Configurations** field.
    1. If you select **Advanced Mode**, a pop-up box to enter custom scripts appears.
    2. Enter your script, and click **Save**.  
    <img src="../widget-settings-images/custom-script.png" alt="custom-script" title="custom-script" style="border: 1px solid gray; zoom:80%;">
9. Click **Save** to save your settings.  
<img src="../widget-settings-images/agent-ai-general-settings.png" alt="agent-ai-general-settings" title="agent-ai-general-settings" style="border: 1px solid gray; zoom:80%;">

### Auto-corrections for the Search tab

The Auto Correct feature improves typing accuracy in the Search tab by highlighting misspelled words and suggesting corrections. Admins can enable or disable this feature in Widget Settings > Agent AI General Settings > Auto Correct to define the widget landing behavior. They can also select the Use Custom Dictionary option to upload a list of words for auto-corrections and download the uploaded list to customize, as required. During run time, agents can enable or disable the Auto Correct feature in the Settings tab > Auto Correct toggle. Between the admin and the agent, agent’s selection takes precedence.

Steps:

1. Sign in to **Agent AI**.
2. Go to **Widget Settings** > **Agent AI General Settings**.
3. Turn the **Auto Correct** toggle on or off, as required.
4. Select or clear the **Use Custom Dictionary** option.
5. Upload your customized list of words.

    !!! Note

        You can download the present list of words, if already uploaded.
6. Click **Save**.

Agents can enable or disable the Auto Correct toggle by using the following steps:

1. Sign in to the **Agent AI** widget.
2. Go to the **Settings** tab.
3. Enable or disable the **Auto Correct** toggle.