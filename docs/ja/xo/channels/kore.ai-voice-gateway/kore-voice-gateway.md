# Kore.ai Voice Gateway

Kore.ai Voice Gateway (VG) helps configure how Contact Center AI handles automation for inbound voice calls.

By going to **Automation AI** > **Flows & Channels** > **Channels** > **Kore.ai Voice Gateway**, you can add phone numbers, set up SIP Transfer, and configure the voice preferences to personalize the Automatic Speech Recognition (ASR) Engine and the voice that plays for your Text-to-Speech (TTS) conversions.
<img src="../images/kore-vg-page.png" alt="Kore Voice Gateway Page" title="Kore Voice Gateway Page" style="border: 1px solid gray; zoom:100%;">

## Phone Numbers

This option helps add, edit, or delete a local or toll-free phone number to which Contact Center AI forwards incoming customer calls at a contact center.

### Buy New Phone Number

Steps to buy a new phone number:

1. Click the **Phone Numbers** tab and click **Buy New Phone Number**.
<img src="../images/buy-new-phone-number.png" alt="Buy New Phone Number" title="Buy New Phone Number" style="border: 1px solid gray; zoom:100%;">

2. You can configure a custom local or toll-free number by clicking **Get New Phone Number** on the **Phone Number** window.
<img src="../images/get-new-phone-number.png" alt="Get New Phone Number" title="Get New Phone Number" style="border: 1px solid gray; zoom:100%;">

    1. Select the Select the **Country**.
    2. Select either the **Local** or **Toll-Free Number** option.
    3. Select the **State**.
    4. Enter the **Area Code**.
    5. After the above fields are configured, Contact Center AI displays the monthly fee and the operational charge per minute.
    <img src="../images/get-new-phone-number-details.png" alt="Get New Phone Number Details" title="Get New Phone Number Details" style="border: 1px solid gray; zoom:100%;">

3. Configure an available number with the following steps:

    6. Click the **Get Number** button.
    7. On the Forward to Phone Number page, select whether the number will be reserved for Inbound Calls, Outbound Calls, or both, and click **Done**.
    <img src="../images/forward-to-phone-number.png" alt="Forward To Phone Number" title="Forward To Phone Number" style="border: 1px solid gray; zoom:100%;">
    8. A success confirmation message is displayed, and the phone number is added.
    9. You can now call this number to test your Use Cases.
    10. When ready to go live, forward the calls you receive to this phone number or use this number as your customer support number.

### Attach Flow

Steps to attach a flow to the phone number:

1. Click **+ Attach Flow**. Hovering over the pie icon displays "**No Flow Attached**".
<img src="../images/attach-flow.png" alt="Attach Flow" title="Attach Flow" style="border: 1px solid gray; zoom:100%;">

2. Select a **Start Flow** you want to add to this number and click **Done**. You can add a start flow by clicking **+ New Start Flow**. [Learn more](../../flows/create-flows.md#create-a-start-flow).  
<img src="../images/add-start-flow.png" alt="Add Start Flow" title="Add Start Flow" style="border: 1px solid gray; zoom:100%;">

3. The attached flow appears. Hovering over the pie icon displays "**Configured**".
<img src="../images/voice-flow-attached.png" alt="Voice Flow Configured" title="Voice Flow Configured" style="border: 1px solid gray; zoom:100%;">

### Edit a Phone Number

Steps to edit a previously added phone number:

1. Click the ellipsis (**︙**) and select **Update**.  
<img src="../images/update-phone-number.png" alt="Update Phone Number" title="Update Phone Number" style="border: 1px solid gray; zoom:100%;">

2. On the Forward to Phone Number page, click **Change**.
<img src="../images/change-button.png" alt="Change Button" title="Change Button" style="border: 1px solid gray; zoom:100%;">

3. Make the necessary edits and click **Done**.
4. A success confirmation message is displayed when the phone number is updated.

### Delete a Phone Number

Deleting a phone number means stopping all services associated with it. If you remove a phone number and want to add it back later, you may be unable to do so if another user has selected it.

Steps to delete an existing phone number:

1. Click the ellipsis (**︙**) and select **Delete**.  
<img src="../images/delete-phone-number.png" alt="Delete Phone Number" title="Delete Phone Number" style="border: 1px solid gray; zoom:100%;">

2. The following pop-up is displayed. Click **Delete** to confirm your choice.
<img src="../images/delete-confirmation.png" alt="Delete Confirmation" title="Delete Confirmation" style="border: 1px solid gray; zoom:100%;">

3. Alternatively, click **Update**, go to the **Forward to Phone Number** window, and click **Remove**. You will need to confirm your choice.
<img src="../images/remove-phone-number.png" alt="Remove Phone Number" title="Remove Phone Number" style="border: 1px solid gray; zoom:100%;">

4. A success confirmation message is displayed once the phone number is deleted.

## SIP Numbers

This option is useful when transferring calls to Contact Center AI from a toll-free or local phone number using Session Initiation Protocol (SIP) in the IVR system.

Under the SIP Transfer tab, you can configure the network IPs and domains, DID number, SIP transport protocol, SIP credentials (optional), and Inbound/Outbound direction for phone numbers while the SIP URI is pre-configured.

Steps to configure SIP Transfer:

1. Click **Configure SIP Transfer**.
<img src="../images/configure-sip-transfer.png" alt="Configure SIP Transfer" title="Configure SIP Transfer" style="border: 1px solid gray; zoom:100%;">

2. On the **Transfer from IVR** page, configure the following:
    1. **SIP URI**: This is a pre-configured field.
    2. **Network**: To configure the Network, you can select one of the following:
        1. Under **List of IP Address**, type the values for Incoming IP Address in the textbox.
        <img src="../images/sip-transfer-setup.png" alt="SIP Transfer Setup" title="SIP Transfer Setup" style="border: 1px solid gray; zoom:100%;">

        2. Under **Domain Name**, provide the following:
    3. **Fully Qualified Domain Name**: The domain name specifies all domain levels, including the top-level domain and the root zone.
    4. **DNS Resolve Method** (Optional): Select an option from the list to translate IP addresses to domain names for resolution when the hostname is associated with multiple IP addresses. You can choose A-record, SRV, NAPTR, or MS-SYNC.
    <img src="../images/dns-resolve-method.png" alt="DNS Resolve Method" title="DNS Resolve Method" style="border: 1px solid gray; zoom:100%;">

    5. Under **Direct Inward Dialing (DID) number**, you can enable virtual phone numbers (SIP trunk numbers) from which calls will be routed to the existing telephone lines.
    6. Select an option from the list for **SIP Transport Type**. This field will set a protocol to route SIP traffic to servers and other endpoints. The available options are _TCP_, _UDF_, and _TLS_.
    7. (Optional) Set the **SIP Credentials** (username and password) to access your SIP transfer setup account.
    8. Click **Next**.
    <img src="../images/did-number.png" alt="DID Number" title="DID Number" style="border: 1px solid gray; zoom:100%;">

    9. On the **Forward to Phone Number** window, reserve the phone numbers for **Inbound Calls**, **Outbound Calls**, or both by selecting the appropriate options.
    10. Click **Save**.
    <img src="../images/reserve-number.png" alt="Reserve Number" title="Reserve Number" style="border: 1px solid gray; zoom:100%;">

    11. The selected information appears on the Channels page.
    <img src="../images/sip-numbers-added.png" alt="SIP Numbers Added" title="SIP Numbers Added" style="border: 1px solid gray; zoom:100%;">

### Attach Flow

Steps to attach a flow to the SIP Number:

1. Click **+ Attach Flow**. Hovering over the link icon displays "**No Flow Attached**".
<img src="../images/attach-flow-sip.png" alt="Attach FLows SIP" title="Attach Flows SIP" style="border: 1px solid gray; zoom:100%;">

2. Select a **Start Flow** to add to individual numbers and click **Done**. You can add a start flow by clicking **+ New Start Flow**. [Learn more](../../flows/create-flows.md#create-a-start-flow).

3. The attached flows appear. A pie icon appears below the attached flows. Hovering over the pie icon displays "**Configured**".
<img src="../images/flow-attached-sip.png" alt="FLows Attached SIP" title="Flows Attached SIP" style="border: 1px solid gray; zoom:100%;">

### Edit a SIP Number

Steps to edit a previously added SIP number:

1. Click the ellipsis (**︙**) and select **Update**.  
<img src="../images/update-sip-number.png" alt="Update Button SIP Number" title="Update Button SIP Number" style="border: 1px solid gray; zoom:100%;">

2. Make the necessary changes on the Transfer from IVR page, and click **Next**.
<img src="../images/edit-sip-transfer.png" alt="Edit SIP Number" title="Edit Button SIP Number" style="border: 1px solid gray; zoom:100%;">

3. Make the necessary changes on the Forward to Phone Number page, and click **Save**.
<img src="../images/edit-forward-to-phone-number-page.png" alt="Edit Forward to Phone Number" title="Edit Forward to Phone Number" style="border: 1px solid gray; zoom:100%;">

4. A success confirmation message is displayed when the phone number is updated.

### Delete a SIP Number

Deleting a SIP number means stopping all services associated with it.

Steps to delete a SIP number:

1. Click the ellipsis (**︙**) and select **Delete**.  
<img src="../images/delete-sip-number.png" alt="Delete Button SIP" title="Delete Button SIP" style="border: 1px solid gray; zoom:100%;">

2. The following pop-up is displayed. Click **Delete** to confirm your choice.
<img src="../images/delete-confirmation-sip.png" alt="Delete SIP Number" title="Delete SIP Number" style="border: 1px solid gray; zoom:100%;">

3. The sip number is deleted.

## Voice Preferences

You can configure the voice preferences to personalize the ASR Engine and the voice that plays for your TTS conversions by going to the Voice Preferences tab and clicking **Manage**.
<img src="../images/voice-preferences.png" alt="Voice Preferences" title="Voice Preferences" style="border: 1px solid gray; zoom:100%;">

### Text-to-Speech Engine

Steps to configure the TTS engine:

1. In the Voice Preferences window, select a text-to-speech engine: Google Cloud Text-to-Speech, Microsoft Azure Speech Services, or AWS Amazon Polly.
2. Enter **Sample Text** to preview your voice selection. You can play, navigate through the audio (Back/Forward), and adjust the preview volume. Clicking the More Options (**⋮**) button reveals options to change the **Playback Speed** and **Download** the voice preview.
3. Click the **Play** button next to any available voice to preview it. Voices are available for all TTS engines, but each has its voice options.
4. Select a different Voice Language if required.
<img src="../images/tts-engine.gif" alt="TTS Engine" title="TTS Engine" style="border: 1px solid gray; zoom:100%;">

### Automated Speech Recognition Engine

Steps to configure the ASR Engine:

1. Select an **Automated Speech Recognition Engine**: Google Cloud Speech-to-Text, Microsoft Azure Speech Services, AmiVoice, or NVIDIA Riva.
2. Select the Dialect and click **Done** once you have completed configuring your voice preferences.
<img src="../images/asr-engine.png" alt="ASR Engine" title="ASR Engine" style="border: 1px solid gray; zoom:100%;">

The set voice, language, and dialect apply to automated customer responses that use text-to-speech.

#### List of Supported Dialects

The following dialects are supported:

<table>
  <tr>
   <td>English (Australia)
   </td>
   <td>English (Nigeria)
   </td>
  </tr>
  <tr>
   <td>English (Canada)
   </td>
   <td>English (Pakistan)
   </td>
  </tr>
  <tr>
   <td>English (Ghana)
   </td>
   <td>English (Philippines)
   </td>
  </tr>
  <tr>
   <td>English (Hong Kong)
   </td>
   <td>English (Singapore)
   </td>
  </tr>
  <tr>
   <td>English (India)
   </td>
   <td>English (South Africa)
   </td>
  </tr>
  <tr>
   <td>English (Ireland)
   </td>
   <td>English (Tanzania)
   </td>
  </tr>
  <tr>
   <td>English (Kenya)
   </td>
   <td>English (United Kingdom)
   </td>
  </tr>
  <tr>
   <td>English (New Zealand)
   </td>
   <td>
   </td>
  </tr>
</table>

## Voice Call Properties

Voice call properties are fundamental aspects that define the quality and reliability of communication over Kore.ai Voice Gateway. These properties include End of Task Behavior, Event Configuration, Call Termination Handler, Call Control Parameters, Timeout Prompt, Barge-in, Timeout, and No. of Retries, which collectively determine the user experience during a voice call. Configuring these properties is crucial for ensuring seamless and effective voice communication over network infrastructures.

You can configure the voice call properties by going to the Voice Preferences tab and clicking **Configure** on the **Voice Call Properties** section.
<img src="../images/configure-voice-call-properties.png" alt="Configure Voice Call Properties" title="Configure Voice Call Properties" style="border: 1px solid gray; zoom:100%;">

The Voice Call Properties window is displayed.
<img src="../images/voice-call-properties-window.png" alt="Voice Call Properties Window" title="Voice Call Properties Window" style="border: 1px solid gray; zoom:100%;">

### End of Task Behavior

Define the bot's behavior when reaching the end of a task. You can choose the following actions:

* Trigger End of Task Event
* Terminate Call
<img src="../images/end-of-task-behavior.png" alt="End of Task Behavior" title="End of Task Behavior" style="border: 1px solid gray; zoom:100%;">

### Event Configuration

Define how to proceed when this event is detected. You can choose the following actions:

* **Initiate Task**: Select a task from the dropdown menu to be initiated when the event is detected.
<img src="../images/initiate-task.png" alt="Initiate Task" title="Initiate Task" style="border: 1px solid gray; zoom:100%;">

* **Run Script**: Enter the script to be run when the event is detected.
<img src="../images/run-script.png" alt="Run Script" title="Run Script" style="border: 1px solid gray; zoom:100%;">

* **Show Message**: Click **+ Add Response**, enter the message to be displayed when the event is detected, and click **Done**.
<img src="../images/add-response.png" alt="Add Response" title="Add Response" style="border: 1px solid gray; zoom:100%;">

### Call Termination Handler

Specify the intent (dialog) to handle the call termination event from the dropdown.
<img src="../images/call-termination-handler.png" alt="Call Termination Handler" title="Call Termination Handler" style="border: 1px solid gray; zoom:100%;">

### Call Control Parameters

Define the parameters to control the call behavior. Click **Add Parameter**, enter the **Parameter Name** and **Value**, and click **Save**.
<img src="../images/add-parameter.png" alt="Add Parameter" title="Add Parameter" style="border: 1px solid gray; zoom:100%;">

### Timeout Prompt

Define prompt to be played when user input is not received within the time-out period.
<img src="../images/timeout-prompt.png" alt="Timeout Prompt" title="Timeout Prompt" style="border: 1px solid gray; zoom:100%;">

### Barge-in

Define whether user input will be allowed while a prompt is in progress. By default, this option is disabled.
<img src="../images/barge-in.png" alt="Barge In" title="Barge In" style="border: 1px solid gray; zoom:100%;">

### Timeout

Define the maximum wait time to receive user input. The maximum wait time is 60 seconds.
<img src="../images/timeout.png" alt="Timeout" title="Timeout" style="border: 1px solid gray; zoom:100%;">

### No. of Retries

Define the maximum number of retries allowed.
<img src="../images/no-of-retries.png" alt="No.of Retries" title="No.of Retries" style="border: 1px solid gray; zoom:100%;">

Click **Save**. A success message is displayed, and the voice call properties are saved.