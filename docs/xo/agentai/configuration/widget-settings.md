# Customizing the AgentAssist Widget

The AgentAssist Settings page allows users to set the AgentAssist widget’s appearance. On this page, users can decide what features they want on the widget, how the widget’s search functionality should work, channel specific settings, the landing page, and the URL opening behavior.

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
* **Send Button**: This widget lets you control the accessibility of the Send button functionality for AgentAssist responses. By default, this widget is enabled for Voice and Chat channels only.
* **Copy Button**: This widget lets you control the accessibility of the Copy button functionality for AgentAssist responses. By default, this widget is enabled for all three channels.
* **Auto Summarization**: This widget lets you automatically generate a summary of the conversation when it ends. Agents can copy the summary and save it into the Notes or Remark field while closing the conversation. By default, this widget is enabled for Voice and Chat channels only, and it also has the option to select the Submit button.
* **Widget Landing Tab**: This widget allows you to select the default landing page for your selected channel and is available for all three channels. Note that the Transcription option appears here for selection only when the Transcript Tab widget is enabled.

### Steps to set channel specific preferences

1. Sign in to XO Platform.
2. Go to **CONFIGURATION **>** SYSTEM SETUP **>** Widget Settings**.
3. Click to expand the **AgentAssist Channel Specific Settings** section on the **AgentAssist Settings** page.
4. Select a **channel** in the **Select channel** list.
5. Click the **toggle** against **AgentAssist Channel Specific Settings** to enable it (if **Disabled**).
6. Turn the toggle **on** or **off** against each widget, as required.
7. Select or clear the **Submit** button under the **Auto Summarization** section.
8. Select an option from the list against the **Widget Landing Tab** section.
9. Click **Save** to save your settings.

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

### **AgentAssist General Settings**

This section lets you set up the general features of the AgentAssist widget. Here, you can turn on or off the event-not-found event trigger and control the URL opening behavior.

* **URL opening behavior**: Here, you can customize the behavior for URL opening in the AgentAssist widget for desktop applications. The following options are available:
    * **Default System Behavior**: The AgentAssist widget uses the system’s default approach for URL opening – the link/page opens in a new window.
    * **Post Event**: When a URL is clicked within the AgentAssist widget, it initiates an event named “AgentAssist.UrlClickedMessage.” This event enables the desktop application to manage the URL’s opening behavior, as defined in the agreement between AgentAssist and the agent desktop application. The following screenshot depicts the actions in the widget when you click a URL:

    <img src="../widget-settings-images/post-event-url-opening-behavior-3.png" alt="post-event-url-opening-behavior" title="post-event-url-opening-behavior" style="border: 1px solid gray; zoom:80%;">
    
    As in the above image, when you click a link in the widget the AgentAssist.UrlClickedMessage event is triggered and a log opens on the right showing the URL. Desktop applications can take this URL and customize its opening behavior.

* **Honor Bot Event – Intent not found**: Here, you can turn on or off the Honor Bot Event – Intent not found toggle. When turned on, the configured intent-not-found event triggers if AgentAssist doesn’t understand the user’s intent.

### Steps to set AgentAssist General Settings

1. Go to **CONFIGURATION **>** SYSTEM SETUP **>** Widget Settings**.
2. Click to expand the **AgentAssist General Settings** section.
3. Enable or Disable the **Honor Bot Event - Intent not found** toggle, as required.
4. Select **Default System Behavior** or **Post Event** under the **URL opening behavior** section.
5. Click **Save** to save your settings.

   <img src="../widget-settings-images/agentassist-general-settings-page-4.png" alt="agentassist-general-settings-page" title="agentassist-general-settings-page" style="border: 1px solid gray; zoom:80%;">
