# Kore Voice Gateway

Kore.ai Voice Gateway is a comprehensive voice automation solution that manages inbound call automation for Contact Center AI. It integrates with existing voice systems or uses Kore.ai's native voice processing capabilities, enabling seamless transitions between automated and human interactions within the XO Platform.

## Configure Kore Voice Gateway

You can configure the voice gateway by adding phone numbers, setting up SIP Trunk, and configuring the voice preferences to personalize the Automatic Speech Recognition (ASR) Engine and the voice that plays for your Text-to-Speech (TTS) conversions.

Go to **Automation AI** > **Flows & Channels** > **Channels** > **Kore.ai Voice Gateway**.  
<img src="../images/kore-vg-page.png" alt="Kore Voice Gateway Page" title="Kore Voice Gateway Page" style="border: 1px solid gray; zoom:80%;">

### Phone Numbers

This option helps add, edit, or delete a local or toll-free phone number to which Contact Center AI forwards incoming customer calls at a contact center.

#### Buy New Phone Number

Steps to buy a new phone number:

1. Click the **Phone Numbers** tab and click **Buy New Phone Number**.  
<img src="../images/buy-new-phone-number.png" alt="Buy New Phone Number" title="Buy New Phone Number" style="border: 1px solid gray; zoom:80%;">

2. You can configure a custom local or toll-free number by clicking **Get New Phone Number** on the **Phone Number** window.  
<img src="../images/get-new-phone-number.png" alt="Get New Phone Number" title="Get New Phone Number" style="border: 1px solid gray; zoom:80%;">

    1. Select the Select the **Country**.
    2. Select either the **Local** or **Toll-Free Number** option.
    3. Select the **State**.
    4. Enter the **Area Code**.
    5. After the above fields are configured, Contact Center AI displays the monthly fee and the operational charge per minute.  
        <img src="../images/get-new-phone-number-details.png" alt="Get New Phone Number Details" title="Get New Phone Number Details" style="border: 1px solid gray; zoom:100%;">

3. Configure an available number with the following steps:

    1. Click the **Get Number** button.
    2. On the Forward to Phone Number page, select whether the number will be reserved for Inbound Calls, Outbound Calls, or both, and click **Done**.  
        <img src="../images/forward-to-phone-number.png" alt="Forward To Phone Number" title="Forward To Phone Number" style="border: 1px solid gray; zoom:80%;">
    3. A success confirmation message is displayed, and the phone number is added.
    4. You can now call this number to test your Use Cases.
    5. When ready to go live, forward the calls you receive to this phone number or use this number as your customer support number.

#### Attach Flow

Steps to attach a flow to the phone number:

1. Click **+ Attach Flow**. Hovering over the pie icon displays "**No Flow Attached**".  
    <img src="../images/attach-flow.png" alt="Attach Flow" title="Attach Flow" style="border: 1px solid gray; zoom:80%;">

2. Select a **Start Flow** you want to add to this number and click **Done**. You can add a start flow by clicking **+ New Start Flow**. [Learn more](../../flows/create-flows.md#create-a-start-flow).  
    <img src="../images/add-start-flow.png" alt="Add Start Flow" title="Add Start Flow" style="border: 1px solid gray; zoom:80%;">

3. The attached flow appears. Hovering over the pie icon displays "**Configured**".  
    <img src="../images/voice-flow-attached.png" alt="Voice Flow Configured" title="Voice Flow Configured" style="border: 1px solid gray; zoom:80%;">

#### Edit a Phone Number

Steps to edit a previously added phone number:

1. Click the ellipsis (**︙**) and select **Update**.  
    <img src="../images/update-phone-number.png" alt="Update Phone Number" title="Update Phone Number" style="border: 1px solid gray; zoom:80%;">

2. On the Forward to Phone Number page, click **Change**.  
    <img src="../images/change-button.png" alt="Change Button" title="Change Button" style="border: 1px solid gray; zoom:80%;">

3. Make the necessary edits and click **Done**.
4. A success confirmation message is displayed when the phone number is updated.

#### Delete a Phone Number

Deleting a phone number means stopping all services associated with it. If you remove a phone number and want to add it back later, you may be unable to do so if another user has selected it.

Steps to delete an existing phone number:

1. Click the ellipsis (**︙**) and select **Delete**.  
    <img src="../images/delete-phone-number.png" alt="Delete Phone Number" title="Delete Phone Number" style="border: 1px solid gray; zoom:80%;">

2. The following pop-up is displayed. Click **Delete** to confirm your choice.  
    <img src="../images/delete-confirmation.png" alt="Delete Confirmation" title="Delete Confirmation" style="border: 1px solid gray; zoom:80%;">

3. Alternatively, click **Update**, go to the **Forward to Phone Number** window, and click **Remove**. You will need to confirm your choice.  
    <img src="../images/remove-phone-number.png" alt="Remove Phone Number" title="Remove Phone Number" style="border: 1px solid gray; zoom:80%;">

4. A success confirmation message is displayed once the phone number is deleted.

### SIP Trunk Setup

This option is useful when transferring calls to Contact Center AI from a toll-free or local phone number using Session Initiation Protocol (SIP) in the IVR system.

Under the SIP Trunk tab, you can configure the network IPs and domains, DID number, SIP transport protocol, SIP credentials (optional), and Inbound/Outbound direction for phone numbers while the SIP URI is pre-configured.

Steps to configure SIP Trunk:

1. Click **Configure SIP Trunk**.  
    <img src="../images/sip-numbers.png" alt="Configure SIP Trunk" title="Configure SIP Trunk" style="border: 1px solid gray; zoom:80%;">

2. On the **Configure SIP Trunk** page, configure the following:
    1. **Product Selection**: Select the product for which the SIP Trunk is being configured. You can select from the following options:
        * Contact Center AI
        * Agent AI
    2. **SIP URI**: This is a pre-configured field. A copy button allows you to copy the SIP URIs.
    3. **Network**: To configure the Network, you can select one of the following:
        1. Under **List of IP Address**, type the values for Incoming IP Address in the textbox.  
            <img src="../images/sip-uri.png" alt="SIP Trunk Setup" title="SIP Trunk Setup" style="border: 1px solid gray; zoom:80%;">

        2. Under **Domain Name**, provide the following:
            1. **Fully Qualified Domain Name**: The domain name specifies all domain levels, including the top-level domain and the root zone. [Learn more](../kore.ai-voice-gateway/ips-ports-protocols.md).
            2. **DNS Resolve Method** (Optional): Select an option from the list to translate IP addresses to domain names for resolution when the hostname is associated with multiple IP addresses. You can choose a-record, srv, naptr, or ms-lync.  
                <img src="../images/dns-resolve-method.png" alt="DNS Resolve Method" title="DNS Resolve Method" style="border: 1px solid gray; zoom:80%;">  

        3. Under **MS Teams**, provide a Fully Qualified Domain Name (The domain name that specifies all domain levels, including the top-level domain and the root zone).  
                <img src="../images/ms-teams.png" alt="MS Teams" title="MS Teams" style="border: 1px solid gray; zoom:80%;">

    4. (Optional) The **E.164 Syntax** is selected by default. Selecting this option prepends a + before the DID number.  
        <img src="../images/e-164.png" alt="E-164 Syntax" title="E-164-Syntax" style="border: 1px solid gray; zoom:80%;">
    5. Under **Direct Inward Dialing (DID) number**, you can enable virtual phone numbers (SIP trunk numbers) from which calls will be routed to the existing telephone lines.
    6. **DTMF Type**: (Optional) Select the DTMF type. RC2833 is the default selection.
    7. Select an option from the list for **SIP Transport Type**. This field will set a protocol to route SIP traffic to servers and other endpoints. The available options are _TCP_, _UDF_, and _TLS_.
    8. (Optional) Set the **SIP Credentials** (username and password) to access your SIP trunk setup account.
    9. Under SIP Termination URI, enter the **IP Address**/**Domain Name**.
    10. **Option Ping**: If selected, the system will regularly check whether the IP addresses are accessible. This option is selected by default.  
        <img src="../images/option-ping.png" alt="Option Ping" title="Option Ping" style="border: 1px solid gray; zoom:80%;">
    
    11. Enter the **SIP Headers**. You can include all available agent data in the SIP headers, enabling customers to use only the parameters relevant to their needs. The parameters are listed as key-value pairs:
        * X-AgentName: {{agentName}}
        * X-AgentPhoneNumber: {{agentPhoneNumber}}
        * X-AgentEmailID:  {{agentEmailId}}
        * X-AgentGroup: {{agentGroup}}
        * X-AgentCustomID: {{agentCustomId}}
        * X-AgentNickName: {{agentNickName}}
        * X-QueueName:  {{agentQueue}}
        * X-AgentFirstName: {{agentFirstName}}
        * X-AgentLastName: {{agentLastName}}

    12. Click **Next**.  
        <img src="../images/did-number.png" alt="DID Number" title="DID Number" style="border: 1px solid gray; zoom:80%;">

    13. On the **Forward to Phone Number** window, reserve the phone numbers for **Inbound Calls**, **Outbound Calls**, or both by selecting the appropriate options.
    14. Click **Save**.  
    <img src="../images/reserve-number.png" alt="Reserve Number" title="Reserve Number" style="border: 1px solid gray; zoom:80%;">  

        Please wait for upto ten minutes after saving for the IPs to be whitelisted.  
        <img src="../images/ip-whitelist-message.png" alt="IP Whitelist Note" title="IP Whitelist Note" style="border: 1px solid gray; zoom:80%;">

    15. The selected information appears on the SIP Numbers tab.  
        <img src="../images/sip-numbers-added.png" alt="SIP Numbers Added" title="SIP Numbers Added" style="border: 1px solid gray; zoom:80%;">

### Attach Flow

Steps to attach a flow to the SIP Number:

1. Click **+ Attach Flow**. Hovering over the link icon displays "**No Flow Attached**".  
    <img src="../images/attach-flow-sip.png" alt="Attach FLows SIP" title="Attach Flows SIP" style="border: 1px solid gray; zoom:80%;">

2. Select a **Start Flow** to add to individual numbers and click **Done**. You can add a start flow by clicking **+ New Start Flow**. [Learn more](../../flows/create-flows.md#create-a-start-flow).

3. The attached flows appear. A pie icon appears below the attached flows. Hovering over the pie icon displays "**Configured**".  
    <img src="../images/flow-attached-sip.png" alt="FLows Attached SIP" title="Flows Attached SIP" style="border: 1px solid gray; zoom:80%;">

#### Edit a SIP Number

Steps to edit a previously added SIP number:

1. Click the ellipsis (**︙**) and select **Update**.  
    <img src="../images/update-sip-number.png" alt="Update Button SIP Number" title="Update Button SIP Number" style="border: 1px solid gray; zoom:80%;">

2. Make the necessary changes on the Transfer from IVR page, and click **Next**.  
    <img src="../images/edit-sip-transfer.png" alt="Edit SIP Number" title="Edit Button SIP Number" style="border: 1px solid gray; zoom:80%;">

3. Make the necessary changes on the Forward to Phone Number page, and click **Save**.  
    <img src="../images/edit-forward-to-phone-number-page.png" alt="Edit Forward to Phone Number" title="Edit Forward to Phone Number" style="border: 1px solid gray; zoom:80%;">

4. A success confirmation message is displayed when the phone number is updated.

#### Delete a SIP Number

Deleting a SIP number means stopping all services associated with it.

Steps to delete a SIP number:

1. Click the ellipsis (**︙**) and select **Delete**.  
    <img src="../images/delete-sip-number.png" alt="Delete Button SIP" title="Delete Button SIP" style="border: 1px solid gray; zoom:80%;">

2. The following pop-up is displayed. Click **Delete** to confirm your choice.  
    <img src="../images/delete-confirmation-sip.png" alt="Delete SIP Number" title="Delete SIP Number" style="border: 1px solid gray; zoom:80%;">

3. The sip number is deleted.

## Voice Preferences

You can configure the voice preferences to personalize the ASR Engine and the voice that plays for your TTS conversions by going to the Voice Preferences tab and clicking **Manage**.  
    <img src="../images/voice-preferences.png" alt="Voice Preferences" title="Voice Preferences" style="border: 1px solid gray; zoom:80%;">

Steps to configure Voice Preferences:

1. Select the following on the Voice Preferences window:
    1. Language
    2. Automatic Speech Recognition Engine (ASR)
        1. ASR
            You can choose between
            * Microsoft Azure Speech Services,
            * Google Cloud Speech-to-Text,
            * Amazon Transcribe.
        2. Dialect
        3. Primary ASR Configuration (Advanced Setting)
        4. Fallback ASR Configuration (Advanced Setting)
    3. Text to Speech Engine (TTS)
        1. TTS
            You can choose between
            * Microsoft Azure Speech Services,
            * Google Cloud Text-to-Speech,
            * AWS Amazon Polly,
            * ElevenLabs,
            * Whisper,
            * PlayHT,
            * Deepgram Text-to-speech.
        2. Voice
    4. Voice Preview
        1. Sample Text: Enter Sample Text to preview your voice selection. You can play, navigate through the audio (Back/Forward), and adjust the preview volume. Clicking the More Options (**⋮**) button reveals options to adjust Playback Speed. Click the Play button next to any available voice to preview it. Voices are available for all TTS engines, but each engine has its voice options. Select a different Voice Language if required.
        2. Primary TTS Configuration (Advanced Setting)
        3. Fallback TTS Configuration (Advanced Setting)
2. Click **Done** once you have completed configuring your voice preferences. The set voice, language, and dialect apply to automated customer responses that use text-to-speech.  

    <img src="../images/voice-preferences-configuration.png" alt="Voice Preferences Configuration" title="Voice Preferences Configuration" style="border: 1px solid gray; zoom:80%;">

## List of Supported Dialects

The following dialects are supported:

<table>
  <tr>
   <td>
    English (Australia)
   </td>
   <td>
    English (Nigeria)
   </td>
  </tr>
  <tr>
   <td>
    English (Canada)
   </td>
   <td>
    English (Pakistan)
   </td>
  </tr>
  <tr>
   <td>
    English (Ghana)
   </td>
   <td>
    English (Philippines)
   </td>
  </tr>
  <tr>
   <td>
    English (Hong Kong)
   </td>
   <td>
    English (Singapore)
   </td>
  </tr>
  <tr>
   <td>
    English (India)
   </td>
   <td>
    English (South Africa)
   </td>
  </tr>
  <tr>
   <td>
    English (Ireland)
   </td>
   <td>
    English (Tanzania)
   </td>
  </tr>
  <tr>
   <td>
    English (Kenya)
   </td>
   <td>
    English (United Kingdom)
   </td>
  </tr>
  <tr>
   <td>
    English (New Zealand)
   </td>
   <td>
    English (United States)
   </td>
  </tr>
</table>

### Voice Call Properties

Voice call properties are fundamental aspects that define the quality and reliability of communication over Kore.ai Voice Gateway. These properties include End of Task Behavior, Event Configuration, Call Termination Handler, Call Control Parameters, Timeout Prompt, Barge-in, Timeout, and No. of Retries, which collectively determine the user experience during a voice call. Configuring these properties is crucial for ensuring seamless and effective voice communication over network infrastructures.

You can configure the voice call properties by going to the Voice Preferences tab and clicking **Configure** on the **Voice Call Properties** section.  
    <img src="../images/configure-voice-call-properties.png" alt="Configure Voice Call Properties" title="Configure Voice Call Properties" style="border: 1px solid gray; zoom:80%;">

The Voice Call Properties window is displayed.  
    <img src="../images/voice-call-properties-window.png" alt="Voice Call Properties Window" title="Voice Call Properties Window" style="border: 1px solid gray; zoom:80%;">

#### End of Task Behavior

Define the bot's behavior when reaching the end of a task. You can choose the following actions:

* Trigger End of Task Event
* Terminate Call  
    <img src="../images/end-of-task-behavior.png" alt="End of Task Behavior" title="End of Task Behavior" style="border: 1px solid gray; zoom:80%;">

#### Event Configuration

Define how to proceed when this event is detected. You can choose the following actions:

* **Initiate Task**: Select a task from the dropdown menu to be initiated when the event is detected.  
    <img src="../images/initiate-task.png" alt="Initiate Task" title="Initiate Task" style="border: 1px solid gray; zoom:80%;">

* **Run Script**: Enter the script to be run when the event is detected.  
    <img src="../images/run-script.png" alt="Run Script" title="Run Script" style="border: 1px solid gray; zoom:80%;">

* **Show Message**: Click **+ Add Response**, enter the message to be displayed when the event is detected, and click **Done**.  
    <img src="../images/add-response.png" alt="Add Response" title="Add Response" style="border: 1px solid gray; zoom:80%;">

#### Call Termination Handler

Specify the intent (dialog) to handle the call termination event from the dropdown.  
    <img src="../images/call-termination-handler.png" alt="Call Termination Handler" title="Call Termination Handler" style="border: 1px solid gray; zoom:80%;">

#### Call Control Parameters

Define the parameters to control the call behavior. Click **Add Parameter**, enter the **Parameter Name** and **Value**, and click **Save**. [Learn more](../../channels/kore.ai-voice-gateway/call-control-parameters.md).  
    <img src="../images/add-parameter.png" alt="Add Parameter" title="Add Parameter" style="border: 1px solid gray; zoom:80%;">

#### Timeout Prompt

Define prompt to be played when user input is not received within the time-out period.  
    <img src="../images/timeout-prompt.png" alt="Timeout Prompt" title="Timeout Prompt" style="border: 1px solid gray; zoom:80%;">

#### Barge-in

Define whether user input will be allowed while a prompt is in progress. By default, this option is disabled. [Learn more](../../channels/kore.ai-voice-gateway/common-configuration-scenarios.md#barge-in).  
    <img src="../images/barge-in.png" alt="Barge In" title="Barge In" style="border: 1px solid gray; zoom:80%;">

#### Timeout

Define the maximum wait time to receive user input. The maximum wait time is 60 seconds.  
    <img src="../images/timeout.png" alt="Timeout" title="Timeout" style="border: 1px solid gray; zoom:80%;">

#### No. of Retries

Define the maximum number of retries allowed.  
    <img src="../images/no-of-retries.png" alt="No.of Retries" title="No.of Retries" style="border: 1px solid gray; zoom:80%;">

Click **Save**. A success message is displayed, and the voice call properties are saved.