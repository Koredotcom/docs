# Customizing the AgentAssist Widget

The AgentAssist Settings page allows users to set the AgentAssist widget’s appearance. On this page, users can decide what features they want on the widget, how the widget’s search functionality should work, channel specific settings, and the URL opening behavior.

The AgentAssist Settings page has the following sections:

* AgentAssist Channel Specific Settings
* Knowledge AI
* AgentAssist General Settings

## AgentAssist Channel-Specific Settings

This section lets you set your preferences based on the channels. It has three channels – Chat, Voice, and Email – with a channel-specific default selection of options. The following options toggles are available to select under this section:

* **Proactive Mode**: This widget automates intent identification, entity extraction, and transcripts generation. It lets you have automatic(proactive) transcripts logging and intent suggestions. If disabled, there will not be any automatic intent suggestions or transcripts logging. However, you can still use greetings, search bar, and MyBot automations. By default, this widget is enabled for all three channels.
    * The Assist tab/Run button remains in the disabled state. Only Run with agent’s input will be available.
    * The Playbook feature functions as follows:
        * For Dynamic playbooks, identification through the bulb icon and adherence are not functional, but tick-off and step progression continue to function.
        * For Primary playbooks, the automatic adherence or automatic tick-off does not happen.
        * If the Playbook widget is also disabled, the default landing page is “My Bot”.
* **Agent Coaching**: This widget enables real-time agent coaching based on the analysis of agent utterances and speech. You can set up specific utterances and speech patterns for AgentAssist to take relevant actions, such as providing hints and nudges or emailing the manager when those patterns occur. If disabled, you will no longer be able to utilize this feature. To resume real-time coaching, you must enable this feature. By default, it is disabled for all channels and is available for Chat and Voice channels only.
* **Agent Playbook**: This widget provides agents with structured guidance and helps streamline task management. Supervisors can define stages and steps to follow, choose step progression (sequential or random), mark whether the steps are completed manually or automatically, and set adherence notifications. They can leverage this feature to gain valuable insights into agent adherence to specific playbook steps and use this data to enhance agents’ ability to handle interactions and significantly improve customer satisfaction.

    If disabled, the Playbook tab doesn’t appear in the widget, but you have the Assist tab and the welcome messages in the Assist tab. However, if Playbook is enabled, then welcome messages become a part of the Playbooks step, and nothing appears in the Assist tab. By default, this widget is disabled, but you can enable it for all three channels.
    
* **Auto-Scroll Widget Content**: This widget lets you manage the auto-scroll functionality for the content in the **Assist** tab. Admins can enable/disable it through the **Widget Settings** > **AgentAssist Settings** > **AgentAssist Channel Specific Settings** page, while the Agents can access it in the **AgentAssist widget** > **Settings** tab. Between these two users, the Agents can override the Admin’s selection.

* **Send Button**: This widget lets you control the accessibility of the Send button functionality for AgentAssist responses. By default, this widget is enabled for Voice and Chat channels only.

* **Copy Button**: This widget lets you control the accessibility of the Copy button functionality for AgentAssist responses. By default, this widget is enabled for all three channels.

* **Conversation Transfer**: This widget lets you define and categorize the conversation transfer behavior based on the transfer type and channels. It applies only to the third-party configurations where appropriate transfer events are transmitted.

    * **Cold Transfer**: It is defined as a conversation handover that happens between two agents and is applicable to all three channels – Voice, Chat, and Email. The conversation summary is generated again for the receiving agent, and this summary, along with the feedback options, gets added to Agent-1’s Assist tab. Agent-2 can change the summary feedback for voice and email channels.
    * **Warm Transfer**: It is defined as a conference call between two agents and applies to both Voice and Chat channels. During this process, Agent-2 has the ability to modify the Summary Feedback, but the Run, Override, Send, Copy, Terminate, Restart, and List View buttons remain disabled until Agent-1 disconnects from the call.
    
        Both the Cold Transfer and the Warm Transfer have the following options to choose from:

        * Scroll up to the First Message: The chat history page scrolls up to the top of the page (first message).

        * Continue from the Last Message: The chat history page scrolls down to the bottom of the page (last message).

        * Configure Dialog Task: The user has to select one of the dialog tasks associated with a bot from the list. If a dialogue task of fetching a summary of agent 1 and the customer is selected, agent 2 will see it automatically when the conversation is transferred to them.

* **Transcript Tab**: This widget appears only for the **Voice** channel and lets you control the appearance of the Transcript tab in the AgentAssist widget. By default, this widget is enabled.

* **Auto Summarization**: This widget lets you automatically generate a summary of the conversation when it ends. Agents can copy the summary and save it into the **Notes** or **Remark** field while closing the conversation. By default, this widget is enabled for Voice and Chat channels only, and it also has the option to select the **Submit** button.

    Third-party agent desktops can use the **Auto Summarization Model** widget to manage the automatic summarization process. They can select Kore’s default automatic summarization or the “Custom Dialog Task“ option, which lets them select a language-specific dialog task, enabling them to customize the Conversation Summary.

### Steps to set channel specific preferences

1. Sign in to XO Platform.
2. Go to **CONFIGURATION** > **SYSTEM SETUP** > **Widget Settings**.
3. Click to expand the **AgentAssist Channel Specific Settings** section on the **AgentAssist Settings** page.
4. Select a **channel** in the **Select channel** list.
5. Click the **toggle** against **AgentAssist Channel Specific Settings** to enable it (if **Disabled**).
6. Turn the toggle **on** or **off** against each widget, as required.
7. Select an option under the **Conversation Transfer** section.

8. Select or clear the **Submit** button under the **Auto Summarization** section.

    Under the **Auto Summarization Model** section, select:

    * **OOTB Kore Summarization**: For Kore’s default auto summarization.

    * **Custom Dialog Task**: To select a language-specific dialog task that is displayed based on the selected language. The Custom Dialog Task field displays a list of dialog tasks or child bots based on bot selection at the app level. At the app level, if you have selected:

        * **Universal Bot**: The backend logic detects it and populates its associated Child Bots. You can expand each Child Bot to view and select its dialog task.

        * **Child Bot/Normal/Singular Bot**: The Dialog Tasks list displays dialogs linked to the selected bot, and you can select any from the displayed list.

10. Click **Save** to save your settings.
   <img src="../widget-settings-images/agentassist-channel-specific-settings-page-1.png" alt="agentassist-channel-specific-settings-page" title="agentassist-channel-specific-settings-page" style="border: 1px solid gray; zoom:80%;">

## Knowledge AI

This section lets you gain access to the Knowledge AI features within the AgentAssist widget during customer interactions. Here, you can set channel-specific display of Knowledge AI search results. It has the following sub sections:

* **Search Results**: Gives you the control over Knowledge AI search results. Agents can select between Always Show, Show with XO Results, and Show as a Fallback event.
    * **Always Show**: Shows all results of Knowledge AI regardless of bot intents. This is the default selection.
    * **Show with XO Results**: Shows results of Knowledge AI only when relevant bot events such as Dialog Tasks or FAQs are detected.
    * **Show as a Fallback**: Shows results of Knowledge AI as a fallback when no bot events are detected.
* **Show Auto Suggestions**: When On, you can avail auto suggestions in the Ask AgentAssist search bar. Turn it Off if you don’t want to avail auto suggestions. The default selection is On.
* **API Integration**: You can optimize your search experience with the advanced Knowledge AI API configuration. Choose Basic to use the default Knowledge AI configurations or Advanced to configure how you want to use the Knowledge AI. The Advanced option lets you use your own API. The default selection is Basic.

#### **Steps to set channel-specific Knowledge AI**

1. Go to **CONFIGURATION** > **SYSTEM SETUP** > **Widget Settings**.
2. Click to expand **Knowledge AI** on the **AgentAssist Settings** page.
3. Select a **channel** in the **Select channel** list.
4. Click the toggle against **Knowledge Settings** to enable it (if **Disabled**).
5. Select the options under the **Search Results**, **Show Auto Suggestions**, and **API Integration** sections.
6. Click **Save** to save your settings.
   <img src="../widget-settings-images/knowledge-ai-settings-page-2.png" alt="knowledge-ai-settings-page" title="knowledge-ai-settings-page" style="border: 1px solid gray; zoom:80%;">

## **AgentAssist General Settings**

This section lets you set up the general features of the AgentAssist widget. Here, you can turn on or off the event-not-found event trigger and control the URL opening behavior.

* **Honor Bot Event – Intent not found**: Here, you can turn on or off the Honor Bot Event – Intent not found toggle. When turned on, the configured intent-not-found event triggers if AgentAssist doesn’t understand the user’s intent.

* **URL opening behavior**: Here, you can customize the behavior for URL opening in the AgentAssist widget for desktop applications. The following options are available:
    * **Default System Behavior**: The AgentAssist widget uses the system’s default approach for URL opening – the link/page opens in a new window.
    * **Post Event**: When a URL is clicked within the AgentAssist widget, it initiates an event named “AgentAssist.UrlClickedMessage.” This event enables the desktop application to manage the URL’s opening behavior, as defined in the agreement between AgentAssist and the agent desktop application. The following screenshot depicts the actions in the widget when you click a URL:
    <img src="../widget-settings-images/post-event-url-opening-behavior-3.png" alt="post-event-url-opening-behavior" title="post-event-url-opening-behavior" style="border: 1px solid gray; zoom:80%;">
    
    As in the above image, when you click a link in the widget the AgentAssist.UrlClickedMessage event is triggered and a log opens on the right showing the URL. Desktop applications can take this URL and customize its opening behavior.

### Steps to set AgentAssist General Settings

1. Go to **CONFIGURATION** > **SYSTEM SETUP**> **Widget Settings**.
2. Click to expand the **AgentAssist General Settings** section.
3. Enable or Disable the **Honor Bot Event - Intent not found** toggle, as required.
4. Select **Default System Behavior** or **Post Event** under the **URL opening behavior** section.
5. Click **Save** to save your settings.
   <img src="../widget-settings-images/agentassist-general-settings-page-4.png" alt="agentassist-general-settings-page" title="agentassist-general-settings-page" style="border: 1px solid gray; zoom:80%;">
