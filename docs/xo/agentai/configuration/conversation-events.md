The Conversation Events section lets you configure events that trigger automatically at the beginning and end of a conversation. Here, you can configure the Welcome and Exit Events. 

* **Welcome Events**: You can configure dialog tasks and greeting messages that automatically trigger when a conversation is assigned to an agent.
* **Exit Events**: You can configure dialog tasks or conversation summary that automatically runs when the end-of-conversation event triggers.

## Welcome Events

Welcome Events are pre-configured messages or prompts that are automatically triggered when a conversation is assigned to an agent in the Agent AI widget. Welcome Events guide agents to handle inquiries effectively by streamlining workflows, lowering their Average Handle Times (AHT), reducing repetition, and contributing to enhanced customer satisfaction.

Managers can configure Welcome Events to provide consistent and relevant information to agents at the start of a conversation. These events can be used for chat, voice, and email interactions.

On the Welcome Events page, you can configure the welcome experience when the Agent AI widget is launched by defining the Welcome Event activities for agents. It has three sections:

* Configure On-Connect Dialog Task
* Configure Greeting Messages
* Priority Settings

### Configure On-Connect Dialog Task

In this section, you can select a pre-configured dialog task and channel and choose to extract intents from the selected dialog task when the Agent AI widget is launched.

#### Steps to Configure the On-Connect Dialog Task

1. Sign in to **XO Platform**.
2. Click **Product Switcher** > **Agent AI**.  
   <img src="../welcome-events-images/select-agent-ai.png" alt="select-agent-ai" title="select-agent-ai" style="border: 1px solid gray; zoom:80%;">
3. Click the **Agent AI** icon from the left menu.
4. Click **CONFIGURATION** > **Conversation Events** > **Welcome Events**.
5. Click to expand the **Configure On-Connect Dialog Task** section.
6. Click the **toggle** button to enable it (if it’s in **Disabled** status).
7. Select a channel – **Chat**, **Voice**, or **Email**.
8. Select a configured dialog task from the **Select Dialog** list.
9. Select the **Extract intents from On Connect Dialog task** radio button. 

    !!! note
        When enabled, the system terminates the current dialog and uses the message node's content to identify the Next Best Actions (suggestions) upon encountering it. Ensure the dialog flow contains only one message node, preferably at the end.  

10. Click **Save**.  
   <img src="../welcome-events-images/conversation-events.png" alt="conversation-events" title="conversation-events" style="border: 1px solid gray; zoom:80%;">

### Configure Greeting Messages

In this section, you can customize greeting messages at the beginning of the conversation. Also, you can add new greeting messages and copy existing greeting messages for agents to use when communicating with customers through the Agent AI widget. You can edit, delete, enable, or disable existing messages.

#### Steps to Configure Greeting Messages

1. Click **CONFIGURATION** > **Conversation events** > **Welcome Events**.
2. Click to expand the **Configure Greeting Messages** section.
3. Click the **toggle** button to enable it (if it’s in **Disabled** status).
4. Select a channel – **Chat**,**Voice**, or **Email**.
5. Select a language. The app's language appears by default.
6. Click **+ Add Message** > **New Messages** to add a new greeting message.  
   <img src="../welcome-events-images/adding-new-greeting-messages-2.png" alt="adding-new-greeting-messages" title="adding-new-greeting-messages" style="border: 1px solid gray; zoom:80%;"> 
7. Enter the new greeting message in the **Message** box and click **Add**.  
   <img src="../welcome-events-images/configure-and-add-new-greeting-message-3.png" alt="configure-and-add-new-greeting-message" title="configure-and-add-new-greeting-message" style="border: 1px solid gray; zoom:60%;">

      The new greeting message gets added to the list of existing messages.

8. Click **+ Add Message** > **Copy from Chat** to copy existing messages in **Chat**. 

    !!! note
        **Copy from Voice** appears for the Chat channel and **Copy from Chat** appears for the Voice channel.  
         
      <img src="../welcome-events-images/copying-from-chat-messages-4.png" alt="copying-from-chat-messages" title="copying-from-chat-messages" style="border: 1px solid gray; zoom:80%;"> 
      
      a. Select the **Welcome Messages** button to select all the existing messages or select individual messages one by one.
      
      b. Click **Confirm**.

      All selected messages appear in the list of existing messages.

9. Click **Display Random Message** to enable all configured messages and randomly display any three on the agent’s screen.  
   <img src="../welcome-events-images/display-random-message-and-select-message-language-5.png" alt="display-random-message-and-select-message-language" title="display-random-message-and-select-message-language" style="border: 1px solid gray; zoom:80%;">  

10. Click the **down-arrow** to change message language.
11. Click the **edit** button against an existing message to modify it.
12. Make the changes and click **Update**.
13. Click the **delete** button against an existing message to delete it. On the **Delete Message** popup, click **Yes**.
14. Click the **enable** or **disable** toggle against a message to enable or disable it.
15. Click **Save**.

### Priority Settings

In this section, you can select what to run first between the dialog tasks and greeting messages.

#### Steps to Set Priority

1. Click **CONFIGURATION** > **Welcome Events**.
2. Click to expand the **Priority Settings** section.
3. Select the radio button **On-Connect Dialog Task** or **Greeting Messages**  
   <img src="../welcome-events-images/priority-settings-6.png" alt="priority-settings" title="priority-settings" style="border: 1px solid gray; zoom:80%;">  
4. Click **Save**.

## Exit Events
Exit Events mark the end of a customer interaction. This section lets you configure a dialog task or a conversation summary to automatically run when the end-of-conversation event triggers.

### Configure End of conversation Dialog Task
In this section, you can select a dialog task to run automatically once the exit event triggers.

#### Steps to configure End of Conversation Dialog Task
1. Sign in to **XO11**.
2. Go to **Agent AI** > **Configurations** > **Conversation Events**.
3. Click **Exit Events**.  
   <img src="../welcome-events-images/exit-events.png" alt="exit-events" title="exit-events" style="border: 1px solid gray; zoom:80%;"> 
4. Select a channel - **Chat**, **Voice**, or **Email**.
5. Click the toggle to enable **Configure End of conversation Dialog Task**. The following confirmation message appears:  
   <img src="../welcome-events-images/enable-end-of-conversation-dialog.png" alt="enable-end-of-conversation-dialog" title="enable-end-of-conversation-dialog" style="border: 1px solid gray; zoom:80%;">  

    !!! note

        For new accounts, the **Conversation Summary** > **OOTB Kore Summarization** is enabled by default.  

6. Click **Yes, Proceed**.
7. Click to expand the **Configure End of conversation Dialog Task** section.
8. Select a dialog task from the **Select Dialog** dropdown list.  
   <img src="../welcome-events-images/end-of-conv-dialog.png" alt="end-of-conv-dialog" title="end-of-conv-dialog" style="border: 1px solid gray; zoom:80%;"> 

9. Click **Save**.

### Conversation Summary
In this section, you can select how to auto generate a conversation summary at the end of a conversation. You can select either the out-of-the-box (OOTB) Kore Summarization or the Custom Dialog Task model to generate the summary.

#### Steps to set Conversation Summary
1. Sign in to **XO11**.
2. Go to **Agent AI** > **Configurations** > **Conversation Events**.
3. Click **Exit Events**.
4. Select a channel - **Chat**, **Voice**, or **Email**.
5. Click the toggle to enable **Conversation Summary**. The following confirmation message appears, if the **Configure End of conversation Dialog Task** option is enabled:  
   <img src="../welcome-events-images/enable-conv-summary.png" alt="enable-conv-summary" title="enable-conv-summary" style="border: 1px solid gray; zoom:80%;">  

6. Click **Yes, Proceed**.
7. Select either **OOTB Kore Summarization** or **Custom Dialog Task**.
    1. If you select **Custom Dialog Task**, select a dialog task from the **Select Dialog** dropdown list:  
    <img src="../welcome-events-images/conv-summ-dialog-selection.png" alt="conv-summ-dialog-selection" title="conv-summ-dialog-selection" style="border: 1px solid gray; zoom:80%;">  

8. Select or clear the **Show Submit button** option.
9. Click **Save**.
 
    !!! note
        Only one option-**Configure End of conversation Dialog Task** or **Conversation Summary**-can be enabled at a time.
