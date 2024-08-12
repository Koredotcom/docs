# Create Flows

A _flow_ is a step-by-step process that helps you define the end-to-end customer experience for each communication channel.

You can create experience flows using the Flow Designer.

## Flow Types

There are two types of Flows:

1. **Start Flows**: Most flows are classified as start flows, applicable to both voice and chat channels.
2. **Exit Flows**: Used when a call disconnects, applicable to both voice and chat channels.

### The Start Flows

Start flows represent the most complex flow type, providing access to all [node types](../flows/node-types/introduction-to-flow-nodes.md). This flow type allows you to create experiences for inbound calls and chats.

!!! Note

    All fields of the default Start Flows can be edited except Channels. [Learn more](#edit-a-start-flow).

### The Exit Flows

This flow type runs when a call gets disconnected and is useful in gathering customer data during post-call analytics, clean-up, or updates in other systems after a call ends. Conversational context can be passed from the main experience flow into the _Exit Flows._

## Create a Start Flow

Steps to create a Start Flow:

1. In the left navigation, go to **Flows & Channels** > **FLOWS**.
2. Click **+ New Start Flow**.
<img src="../images/new-start-flow.png" alt="New Start Flow" title="New Start Flow" style="border: 1px solid gray; zoom:100%;">

3. In the New Start Flow window, provide inputs for the following fields:
    1. **Start Flow Name**: This name will help identify the flow.
    2. **Description**: Input text to describe what the experience flow does or its purpose.
    3. **Attach a Channel**: Select one of the following channels to integrate with this flow:

#### Voice

1. Selecting this option displays the list of phone numbers available within your account. Select a number to map to the start flow.
<img src="../images/voice-channel-phone-number.png" alt="Phone Number" title="Phone Number" style="border: 1px solid gray; zoom:100%;">

2. If you have not added any number to your account, click **Purchase a phone number**.  
<img src="../images/purchase-phone-number.png" alt="Purchase a Phone Number" title="Purchase a Phone Number" style="border: 1px solid gray; zoom:100%;">

    * The _Phone Number_ window is displayed as shown below. You can configure a custom local or toll-free number by clicking **Get New Phone Number**:  
    <img src="../images/get-new-phone-number.png" alt="Get New Phone Number" title="Get New Phone Number" style="border: 1px solid gray; zoom:100%;">

    * Select the **Country**.
    * Select either the **Local** or **Toll-Free Number** option.
    * Select the **State**.
    * Enter the **Area Code**.
    * Once the above fields are configured, the monthly fee and the operational charge per minute are displayed.  
    <img src="../images/area-code.png" alt="Pricing" title="Pricing" style="border: 1px solid gray; zoom:100%;">

3. Configure an available number with the following steps:
    * Click the **Get Number** button.
    * Review the number on the _Forward to Phone Number_ page, select whether the number will be used for Inbound, Outbound Calls, or both, and click **Done**. A success confirmation message is displayed, and the phone number is added.
    <img src="../images/forward-to-phone-number.png" alt="Reserve Phone Number" title="Reserve Phone Number" style="border: 1px solid gray; zoom:100%;">

    * You can now use this number for your Start Flow.

4. Select an **ASR Speech Recognition Engine**. You can choose from the following:
    * Google Cloud Speech-to-Text,
    * Microsoft Azure Speech Services,
    * Nuance,
    * AmiVoice,
    * NVIDIA Riva,
    * Deepgram, or
    * Gnani Speech-to-Text.
    <img src="../images/speech-recognition-engine.png" alt="Speech Recognition Engine" title="Speech Recognition Engine" style="border: 1px solid gray; zoom:100%;">

5. Select an English Dialect. This option is not available for _AmiVoice_.

6. Select a **TTS Speech Recognition**. You can choose from the following:
    * Microsoft Azure Speech Services,
    * Google Cloud Text-to-Speech,
    * AWS Amazon Polly,
    * Nuance,
    * ElevenLabs,
    * Whisper, or
    * NVIDIA RIVA Text-to-Speech  
    <img src="../images/text-to-speech-engine.png" alt="Text to Speech Engine" title="Text to Speech Engine" style="border: 1px solid gray; zoom:100%;">

7. Select a **Language** for text-to-speech, then select a **Voice**.

8. Add text to the **Voice Preview** field. Click **Sample Text**, then click Play to hear a preview of the voice to be implemented into your flow.

9. Select a **Call Disconnect Flow** (Optional): When the call disconnect event is triggered, the published version of the selected flow will be executed. You can either select the default _Call Disconnect Flow_ or one that you have created yourself.
<img src="../images/call-disconnect-flow.png" alt="Call Disconnect Flow" title="Call Disconnect Flow" style="border: 1px solid gray; zoom:100%;">

10. Select a **No Agents Available Flow** (Optional): The published version of the selected flow will be executed when an agent transfer is triggered, but no agents are available, or the conversation exceeds the maximum waiting time in the queue. You can either select the default _No Agents Available Flow_ or one that you have created yourself.
<img src="../images/no-agents-available-flow.png" alt="No Agents Available Flow" title="No Agents Available Flow" style="border: 1px solid gray; zoom:100%;">

11. Select an **Out-of-Hours Flow** (Optional): The published version of the selected flow will be executed when an agent transfer is triggered outside the queue's working hours. You can either select the default _Out-of-Hours Flow_ or one that you have created yourself.
<img src="../images/out-of-hours-flow.png" alt="Out of Hours Flow" title="Out of Hours Flow" style="border: 1px solid gray; zoom:80%;">

    !!! Note

        Only flows that have been published will be available for selection in the dropdowns.


    !!! Note

        Only flows that have been published will be available for selection in the dropdowns.

#### Chat

Selecting chat will display all the chat channels configured in the channels section. The displayed values include:

1. **All**: Selecting it selects the Web/Mobile Client and any other services available within your account for the chat flow.
2. **Web/Mobile Client**: The web client is the front-end component of any conversational AI system or application that communicates with a server and is accessed by the end-user on a desktop or mobile device.  
<img src="../images/chat-channels.png" alt="Chat Channels" title="Chat Channels" style="border: 1px solid gray; zoom:100%;">

3. Under Advanced Settings, you can enable **Prompt Overrides at Input Nodes**. When this feature is enabled, unprocessed user inputs will be passed to the first input node encountered in the flow without returning the actual prompt stored against the input node. This is useful for scenarios where a conversation ends and is then restarted by the user. For example, the user will not see the first “Welcome Message” again, as they would when starting a new conversation. Instead, they will receive a relevant reply to the utterance.
<img src="../images/prompt-overrides-at-input-nodes.png" alt="Prompt Overrides at Input Nodes" title="Prompt Overrides at Input Nodes" style="border: 1px solid gray; zoom:100%;">

4. Select a **No Agents Available Flow** (Optional): The published version of the selected flow will be executed when an agent transfer is triggered, but no agents are available, or the conversation exceeds the maximum waiting time in the queue.
<img src="../images/no-agents-available-flow-chat.png" alt="No Agents available Flow" title="No Agents Available Flow" style="border: 1px solid gray; zoom:100%;">

5. Select an **Out-of-Hours Flow** (Optional): The published version of the selected flow will be executed when an agent transfer is triggered outside the queue's working hours.
<img src="../images/out-of-hours-flow-chat.png" alt="Out of Hours Flow" title="Out of Hours Flow" style="border: 1px solid gray; zoom:100%;">

    !!! Note

        Only flows that have been published will be available for selection in the dropdowns.

6. Click **Update & Continue to Flow Design**, you are taken to the Flow Designer, where you can work on the Flow itself.

## Edit a Start Flow

Steps to edit a start flow:

1. Click the Ellipsis (**⋮**) beside the Description and click **Update**.
<img src="../images/update-start-flow.png" alt="Update Start Flow" title="Update Start Flow" style="border: 1px solid gray; zoom:100%;">

2. Make the changes and click **Update**.
<img src="../images/edit-flow-experience.png" alt="Update Button" title="Update Button" style="border: 1px solid gray; zoom:100%;">

## Delete a Start Flow

Steps to delete a start flow:

1. Click the Ellipsis (**⋮**) beside the Description and click **Delete**.
<img src="../images/delete-start-flow.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:100%;">

2. A confirmation is displayed. Click **Delete**.
<img src="../images/confirm-delete.png" alt="Delete Confirm" title="Delete Confirm" style="border: 1px solid gray; zoom:100%;">

    !!! Note

        You cannot delete default start flows.

## Create an Exit Flow

Steps to create an Exit Flow:

1. In the left navigation, go to **Flows & Channels** > **FLOWS**.
2. Click **+ New Exit Flow**.
<img src="../images/new-exit-flow.png" alt="New Exit Flow" title="New Exit Flow" style="border: 1px solid gray; zoom:100%;">

3. In the New Exit Flow window, provide inputs for the following fields:
    1. **Exit Flow Name**: This name will help identify the flow.
    2. **Description**: Input text to describe what the experience flow does or its purpose.
    3. **Attach a Channel**: Select either voice or chat to integrate with this flow.
    <img src="../images/exit-flow-fields.png" alt="Exit Flow Fields" title="Exit Flow Fields" style="border: 1px solid gray; zoom:100%;">

4. Click **Update & Continue to Flow Design**, you are taken to the Flow Designer, where you can work on the flow.

## Edit an Exit Flow

Steps to edit an exit flow:

1. Click the Ellipsis (**⋮**) beside the Description and click **Update**.
<img src="../images/update-exit-flow.png" alt="Update Exit Flow" title="Update Exit Flow" style="border: 1px solid gray; zoom:100%;">

2. Make the changes and click **Update**.
<img src="../images/update-button-exit-flow.png" alt="Update Button" title="Update Button" style="border: 1px solid gray; zoom:100%;">

## Delete an Exit Flow

Steps to delete an exit flow:

1. Click the Ellipsis (**⋮**) beside the Description and click **Delete**.
<img src="../images/delete-exit-flow.png" alt="Delete Button" title="Delete Button" style="border: 1px solid gray; zoom:100%;">

2. A confirmation is displayed. Click **Delete**.
<img src="../images/confirm-delete-exit-flow.png" alt="Delete Confirm" title="Delete Confirm" style="border: 1px solid gray; zoom:100%;">

## Navigate the Flow Designer

Once you reach the Flow Designer, you can create your flow using the canvas and nodes. The visual guide below gives you an overview of the tools you will be working with.
<img src="../images/flow-designer-page.png" alt="Flow Designer Page" title="Flow Designer Page" style="border: 1px solid gray; zoom:100%;">

For a detailed navigation guide, please see [Navigate the Flow Designer](../flows/navigate-the-flow-designer.md).

## Publish a Flow

When the Flow is published, it becomes available to end-users. [Learn more](../deploy/publishing-bot.md#publishing-components).