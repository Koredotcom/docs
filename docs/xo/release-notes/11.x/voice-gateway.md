# Voice Gateway Updates

This document provides information on the feature updates and enhancements introduced in the **Voice Gateway** of AI for Service (XO) v11.x releases.

## v11.13.0 May 03, 2025

<u> Minor Release </u>

This update includes enhancements and bug fixes. The key enhancements included in this release are summarized below.

### SIP Trunk

#### SIP Header Format Preservation in Voice Automation Transfers

Voice Gateway now preserves the original format of SIP header names (specifically User-to-User headers—UUI) when sending them back to third-party contact centers during inbound call transfers to Voice Automation. The change applies to SIP Refer and SIP Invite methods in UUI Data Settings, agentutils/voiceutils functions in Automation AI, and channel override templates.

### Text to Speech (TTS)

#### Support for Emma Voice in IVR Channel

The IVR channel now supports additional Emma voice options under the Microsoft Azure TTS provider. Users can select the following voices at the Start Flow, the first node of the Start Flow, and Voice Preferences settings:
* en-US-EmmaMultilingualNeural (Female)
* en-US-EmmaNeural (Female)
* en-US-Emma:DragonHDLatestNeural (Female)
* en-US-Emma2:DragonHDLatestNeural (Female)
This enhancement ensures greater flexibility and consistency in voice experience across IVR flows.

#### LLM Streaming Support for Additional TTS Providers

LLM Streaming is now supported for ElevenLabs and Deepgram TTS. This enhancement enables faster and more natural audio generation across a broader range of text-to-speech (TTS) engines, improving real-time responsiveness and user experience in voice interactions. [Learn more :octicons-arrow-right-24:](../../contactcenter/configurations/advanced-settings/llm-streaming.md#llm-streaming-for-text-to-speech-tts-providers)

<hr>

## v11.12.1 April 19, 2025

<u> Patch Release </u>

This update includes enhancements and bug fixes. The key enhancement included in this release is summarized below.

### SIP Trunk

#### Accurate Caller Number in SIP Headers

When a call is transferred to an agent from a third-party desktop, the caller number set in the script node is passed through SIP headers instead of the DID number. This ensures accurate caller identification on external agent tools. This enhancement is currently applicable only for Experience Flow-based call transfers. [Learn more :octicons-arrow-right-24:](../../channels/voice-gateway/configure-voice-gateway.md#sip-trunk-setup)

<hr>

## v11.12.0 April 05, 2025

<u> Minor Release </u>

This update includes enhancements and bug fixes. The key enhancements included in this release are summarized below.

### Call Control Parameters

#### New Call Control Parameters to Support Deepgram

New call control parameters have been added to improve transcription quality when Deepgram ASR is used. The parameters can be configured directly in the call control section of experience flows, allowing users greater control over transcription output.

* `smart_format`: Enables automatic formatting of numbers, dates, and punctuation for improved readability.
* `filler_words`: Controls the inclusion of filler words (um, uh, like) in transcriptions.
* `keyterm`: Boosts the Keyword Recall Rate (KRR) for important keyterms or phrases by up to 90%.

[Learn more :octicons-arrow-right-24:](../../channels/voice-gateway/call-control-parameters.md#common-asr-parameters)

### Flows

#### Configurable Answering Machine Detection (AMD) for Inbound Calls

The Experience Flows now include an Answering Machine Detection (AMD) option ('Start Flow' → 'Answering Machine Detection (AMD)'), which can be selectively enabled for inbound calls. The flag helps reduce latency by preventing unnecessary AMD processing. When enabled, the system will detect answering machines in incoming calls and store the results in context variables that can be used in Dialog/Experience flows. This feature is only available for Voice Start Flows and includes a checkbox that allows users to automatically disconnect calls upon machine detection, streamlining call handling based on specific business requirements. [Learn more :octicons-arrow-right-24:](../../flows/create-flows.md#answering-machine-detection)

### Automatic Speech Recognition and Text-to-Speech

#### Updated TTS Selection for OpenAI TTS

The text-to-speech provider name has been updated from "Whisper" to "OpenAI TTS" to improve clarity and align with the OpenAI brand. This change can be seen in three key areas of the platform: Start Flow, Voice Preferences, and the general settings of the Start Node. [Learn more :octicons-arrow-right-24:](../../channels/voice-gateway/configure-voice-gateway.md#voice-preferences)

#### Expanded Amazon Polly Voice Selection in TTS Dropdown

When 'AWS Amazon Polly' is selected as the Text-to-Speech (TTS) engine, users can now access the full list of generative voices available for AWS Amazon Polly. These voices can be selected at the following locations:

* Flows & Channels → Start Flows,
* Start Node in a Start Flow,
* Kore Voice Gateway → Voice Preferences → Manage

<hr>