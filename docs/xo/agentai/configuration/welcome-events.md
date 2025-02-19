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
4. Click **CONFIGURATION** > **Welcome Events**.
5. Click to expand the **Configure On-Connect Dialog Task** section.
6. Click the **toggle** button to enable it (if it’s in **Disabled** status).
7. Select a channel – **Chat**, **Voice**, or **Email**.
8. Select a configured dialog task from the **Select Dialog** list.
9. Select the **Extract intents from On Connect Dialog task** radio button.  
   <div class="admonition note">
   <p class="admonition-title">Note</p>
   <p>When enabled, the system terminates the current dialog and uses the message node's content to identify the Next Best Actions (suggestions) upon encountering it. Ensure the dialog flow contains only one message node, preferably at the end.</p></div> 
10. Click **Save**.  
   <img src="../welcome-events-images/configure-on-connect-dialog-task-1.png" alt="configure-on-connect-dialog-task" title="configure-on-connect-dialog-task" style="border: 1px solid gray; zoom:80%;">

### Configure Greeting Messages

In this section, you can customize greeting messages at the beginning of the conversation. Also, you can add new greeting messages and copy existing greeting messages for agents to use when communicating with customers through the Agent AI widget. You can edit, delete, enable, or disable existing messages.

#### Steps to Configure Greeting Messages

1. Click **CONFIGURATION** > **Welcome Events**.
2. Click to expand the **Configure Greeting Messages** section.
3. Click the **toggle** button to enable it (if it’s in **Disabled** status).
4. Select a channel – **Chat**,**Voice**, or **Email**.
5. Select a language. The app's language appears by default.
6. Click **+ Add Message** > **New Messages** to add a new greeting message.  
   <img src="../welcome-events-images/adding-new-greeting-messages-2.png" alt="adding-new-greeting-messages" title="adding-new-greeting-messages" style="border: 1px solid gray; zoom:80%;"> 
7. Enter the new greeting message in the **Message** box and click **Add**.  
   <img src="../welcome-events-images/configure-and-add-new-greeting-message-3.png" alt="configure-and-add-new-greeting-message" title="configure-and-add-new-greeting-message" style="border: 1px solid gray; zoom:60%;">

      The new greeting message gets added to the list of existing messages.

8. Click **Copy from Chat** to copy existing messages in **Chat**.  
   <div class="admonition note">
   <p class="admonition-title">Note</p>
   <p><b>Copy from Voice</b> appears for the Chat channel and <b>Copy from Chat</b> appears for the Voice channel.</p></div>  

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
