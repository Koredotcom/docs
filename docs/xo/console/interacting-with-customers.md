# Interacting with Customers

## The Interaction Pane

### Compose Responses

Agents can respond to customers by typing their messages in the compose bar.  
<img src="../images/compose-bar-blank.png" alt="Blank Compose Bar" title="Blank Compose Bar" style="border: 1px solid gray; zoom:80%;">

Agents can type their responses in the compose bar and send the message by clicking the **Send** button on the bottom right corner. Pressing the **Tab** button on your keyboard shifts the focus to the Send button. You can also press **Tab + Enter** to send a message.  
<img src="../images/send-response.png" alt="Send Response" title="Send Response" style="border: 1px solid gray; zoom:80%;">

!!! Note

    You can still press **Enter** to send messages. Pressing (ctrl+enter / shift+enter) on Windows and (ctrl+return / shift+return) on Mac creates a new line.

Agents can send a standard response to the customer from a pre-configured library. Press **/** in the compose bar to display the standard response templates window.  
<img src="../images/standard-response-prompt.png" alt="Standard Response Library" title="Standard Response Library" style="border: 1px solid gray; zoom:80%;">

Pressing **Escape** after typing “**/**” closes the standard response window.

### AI-enhanced Compose Text Box

Using the AI-enhanced compose text box, agents can create customized responses to address customer inquiries, concerns, or issues. They can also add personal touches to their messages to make the communication more human and empathetic.
There are three choices available:  
<img src="../images/ai-options-compose-bar.png" alt="AI Enhanced Options" title="AI Enhanced Options" style="border: 1px solid gray; zoom:80%;">

1. **Make more friendly**: This option rephrases the draft response to make it more friendly and informal.
For example, the formal draft response “Your mortgage appointment has been scheduled for Jun 24, 2023, 1 pm” is rephrased as “Great news! We’ve scheduled your mortgage appointment for Jun 24, 2023, at 1 pm.”
2. **Make more formal**: This option rephrases the draft response to make it more formal. For example, the draft response “Your mortgage appointment has been scheduled for Jun 24, 2023, at 1 pm” is transformed into a more formal response, “We would like to inform you that your mortgage appointment has been scheduled for Jun 24, 2023, at 1:00 pm.”
3. **Expand**: This option expands the draft response. For example, the draft response “Your mortgage appointment has been scheduled for Jun 24, 2023, at 1 pm” is elaborated as “We would like to notify you that your mortgage appointment has been successfully scheduled for June 24, 2023. Please arrive promptly at 1:00 pm for your appointment.”

    This feature can be enabled from [CONFIGURATION > Advanced Settings > Intelligent Agent Tools](https://docs.kore.ai/smartassist/configuration/intelligent-agent-tools-beta/).

### Add/Delete Hyperlinks in the Compose Bar

Agents can add/delete hyperlinks in the compose bar while responding to the messages.

Steps to add/remove hyperlinks:

1. Highlight the text that you want to hyperlink and click the **Add Link** icon.  
<img src="../images/highlight.png" alt="Highlight Text" title="Highlight Text" style="border: 1px solid gray; zoom:80%;">

2. In the **Add Link** dialog box, do the following:
    * Select the **web address** option and enter the URL in the box, for linking a web page.  
    <img src="../images/link-to-web-address.png" alt="Link to Web Address" title="Link to Web Address" style="border: 1px solid gray; zoom:60%;">

    * For linking an email address, select the **Email Address** option and enter the email address in the box.  
    <img src="../images/add-link-email.png" alt="Add Link Email" title="Add Link Email" style="border: 1px solid gray; zoom:60%;">

        !!! Note

            The highlighted text appears in the Text to display field.

3. Click **Ok**. The selected text is hyperlinked.  
<img src="../images/hyperlinked.png" alt="Hyperlinked Text" title="Hyperlinked Text" style="border: 1px solid gray; zoom:80%;">

4. Hover over the hyperlinked text to view the following options:
    * Open
    * Break Link (icon)
    * Edit
5. Press **Enter** to send the message.  
<img src="../images/send-message.png" alt="Send Message" title="Send Message" style="border: 1px solid gray; zoom:80%;">

## Resend Message When Network Disconnects

The following table lists scenarios with expected results in case of a network failure while an agent attempts to send a response.

| **SCENARIO**                             | **RESULT**                                                                                                                      |
|------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| When an agent sends a message            | “Sending” appears on the chat window.                                                                                           |
| If the message is sent successfully      | “Sent” appears on the chat window.                                                                                              |
| If the network is disrupted              | The chat window is disabled. Undelivered messages appear as “Not Delivered” with the Resend icon in the compose bar’s left corner. |
| When the network is restored             | The chat window is enabled.                                                                                                     |
| If the resend icon is clicked            | The message is sent again.                                                                                                      |
| If the conversation is terminated        | The Resend icon does not appear.                                                                                                |
| If the page is refreshed                 | The undelivered messages do not appear.                                                                                         |
## Audio and Video Calls with Customers

Agents can request the customer for an audio or video call during the chat conversation if required. Clicking the **Audio** or **Video Call** icon initiates a call.  
<img src="../images/audio-video-icons.png" alt="Audio and Video Call Icons" title="Audio and Video Call Icons" style="border: 1px solid gray; zoom:70%;">

!!! Note

    The initial interaction and the phone call interaction must be closed separately, with corresponding dispositions.

### Manual Outbound Call

Agents can initiate manual outbound calls from the agent console. Following are the conditions under which agents can or cannot initiate outbound calls. These rules ensure efficient call management while maintaining system routing integrity.

**Rules for Outbound Calls**

1. **Initiating Outbound Calls from Any Status**  
    * Agents can initiate outbound calls from any status within the agent interface.
    * Exceptions:  
        * Agents cannot initiate outbound calls when their status is "System Away" for both Chat and Voice interactions.
        * Agents cannot initiate outbound calls when their status is "System Busy" for voice interactions.
2. **Outbound Calls During Digital Interactions**
    * Agents can initiate an outbound call even when handling digital interactions.
    * If an agent's slots are full and their status is "System Busy," they can still initiate an outbound call.
3. **Inbound Voice Interaction Restriction**
    * Agents cannot initiate an outbound call if they are handling an existing inbound voice call.

**Outbound Calling Button**

* The outbound calling button is disabled:
    * When agents are in a status that does not permit outbound calls (for example, System Away for both Chat and Voice interactions, System Busy for Voice interactions).
    * When agents are handling an inbound voice call.
    * When agents are handling an outbound call.

**Handling Multiple Outbound Calls**

Agents can initiate a secondary outbound voice call only after completing the ongoing call. This approach helps agents manage their workload effectively and provide undivided attention to each customer interaction.

**Status Updates**

When an agent initiates an outbound call, the system automatically changes the agent's status to "System Busy". This automatic status update helps manage agent availability and workload distribution, ensuring efficient call handling and resource allocation.

#### Outbound Dialer

The outbound dialer has the following functionalities:

* Search Bar: The search bar on the dialer interface allows agents to enter keywords or partial numbers to find configured contacts quickly.  
    <img src="../images/dialer-search-bar.png" alt="Search Bar" title="Search Bar" style="border: 1px solid gray; zoom:60%;">

* International Subscriber Dialing (ISD) Code Update: The dialer automatically adjusts the outbound phone number’s ISD code based on the last used country code. This streamlines the process for agents making calls to different regions. For example, if an agent selects India as the country but enters a phone number from the USA, the dialer automatically changes the country to the USA.

* Phone Number Formatting: The system displays the phone number in a standardized format when an agent enters it for dialing, regardless of whether the original number contains hyphens or brackets, as long as the format is valid (for example, 090-1234-5678 or (123) 456-7890).

* Validation and Error Handling: An error message is displayed if an invalid number is entered (for example, incorrect length or characters). The call button is disabled until a valid number is entered, preventing accidental calls to inaccurate numbers.  
    <img src="../images/invalid-phone-number.png" alt="Invalid Phone Number" title="Invalid Phone Number" style="border: 1px solid gray; zoom:70%;">

Agents can make outbound calls to the customers as follows:

1. Click the **+** button on the conversation tray and click Outbound Call. The dial pad is displayed.  
<img src="../images/outbound-call-button.png" alt="Outbound Call Button" title="Outbound call Button" style="border: 1px solid gray; zoom:70%;">

2. Click the Calling from button on the Dialer tab, and select the number for placing the outbound call. Agents can use phone numbers or configured SIP trunks while making outbound calls.  
<img src="../images/sip-and-phone-numbers.png" alt="Calling From Number" title="Calling From Number" style="border: 1px solid gray; zoom:60%;">

3. Agents can dial the outbound calls in two ways:

    1. Enter the phone number with the country code, and the country’s flag will appear automatically on the left. Click the Call button to place the outbound call.  
        <img src="../images/dialer-country-code.png" alt="Call Button" title="Call Button" style="border: 1px solid gray; zoom:60%;">

    2. Enter the phone number without the country code and click the Call button to place the outbound call. The following scenarios are possible:

        1. A user enters “123124”:

            1. By default, no country code is selected, and no country code validation is made. A call is directly placed to this number.

            2. If the user has already dialed a call with a US number, they should be able to change the country code to unknown.

        2. A user pastes “123121”:

            1. Initially, a validation error is displayed if the number does not match the defined format for the default country.

            2. The user can change the country code to unknown and a call is directly dialed to this number.

        3. User pastes/enters “+91987654321”:

            1. The country code is selected as India and the call is dialed.

        4. User pastes “+919876543”:

            1. A validation error is displayed and the call button is disabled.

    !!! Note

        The country code defaults to the last dialed country. If no calls are dialed, the default country code is the US.

## Voicemail

If auto answer mode is enabled in [Agent Settings](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#agent-settings), the transcript and recording appear automatically in the conversation tray of the agent.

If manual mode is enabled, a notification is displayed on the [Next in Queue Notification](../console/managing-incoming-interactions.md#next-in-queue-notifications) panel. The agent must accept the voicemail, although no inbound conversation slots are consumed.  
<img src="../images/next-in-queue-voicemail.png" alt="Next in Queue (Voicemail)" title="Next in Queue (Voicemail)" style="border: 1px solid gray; zoom:50%;">

When the agent accepts the voicemail, the transcript and recording are displayed on the interaction pane. The agent can play, transfer, call (outbound), and download the voicemail from the interaction pane.  
<img src="../images/voicemail-playback.png" alt="Voicemail Playback" title="Voicemail Playback" style="border: 1px solid gray; zoom:80%;">

### Callback Option

You can call the customer as follows:

1. Click the **Call** button on the VOICE MAIL panel.  
<img src="../images/callback button.png" alt="Call Button" title="Call Button" style="border: 1px solid gray; zoom:50%;">

2. The outbound call dialer is displayed. Click the **Call** button to initiate the outbound call.  
<img src="../images/dialpad-call-button.png" alt="Dialpad Call Button" title="Dialpad Call Button" style="border: 1px solid gray; zoom:80%;">

3. The agent can continue the conversation.  
<img src="../images/call-connected.png" alt="Call Connected" title="Call Connected" style="border: 1px solid gray; zoom:80%;">

### Consult Call, Conference Call, and Warm Transfer for Voice Calls

Agents can initiate Consult calls, Conference calls, and Warm Transfer voice calls while interacting with customers. It increases agent efficiency by allowing the initiating agent to share relevant context with the receiving agent before transferring the call. To ensure effective call handling, the receiving agent provides the necessary information, leading to smoother transitions and improved customer outcomes. Additionally, this feature enables seeking expert opinions during customer calls.

#### Consult Call

Selecting an agent from the transfer list activates the consult and subsequent merge to a conference call. Consult functionality will not be available if the conversation is being transferred to a queue.

The agent chosen for consultation must be available and have zero load occupation. If an agent is brought in for consultation, their slots remain occupied throughout the consultation and conference call.

During the consult call, the system automatically places the customer on hold, allowing internal agents to communicate with each other. All calls are recorded if recording is enabled. Calls can be transferred to external agents by pre-saving their phone numbers through an API.

The initiating agent can switch to the original customer call if needed, and vice versa, using the Swap functionality. The initiating agent can merge the two calls, converting them into a conference call.

#### Conference Call

Up to 4 supervisors, and the primary agent, can join the same conference call from the contact center side.  
<img src="../images/conference-participants.png" alt="Conference Participants" title="Conference Participants" style="border: 1px solid gray; zoom:70%;">

If a network disruption occurs, only the affected participant will be disconnected. They can rejoin the conversation seamlessly. Agents and supervisors can manage only one call at a time.  
<img src="../images/rejoin-button.png" alt="Rejoin Button" title="Rejoin Button" style="border: 1px solid gray; zoom:60%;">

When a supervisor joins a call, their slot will be consumed, and their status will change to "system busy" for both chat and voice interactions. All chat transcripts from supervisors will appear in yellow.  
<img src="../images/supervisor conversation.png" alt="Supervisor Conversation" title="Supervisor Conversation" style="border: 1px solid gray; zoom:60%;">

If an agent leaves the call, the supervisor will have complete control of the conversation.

Each participant in the conference call can transfer the conversation or exit the call. Clicking the transfer button will push the conversation to a queue or a target agent, who will receive an incoming request.

The CSAT will be linked to the last agent who handled the conversation. If a user drops off, the primary agent (the longest participant) will complete After Call Work (ACW).

#### Warm Transfer

Following the consult or conference call, the initiating agent can proceed with a warm transfer by clicking the “**Forward**” button.

##### Limitations

<table>
  <tr>
   <td><strong>Category</strong>
   </td>
   <td><strong>Sub-category</strong>
   </td>
   <td><strong>Detail</strong>
   </td>
   <td><strong>Scenario</strong>
   </td>
  </tr>
  <tr>
   <td>Consult Calls
   </td>
   <td>Ongoing consult call
   </td>
   <td>A conference call cannot be initiated during an ongoing consult call.
   </td>
   <td>-
   </td>
  </tr>
  <tr>
   <td>Consult Calls
   </td>
   <td>Post Consult call is merged
   </td>
   <td>A conference call cannot be initiated during an ongoing consult call.
   </td>
   <td>When the agent and user are on call and the agent initiates a consult with the Supervisor:
    a) If the consult is merged, then a conference is not allowed.
<br>
    b) If the Supervisor has dropped from the consult call, then the conference will be allowed.
   </td>
  </tr>
  <tr>
   <td>Consult Calls
   </td>
   <td>Ongoing conference call
   </td>
   <td>Consult calls are restricted during an ongoing conference call.
   </td>
   <td>-
   </td>
  </tr>
  <tr>
   <td>Consult Calls
   </td>
   <td>Post-conference call ends
   </td>
   <td>Consult calls are restricted even if the ongoing conference call ends and the call is only between the user and the agent.<strong> </strong>
   </td>
   <td>When the agent and user are on a call and the supervisor joins from the monitor tab, it gets converted to a conference call. Even if the Supervisor exits, the call will still be considered a Conference.
   </td>
  </tr>
  <tr>
   <td>Call Transfers/Consult
   </td>
   <td>Outbound calls
   </td>
   <td>Call transfers and Consult calls are restricted to Outbound calls.
   </td>
   <td>-
   </td>
  </tr>
  <tr>
   <td>AgentAssist Widget
   </td>
   <td>Ongoing conference/consult
   </td>
   <td>AgentAssist Widget should be hidden during ongoing conference/consult calls.
   </td>
   <td>-
   </td>
  </tr>
</table>

### Call Transfer

Steps to initiate a Call Transfer:

1. Click the **Transfer** button to initiate the transfer.  
<img src="../images/transfer-consult-call.png" alt="Transfer Button" title="Transfer Button" style="border: 1px solid gray; zoom:80%;">

    Recent transfer results are displayed.  
    <img src="../images/transfer-results.png" alt="Recent Transfer Results" title="Recent Transfer Results" style="border: 1px solid gray; zoom:80%;">

2. You can search for an **Agent** or **Queue** to transfer the call.  
<img src="../images/agent-queue-transfer.png" alt="Agent/Queue Transfer" title="Agent/Queue Transfer" style="border: 1px solid gray; zoom:80%;">

### Agent Transfer

* The following options are displayed when an agent is selected:  
<img src="../images/transfer-options.png" alt="Agent Transfer Options" title="Agent Transfer Options" style="border: 1px solid gray; zoom:30%;">

* Click **Transfer** to directly transfer the call to another agent.  
<img src="../images/transfer-agent.png" alt="Agent Transfer" title="Agent Transfer" style="border: 1px solid gray; zoom:50%;">

### Consult Call

* Click **Consult** to initiate a call with another agent while the external call progresses.  
<img src="../images/consult-button.png" alt="Consult Button" title="Consult Button" style="border: 1px solid gray; zoom:30%;">

* A consult call is initiated, and the external call is placed on hold.  
<img src="../images/connecting-consult-call.png" alt="Initiate Consult Call" title="Initiate Consult Call" style="border: 1px solid gray; zoom:80%;">

* The consult call is displayed on the conversation tray of the receiving agent.  
<img src="../images/accept-consult-call.png" alt="Conversation Tray" title="Conversation Tray" style="border: 1px solid gray; zoom:80%;">

* On accepting the call it appears on the Live Interaction pane of the receiving agent.  
<img src="../images/consult-call-connected.png" alt="Consult Call Connected" title="Consult Call Connected" style="border: 1px solid gray; zoom:60%;">

* The initiating agent can continue the conversation with the receiving agent. The following options are available to the initiating agent.  
<img src="../images/customer-on-hold-Consult.png" alt="Agent Options Consult Call" title="Agent Options Consult Call" style="border: 1px solid gray; zoom:50%;">

* Click the **Swap** button to swap between the external and internal (consult) calls. When switching to the external call, the internal call is placed on hold and the recording is paused.  
<img src="../images/swap-button.png" alt="Swap Button" title="Swap Button" style="border: 1px solid gray; zoom:40%;">

### Conference Call

* Click the **Merge** button to initiate a Conference Call with the customer.  
<img src="../images/merge-button.png" alt="Merge Button" title="Merge Button" style="border: 1px solid gray; zoom:50%;">

* The conference call appears on the conversation tray of the receiving agent and a notification is displayed on the top right corner of the agent console.  
<img src="../images/initiate-conference-call.png" alt="Initiate Conference Call" title="Initiate Conference Call" style="border: 1px solid gray; zoom:60%;">

* On accepting the call, the conference call is connected and the agents can no longer interact privately.  
<img src="../images/conference-call-connected.png" alt="Conference Call Connected" title="Conference Call Connected" style="border: 1px solid gray; zoom:60%;">

* A notification is displayed on the top right corner of the console if the customer drops off during a conference call.  
<img src="../images/conference-call-terminated.png" alt="Conference Call Terminated" title="Conference Call Terminated" style="border: 1px solid gray; zoom:60%;">

### Warm Transfer

* Click the **Forward** button to transfer the conversation to another agent.  
<img src="../images/forward-button.png" alt="Forward Button" title="Forward Button" style="border: 1px solid gray; zoom:40%;">

* The initiating agent is disconnected and the conversation appears on the conversation tray of the receiving agent. A notification is displayed on the top right corner of the agent console.  
<img src="../images/initiate-call-forwarding.png" alt="Initiate Call Forwarding" title="Initiate Call Forwarding" style="border: 1px solid gray; zoom:50%;">

* On accepting, the call is transferred to the receiving agent.  
<img src="../images/call-transferred.png" alt="Call Transferred" title="Call Transferred" style="border: 1px solid gray; zoom:70%;">

### Queue Transfer

* The following options are displayed when a queue is selected:  
<img src="../images/queue-transfer-options.png" alt="Queue Transfer Options" title="Queue Transfer Options" style="border: 1px solid gray; zoom:50%;">

* Click **Transfer** to directly transfer the call to another queue.  
<img src="../images/transfer-queue.png" alt="Transfer Queue" title="Transfer Queue" style="border: 1px solid gray; zoom:50%;">

### External Consult and Conference During an Ongoing Interaction

While interacting with a customer, if an agent needs to seek external consultation, they can initiate an outbound call as follows:

1. Click the **Dialpad** icon.  
<img src="../images/dialpad.png" alt="Dialpad" title="Dialpad" style="border: 1px solid gray; zoom:60%;">

2. The **External Consultation Call** window appears. The external call can be dialed in two ways:
    1. **Manual Dialer**:
        1. Click the **Dialer** tab and select the country code from the dropdown.  
        <img src="../images/outbound-dialer.png" alt="Outbound Dialer" title="Outbound Dialer" style="border: 1px solid gray; zoom:50%;">

        2. Enter the phone number using the keypad and click the 🕻 button to initiate an external outbound call.    
        <img src="../images/dial-number.png" alt="Dial Phone Number" title="Dial Phone Number" style="border: 1px solid gray; zoom:80%;">

    2. **Contacts Tab**:
        1. Click the **Contacts** tab, enter the name of the contact in the search bar, and press **enter**.  
        <img src="../images/contacts-tab.png" alt="Contacts Tab" title="Contacts Tab" style="border: 1px solid gray; zoom:70%;">

        2. The search results are displayed. Click the **🕻** button to initiate an external outbound call.  
        <img src="../images/call-button.png" alt="Call Button" title="Call Button" style="border: 1px solid gray; zoom:60%;">

3. The external consult call is connected and the customer is placed on hold. The following options are available with agents during the external consult call:
    1. **Mute** – Mute the conversation.
    2. **Hold** – Place the external consult call on hold.
    3. **Merge** – Merge the external call with the existing inbound call (conference).
    4. **Forward** – Forward the call to another agent.
    5. **Swap** – Swap between the customer and the external call.
    6. **End** – End the external consult call.  
    <img src="../images/consult-call-options.png" alt="Consult Call Options" title="Consult call Options" style="border: 1px solid gray; zoom:60%;">

    The Call History tab contains records of the outbound calls.  
        <img src="../images/call-history-tab.png" alt="Call History Tab" title="Call History Tab" style="border: 1px solid gray; zoom:60%;">

## Chat Co-Browse

During chat interactions, agents can use Co-Browse, a collaboration tool that allows them to browse the customer application and offer real-time assistance. To initiate a co-browse session, agents need to click the Co-Browse icon.  
<img src="../images/chat-cobrowse.png" alt="Chat Co-Browse" title="Chat Co-Browse" style="border: 1px solid gray; zoom:80%;">

## Voice Co-Browse

Agents can initiate a co-browsing session during voice calls.

* Clicking the Co-browser icon initiates a session directly if the agent and customer desktops are connected.  
<img src="../images/voice-cobrowse.png" alt="Voice Co-Browse" title="Voice Co-Browse" style="border: 1px solid gray; zoom:70%;">

    <img src="../images/voice-cobrowse-window.png" alt="Voice Co-Browse Window" title="Voice Co-Browse Window" style="border: 1px solid gray; zoom:80%;">

* To initiate a Co-browse session when the connection between the agent and the customer desktop screen is over the phone:
    1. The agent generates a security code to establish a website-to-website connection.  
    <img src="../images/generate-co-browser-code.png" alt="Generate Co-Browse Code" title="Generate Co-Browse Code" style="border: 1px solid gray; zoom:80%;">

        <img src="../images/security-code.png" alt="Co-Browse Security Code" title="Co-Browse Security Code" style="border: 1px solid gray; zoom:80%;">

    2. Share the security code with the customer.
    3. The customer clicks the Co-browse button. A prompt appears to enter the code shared by the agent during the voice call.  
    <img src="../images/co-browse-page.png" alt="Co-Browse Page" title="Co-Browse Page" style="border: 1px solid gray; zoom:80%;">

    4. After entering the code, the system establishes an end-to-end connection between the agent and the customer desktops to initiate co-browsing.  
    <img src="../images/co-browse-page-chat-window.png" alt="Chat Window in Co-Browse" title="Chat Window in Co-Browse" style="border: 1px solid gray; zoom:80%;">

### Initiate Co-browse on the Console When Connected to an External System

When the agent and user connect through an external system (for example, Genesys) and need to initiate a co-browse session using the Agent console, they can achieve this using this feature.

Steps to initiate co-browse session:

1. Click the **Co-browse** icon on the conversation tray.  
<img src="../images/co-browse-external-system.png" alt="Co-Browse Conversation Tray" title="Co-Browse Conversation Tray" style="border: 1px solid gray; zoom:80%;">

2. A security code is generated. Share the security code with the customer.  
<img src="../images/co-browse-security-code.png" alt="Co-Browse Security Code" title="Co-Browse Security Code" style="border: 1px solid gray; zoom:80%;">

    A co-browse session is initiated.  
        <img src="../images/co-browse-session-initiated.png" alt="Co-Browse Session Initiated" title="Co-Browse Session Initiated" style="border: 1px solid gray; zoom:80%;">

## Sending Emojis

During a conversation, agents can click the **Emoji** icon to react to the conversation.  
<img src="../images/emoji-icon.png" alt="Emoji Button" title="Emoji Button" style="border: 1px solid gray; zoom:80%;">

## Sending Attachments to Customers

During a conversation, agents can click the **Attachments** icon to share attachments with customers.  
<img src="../images/attachment-icon.png" alt="Attachment Button" title="Attachment Button" style="border: 1px solid gray; zoom:80%;">

## Agent Forms for Handling Sensitive Information

Agents can guide customers to fill in data using agent forms. The agent forms option is an additional security layer that helps customers provide information faster while maintaining confidentiality.  
<img src="../images/secure-forms-button.png" alt="Agent Forms Button" title="Agent Forms Button" style="border: 1px solid gray; zoom:80%;">

When a user submits information on an agent form, the agent cannot directly view the submitted information when trying to open the data in their console.
While the form headers are visible, the data is redacted. The information is revealed to the agents when they click the **view** button.

There are two ways to secure the agent form:

1. The entire form is secured by turning on a toggle at [form creation](../contactcenter/configurations/agent-forms/configure-agent-forms.md#create-an-agent-form). In this case, the **view** icon appears to view masked data in the header with the agent form text.
All headers are visible, and only submitted data is masked.  
<img src="../images/agent-form-masked.png" alt="Agent Form Masked" title="Agent Form Masked" style="border: 1px solid gray; zoom:60%;">

2. Only specific fields are masked, retaining the redaction as per the configuration for that field. The data is unmasked when the agent clicks the unmask button.  
<img src="../images/unmask-button.png" alt="Unmask Form" title="Unmask Form" style="border: 1px solid gray; zoom:60%;">

## Snooze

Waiting for customer responses or time spent on information retrieval can result in prolonged conversations and negatively impact agents’ performance metrics like Average Handle Time (AHT). Snooze allows agents to pause the conversation timer and resume it when the agent responds while freeing up slots for additional conversations.

Administrators can configure the snooze functionality from the [Agent Settings](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#snooze).

Steps to snooze a conversation:

1. Click the **Snooze** button at the top of the live interaction window.  

    <img src="../images/snooze-button.png" alt="Snooze Button" title="Snooze Button" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        The snooze function is not available if the conversation is overdue or a reply is due from the agent.

2. On the **Snooze Conversation Until** pop-up window, select the snooze duration from the available options or select a custom snooze duration.  
<img src="../images/snooze-duration.png" alt="Snooze Duration" title="Snooze Duration" style="border: 1px solid gray; zoom:80%;">

3. To select a custom snooze duration, turn on the **Custom Snooze** toggle, configure your required snooze duration, and set the snooze duration.  
<img src="../images/snooze-conversation-till.png" alt="Snooze Conversation Till" title="Snooze Conversation Till" style="border: 1px solid gray; zoom:80%;">

4. Click **Apply**. The snooze duration is set, a message appears on the live interaction pane at the top, and an intimation is sent on the live interaction to the agent.  
<img src="../images/unsnooze-button.png" alt="Unsnooze Button" title="Unsnooze Button" style="border: 1px solid gray; zoom:80%;">

    Hovering over a snoozed conversation in the conversation tray shows the duration for which the conversation is snoozed. It also displays the count of snoozed conversations.  
        <img src="../images/snooze-hover.png" alt="Snooze Hover" title="Snooze Hover" style="border: 1px solid gray; zoom:80%;">

## Emails

Agents can view and respond to emails on the console. The emails appear on the console as follows:

**Threaded email structure**: A threaded email structure features a visible distinction between agent and user emails.  
<img src="../images/threaded-email-structure.png" alt="Threaded Email Structure" title="Threaded Email Structure" style="border: 1px solid gray; zoom:80%;">

**Collapsible email tiles**: This allows agents to minimize or expand email threads as needed, reducing clutter and improving the organization of the email inbox.  
<img src="../images/collapsible-email-tiles.png" alt="Collpsible Email Tiles" title="Collpsible Email Tiles" style="border: 1px solid gray; zoom:80%;">

These settings can be configured from [Agent settings](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#agent-settings).

**Distribution**: You can distribute emails to multiple recipients using CC (Carbon Copy) and BCC (Blind Carbon Copy) fields.  
<img src="../images/cc-and-bcc-email.png" alt="CC and BCC" title="CC and BCC" style="border: 1px solid gray; zoom:80%;">

<img src="../images/email-distribution-list.png" alt="Email Distribution  List" title="Email Distribution List" style="border: 1px solid gray; zoom:80%;">

**Standard Responses**:
You can choose from a library of configured standard responses.

1. Click the **Standard Response** icon at the bottom of the email compose bar. The count of response templates in each category is displayed.  
<img src="../images/standard-response.png" alt="Standard Response Icon" title="Standard Response Icon" style="border: 1px solid gray; zoom:80%;">

2. Click the category to view the standard response templates in that category.  
<img src="../images/standard-response-library.png" alt="Standard Reposnse Tam[plates" title="Standard Response Templates" style="border: 1px solid gray; zoom:80%;">

3. Click the Standard Response from the list to use that response in the email.  
<img src="../images/standard-response-filled.png" alt="Send Standard Repsonse" title="Send Standard Reponse" style="border: 1px solid gray; zoom:80%;">

    **Attachments**: You can attach files and documents to the email to share relevant information or resources with customers. Attachments appear in a list format. If there are more than three attachments, a ‘**View More**’ button is displayed.

    Click the **Attachment** icon to select and upload files.  
        <img src="../images/attachments-compose-bar.png" alt="Attachment Icon" title="Attachment Icon" style="border: 1px solid gray; zoom:80%;">

    **Notes**: You can add notes on the interaction (customer feedback, key points, next action, suggestions). This section includes any previous notes added by agents while interacting with the same customer.

    To add a new note:

    1. Click **Notes**.  
        <img src="../images/notes-icon.png" alt="Notes Icon" title="Notes Icon" style="border: 1px solid gray; zoom:80%;">

    2. Click **+ Add New Note**.  
        <img src="../images/add-new-note.png" alt="Add New Note Button" title="Add New Note Button" style="border: 1px solid gray; zoom:80%;">

    3. Type the message and click **Save**. A confirmation message is displayed, and the note is displayed.  
        <img src="../images/notes-created-confirmation.png" alt="Note Added Confirmation" title="Note Added Confirmation" style="border: 1px solid gray; zoom:80%;">

    4. **Drafts**: If you click the **Close** button on the email editor and there’s content inside, the mail is preserved as a draft. Drafts are accessible at the bottom of the console.  
        <img src="../images/draft.png" alt="Drafts" title="Drafts" style="border: 1px solid gray; zoom:80%;">

### Outbound Email

Outbound email functionality is a key feature within Contact Center AI designed to streamline communication between agents and customers through email channels. It is crucial to reach out to customers proactively and provide personalized interactions based on their needs and preferences. Expanding omnichannel capabilities allows customers to be reached through various channels to address their needs. This allows seamless follow-up after interactions to guarantee satisfaction and provide timely support whenever required.

#### Send Outbound Email

Steps to send an outbound email:

1. Click the **+** button on the top right corner of the conversation tray.  
<img src="../images/button.png" alt="+ Button" title="+ Button" style="border: 1px solid gray; zoom:80%;">

2. Click the **New Mail** button.  
<img src="../images/new-outbound-email.png" alt="New Email Button" title="New Email Button" style="border: 1px solid gray; zoom:80%;">

3. The email panel is displayed, and an email conversation appears on the conversation tray. Enter the recipients' Email addresses, such as john.doe@xyz.com.  
<img src="../images/email-panel.png" alt="Email Panel" title="Email Panel" style="border: 1px solid gray; zoom:80%;">

4. Select a **Queue** from the dropdown.  
<img src="../images/select-queue.png" alt="Select Queue" title="Select Queue" style="border: 1px solid gray; zoom:80%;">

5. Enter the **Subject** and body of the email. The email address appears on the conversation tray and the subject appears as the email thread header.  
<img src="../images/email-body.png" alt="Email Body" title="Email Body" style="border: 1px solid gray; zoom:80%;">

6. You can perform the following actions:

    **Send**:

    * Click the **Send** Button to send the email.  
        <img src="../images/send-button.png" alt="Send Button" title="Send Button" style="border: 1px solid gray; zoom:80%;">

        A confirmation is displayed, and the email is sent.  
            <img src="../images/email-sent-confirmation.png" alt="Email sent Confirmation" title="Email Sent Confirmation" style="border: 1px solid gray; zoom:80%;">

    **Send & Close**:

    Click the down arrow button ”**V**” beside Send and click **Send & Close**.  
        <img src="../images/send-and-close.png" alt="Send & Close Button" title="Send & Close Button" style="border: 1px solid gray; zoom:80%;">

    A confirmation is displayed, and the email is sent. A disposition window appears. Select a disposition and click **Close**.  
        <img src="../images/disposition-sent-mail.png" alt="Disposition Sent Mail" title="Disposition Sent Mail" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        * The send button is activated when all mandatory fields (recipient, subject, queue, and email body) are filled. Sent conversations remain in the agent's conversation tray until closed.

        * Sending an email consumes one slot from the agent's allocation and appears on the Monitor tab.

        * Outbound emails occupy the same slots as any other configured email. Agents can create as many outbound emails as their allocated email slots allow.

    **Draft**:

    Click the **X** on the top right corner of the email editor window.  
        <img src="../images/x-button.png" alt="X-Button" title="X-Button" style="border: 1px solid gray; zoom:80%;">

    The editor window is minimized, and the mail is saved as a draft.  
        <img src="../images/draft-mimized.png" alt="Draft Minimized" title="Draft Minimized" style="border: 1px solid gray; zoom:80%;">

    Drafts are automatically saved and remain accessible in the following scenarios:

    1. After an agent logout and subsequent login.
    2. Network interruptions and subsequent reconnections.
    3. The current email content is saved as a draft if the editor is closed.
    4. Drafts are saved only after the mandatory fields (recipient, subject, queue, and email body) are updated.

    Multiple drafts can be saved for individual email conversations. Each draft is easily identifiable and accessible within its respective email thread.

    **Delete**:

    Click the **Delete** (bin) icon on the bottom left corner of the editor.  
        <img src="../images/delete-button.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:80%;">

    A confirmation message is displayed. Click **Delete**. The email is deleted.  
        <img src="../images/delete-confirmation.png" alt="Delete Confirmation" title="Delete Confirmation" style="border: 1px solid gray; zoom:80%;">

## Color Codes

Color codes help in easy identification and better readability of conversations on digital channels.

* The blue dot represents a conversation in which an agent is engaged.  
<img src="../images/blue-dot.png" alt="Blue Dot" title="Blue Dot" style="border: 1px solid gray; zoom:80%;">

* The red dot represents an overdue conversation.  
<img src="../images/red-dot.png" alt="Red Dot" title="Red Dot" style="border: 1px solid gray; zoom:60%;">

* New email conversations in the conversations tray.  
<img src="../images/new-email.png" alt="New Email Notification" title="New Email Notification" style="border: 1px solid gray; zoom:60%;">

## Add Notes to Interactions

You can add notes on the interaction (customer feedback, key points, next action, suggestions). This section includes any previous notes added by agents while interacting with the same customer.

To add a new note:

1. Click **Notes**.  
<img src="../images/interactions-notes.png" alt="Notes Button" title="Notes Button" style="border: 1px solid gray; zoom:80%;">

2. Click **+ Add New Note**.  
<img src="../images/add-notes.gif" alt="Adding Notes" title="Adding Notes" style="border: 1px solid gray; zoom:80%;">

3. Type the message and click **Save**.

## Modify Skills in Interactions

To modify skills in a live interaction when the Live Interaction option is selected in [Skill Modification](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#skill-modification):

1. Click the **Add Skills** option on the Skills bar.  
<img src="../images/add-skills-button.png" alt="Add Skills Button" title="Add Skills Button" style="border: 1px solid gray; zoom:80%;">

2. Select the necessary skills from the drop-down.  
<img src="../images/skills.png" alt="Select Skills" title="Select Skills" style="border: 1px solid gray; zoom:80%;">

## Transfer Interactions

Contact Center AI allows agents to transfer ongoing conversations to other queues, other agents, or both. The Agent Console displays transfer options according to the [Transfer Destinations](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#transfer-destinations) setting. In the example screenshots below, both queues and agents are enabled for transfers.

**Transfer to Another Queue**

To transfer a conversation to another queue when the [Enforce Skill Match for Transfers](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#enforce-skill-match-for-transfers) setting is enabled:

1. Click **Transfer** at the top of the Conversation space.  
<img src="../images/transfer-button.png" alt="Transfer Button" title="Transfer Button" style="border: 1px solid gray; zoom:80%;">

2. Search for a queue in the search bar on the **Transfer to** window.
3. Select a queue from the dropdown list. Agents with matching skills are displayed for the queue during the transfer.  
<img src="../images/transfer-to.png" alt="Transfer to Window" title="Transfer to Window" style="border: 1px solid gray; zoom:80%;">

4. Click **Transfer**. The conversation gets transferred to the selected queue.  
<img src="../images/conversation-transferred.png" alt="Conversation Transferred" title="Conversation Transferred" style="border: 1px solid gray; zoom:80%;">

!!! Note

    * When transferring an interaction to another queue, you need to consider the following rules:
    * The system verifies the valid hours of operation and displays the online queues.
    * If the skill match option is enabled, the destination queue must have agents with the right skills based on the skill match rules. If there are no agents with the required skills, the conversation will wait for the maximum wait period assigned to the destination queue and then timeout to the no agents available scenario.

To transfer a conversation to another queue when the [Skill Modification](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#skill-modification) setting is enabled:

1. Click **Transfer** at the top of the Conversation space.  
<img src="../images/transfer-interaction.png" alt="Transfer Button" title="Transfer Button" style="border: 1px solid gray; zoom:80%;">

2. Search for a queue in the search bar on the **Transfer to** window. All matching queues are displayed.
3. Select the queue and click **Next**.  
<img src="../images/transfer-to-queue.png" alt="Transfer to Window" title="Transfer to Window" style="border: 1px solid gray; zoom:80%;">

4. You can add or delete skills to the interaction before transferring it to another queue.  
<img src="../images/add-skills.png" alt="Add or Delete Skills" title="Add or Delete Skills" style="border: 1px solid gray; zoom:80%;">

5. Click **Transfer**. The conversation is transferred to the selected queue.  
<img src="../images/conversation-transferred-confirmation.png" alt="Conversation Transferred Confirmation" title="Conversation Transferred Confirmation" style="border: 1px solid gray; zoom:80%;">

**Transfer to Another Agent**

To transfer a conversation to another agent:

1. Click **Transfer** at the top of the Live Interaction pane.  
<img src="../images/transfer-live-interaction.png" alt="Transfer Button" title="Transfer Button" style="border: 1px solid gray; zoom:80%;">

2. Search for an agent in the search bar on the **Transfer to** window.
3. Select an available agent.
4. Click **Transfer**. The conversation gets transferred to the selected agent.  
<img src="../images/transfer-to-agent.png" alt="Transfer to Window" title="Transfer to Window" style="border: 1px solid gray; zoom:80%;">

!!! Note

    If the customer ends the chat before the agent completes the transfer, Contact Center AI will drop the transfer, and the conversation will not be assigned to any queue or agent. Kore WebSdk v1.0 supports this feature only for chat conversations.

**Transfer to External Contacts**

An agent can transfer the call to an external contact during a voice interaction. An administrator must enable this feature in [Agent Settings](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#agent-settings) to allow external transfer of ongoing customer calls. To transfer a conversation to an external contact from the Agent Console, follow these steps:

1. Click **Transfer** at the top of the Conversation space.  
<img src="../images/transfer-live-interaction.png" alt="Transfer Button" title="Transfer Button" style="border: 1px solid gray; zoom:80%;">

2. Search for an external contact in the search bar on the **Transfer to** window.
3. Select an available contact.
4. Click **Transfer**. The conversation gets transferred to the selected contact.  
<img src="../images/transfer-to-external-contact.png" alt="Transfer to External Contact" title="Transfer to Extrenal Contact" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        * The outbound transferred call by the agent will be a blind transfer.
        * For the agent, the call ends like other interactions. 
        * The agent must add a disposition and perform After Call Work (ACW).

## End Interactions

1. To end an interaction session, click the **End** button at the top right of the _Live Interaction_ pane.  
<img src="../images/end-button.png" alt="End Interaction Button" title="End Interaction Button" style="border: 1px solid gray; zoom:80%;">

2. Once clicking _End_, you must **confirm** that you want to end the interaction. Click **Yes** to do so, or otherwise, click **No**.  
<img src="../images/end-interaction-window.png" alt="End Interaction pop-up" title="End Interaction pop-up" style="border: 1px solid gray; zoom:60%;">

    Clicking **_Yes_** ends the session and moves the interaction to _After Call Work_.

### After Call Work (ACW)

If ACW is enabled, then the conversations are managed based on the ACW configuration:

**Immediate Slot Release**

* Slots are freed up, allowing other conversations to be accepted.
* The close button is enabled when all the required disposition codes are selected.
* There is no time restriction for selecting the disposition codes and they are available until the agent manually closes them.  
<img src="../images/immediate-slot-release.png" alt="Immediate Slot Release" title="Immediate Slot Release" style="border: 1px solid gray; zoom:80%;">

**Timed Slot Release**

* Agents can see a countdown timer when the conversation ends, indicating the time left to provide a disposition.
* The slot becomes available if the agent submits a disposition or when the timer elapses.
* Empty disposition fields are filled with a ‘system-generated disposition code’ if no disposition is provided within the allotted time.  
<img src="../images/timed-slot-release.png" alt="Timed Slot Release" title="Timed Slot Release" style="border: 1px solid gray; zoom:80%;">

* When the disposition timer expires, the system displays a message to the agent.  
<img src="../images/time-expired-message.png" alt="Time Expired Message" title="Time Expired Message" style="border: 1px solid gray; zoom:80%;">

* For conversations transferred to another queue, the final queue’s disposition mode is applied to determine the required dispositions.

If ACW is disabled the conversation disappears from the agent console at the end of the conversation, freeing the slots for accepting other conversations. Agents do not receive any disposition sets or summary notes related to these conversations.

### Dispositions

To set the disposition and close the conversation, follow these steps:

* Select the **Conversation** in your tray.
* You must select a **Status** from the following available options:
    * **Resolved**: Select when the customer query is resolved.
    * **Abandoned**: Select if the customer has abandoned the conversation and is no longer responding.
    * **Pending**: Select if the query is still pending resolution.
    * **Custom**: Administrators can [create custom disposition codes ](../contactcenter/agent-and-supervisors/dispositions/manage-dispositions.md#custom-disposition-codes)to address specific business needs. Select according to your use case.
* Optionally, type a **Description** of your reason for selecting the disposition.
* Click **_Close_** to close the conversation.

# Information Provided to Agents and Customers During Live Interactions

You can interact with customers within the **Live Interaction** area of the Agent Console.  
<img src="../images/information-during-live-interaction.png" alt="Information Provided to Agents during Live Interactions" title="Information Provided to Agents during Live Interactions" style="border: 1px solid gray; zoom:80%;">

The **Live Interaction** area provides access to features and information that can be used during live conversations, as follows:

## Arrival Summary

Every conversation begins with an Arrival summary once an agent accepts it.

This section displays the live interaction summary with the following details:

* **Agent Name**: Identifies the agent who is handling the live interaction.
* **SUMMARY**: Conversation Summary leading up to the transfer. In case of multiple transfers, the summary of all transfers is shown.
* **Queue**: Indicates the queue in which the conversation is placed.
* **Wait Time**: This shows the time that the chat has been waiting for an agent to respond.
* **Intent**: Shows the customer’s primary purpose for initiating the live interaction.
* **Sentiment**: Captures the customer sentiments based on their responses.  
<img src="../images/arrival-summary.png" alt="Arrival Summary" title="Arrival Summary" style="border: 1px solid gray; zoom:70%;">

After accepting the conversation, all interactions by the agent are displayed below the arrival summary. If generating the arrival summary takes time, a loading indicator appears until the summary is ready. After an agent transfer, Agent 2 will see the entire summary of the prior conversation, displayed immediately after the last message from Agent 1.

### Refreshing Bot-Customer Interactions

A reload button appears at the top of the conversation transcript when the bot-customer conversation transcript is missing. Clicking Reload displays the missing information.  
<img src="../images/reload-button.png" alt="Arrival Summary" title="Arrival Summary" style="border: 1px solid gray; zoom:60%;">

## Typing Chat Indicator

When the agent types a response during a chat conversation with a customer, the customer’s chat window displays three dots, indicating that the agent is responding to the customer.

Do the following to enable the typing indicator for chat conversations:

1. To integrate Kore.ai bots chat capability into custom applications, install WebSDK 2.0 on your server. WebSDK 2.0 is a set of libraries that offer a quick and convenient way to do this. Refer to the [installation instructions](https://github.com/Koredotcom/web-kore-sdk/tree/v2/9.3.11) for additional information on installing WebSDK 2.0.
2. To receive read receipts, and typing indicators, install the AgentDesktop plugin in WebSDK 2.0. The Agent Desktop plugin allows the user to interact with the agent through the bot and supports the following features:
    * Audio Calling
    * Video Calling
    * Co-browse
    * Screen Sharing

    Refer to the[ installation instructions](https://github.com/Koredotcom/web-kore-sdk/tree/v2/9.3.11/docs/plugins/agent-desktop) for additional information on installing the plugin.

## Stacked Messages, Timestamp, and Read Status

* Any message sent by an agent will display along with a date and timestamp.
* If the customer does not respond to the first message sent by an agent, the message displays a timestamp, and the following messages  will not show a timestamp until the clock minute changes. For example, If an agent sends a message at 11:30:24, the second message at 11:30:36, the third message at 11:30:45, and the fourth message at 11:31:08, then the first three messages will be stacked under one timestamp, and the fourth message will have a different timestamp.
* If the customer responds in the same minute, the response will display with the date and timestamp. The responses from the customer will only show a timestamp once the clock minute changes.
* Agents can see the read status on the last message sent. If the messages are stacked, the read status will appear only against the most recent one.  
<img src="../images/stacked-messages.png" alt="Stacked Messages, Timestamp, and Read Status" title="Stacked Messages, Timestamp, and Read Status" style="border: 1px solid gray; zoom:80%;">

# Behavior When Login Prep Status is Enabled

A message appears on the console for the duration configured on the [Agent Status](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#agent-status-management) page. This status allows an agent to prepare themselves before they start receiving interactions.  
<img src="../images/login-prep-status.png" alt="Login Prep Status Enabled" title="Login Prep Status Enabled" style="border: 1px solid gray; zoom:80%;">

<img src="../images/login-prep.png" alt="Login Prep Status" title="Login Prep Status" style="border: 1px solid gray; zoom:80%;">

At the end of the Login Preparation time slot, the system automatically marks the agent as ‘Away,’ and a pop-up message appears with the following content:  
<img src="../images/marked-as-away.png" alt="Marked as Away" title="Marked as Away" style="border: 1px solid gray; zoom:60%;">

Agents can choose the following options:

**Mark as Available** – Clicking this button changes an agent’s status to Available.

**Keep Away Status** – Clicking this button keeps the status as Away. If agents click Keep Away Status, they remain in the ‘Away’ state with a notification displayed for the ‘Away’ status. Agents can mark themselves as ‘Available’ when they are ready to receive conversations.

# Behavior During Active Interactions

## If Auto-Answer Is Enabled, Transfer and End are Disabled Until the First Agent Response

If the Auto Answer mode is enabled in [Agent Settings](../contactcenter/agent-and-supervisors/agent-management/agent-management.md#voice), the Transfer/End buttons do not display on the Live Interaction pane until the assigned agent sends the first message.

Below is what the Agent Console looks like **before the first message** from the agent:  
<img src="../images/before-first-message-from-agent.png" alt="Before First Message From Agent" title="Marked as Away" style="border: 1px solid gray; zoom:80%;">

Below is what the Agent Console looks like **after the first message** from the agent:  
<img src="../images/after-first-message-from-agent.png" alt="After First Message From Agent" title="After First Message From Agent" style="border: 1px solid gray; zoom:80%;">

## Behavior When an Agent Changes Their Status

A warning message displays if an agent changes their status to **_Away_** or a custom status tagged to _Away_ during an active interaction.  
<img src="../images/set-status-to-away.png" alt="Set Status to Away" title="Set Status to Away" style="border: 1px solid gray; zoom:50%;">

## Behavior When an Agent Tries Logging Out

Contact Center AI does not permit agents to log out during an ongoing conversation.

If an agent tries to log out during an ongoing conversation, Contact Center AI prevents the agent from logging out without transferring or closing the conversation. A pop-up window is displayed along with the following message:

If an agent logs out suddenly (the browser is closed or the system crashes, for example), then the counter for Agent inactivity starts and after the threshold, any active conversations are assigned back to the Queue.  
<img src="../images/logout-restricted.png" alt="Logout Restricted" title="Logout Restricted" style="border: 1px solid gray; zoom:50%;">

## Behavior When an Agent Does Not Accept/Send a Response Within a Specified Time

If an agent does not accept/send a response within a specified time, the system automatically changes the status to **Away (Idle)**.
This status is not available for selection by an agent.  
<img src="../images/away-idle.png" alt="Away (Idle)" title="Away (Idle)" style="border: 1px solid gray; zoom:80%;">

## Behavior When No Agents are Available

If no agents are logged in, conversations will wait in the queue till the maximum wait time specified for the queue.
After the queue max timeout occurs, the "[no agents available](../contactcenter/flows-and-routing/conditional-flows.md#no-agents-available-flow)" flow is triggered. This is enabled at the account level for new accounts and applies to all channels.
For existing accounts, the existing routing logic is applicable. For accounts wanting to modify their routing logic, contact Kore Support.

## CSAT Survey

The CSAT (Customer Satisfaction) survey is essential for contact centers because it provides valuable feedback on customer satisfaction levels, enabling continuous improvement of service quality.

CSAT surveys can be triggered based on the scenarios configured by administrators/supervisors while [Creating a Survey](../contactcenter/configurations/surveys/configure-surveys.md#create-a-survey):

* **Show to Everyone**: If the “Show to Everyone” scenario is configured while creating the survey, the survey is triggered automatically for every interaction that concludes between an agent and a customer on digital or voice channels.
* **Show to Every nth User**: If the “Show to nth User” scenario is configured while creating the survey, the survey is triggered automatically for the nth interaction that concludes between an agent and a customer on digital or voice channels. For example: If the frequency is set to 2, then the survey is triggered for every second customer.
* **Agents can trigger**: If the “Agents can trigger” scenario is configured while creating the survey, the survey can be triggered by agents at any point during the interaction as follows:
    * Click the **Send Survey** button on the right corner above the compose bar. The send survey button is highlighted and a survey icon appears on the **End** button at the top right corner of the live interaction pane.  
    <img src="../images/csat-button.png" alt="CSAT Button" title="CSAT Button" style="border: 1px solid gray; zoom:70%;">

    * The survey is triggered to the customer when the agent clicks the End button with the survey selected.

For the above scenarios where the agent actively participates in interactions and the interactions end, the feedback from surveys contributes to their CSAT scores.

CSAT surveys can also be triggered in scenarios when there are no active participants:

* Outside hours of operation
* No Agents Available flow
* Agent/Customer side terminations or system terminations due to user inactivity
* Subflows (No agents flow/Out of hours flow)

For these scenarios, the CSAT scores are assigned to the interaction.
