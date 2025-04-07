# Voice Gateway

This document provides information on the feature updates and enhancements introduced in the **Voice Gateway** of XO v11.x releases.

## v11.12.0 April 05, 2025

<u> Minor Release </u>

This update include enhancement and bug fixes. The key enhancement included in this release is summarized below.

### Voice Gateway

#### New Call Control Parameters to Support Deepgram

New call control parameters have been added to improve transcription quality when Deepgram ASR is used. The parameters can be configured directly in the call control section of experience flows, allowing users greater control over transcription output.

* `smart_format`: Enables automatic formatting of numbers, dates, and punctuation for improved readability.
* `filler_words`: Controls the inclusion of filler words (um, uh, like) in transcriptions.
* `keyterm`: Boosts the Keyword Recall Rate (KRR) for important keyterms or phrases by up to 90%.

[Learn more :octicons-arrow-right-24:](../../channels/kore.ai-voice-gateway/call-control-parameters.md#common-asr-parameters)

#### Updated TTS Selection for OpenAI TTS

The text-to-speech provider name has been updated from "Whisper" to "OpenAI TTS" to improve clarity and align with the OpenAI brand. This change can be seen in three key areas of the platform: Start Flow, Voice Preferences, and the general settings of the Start Node. [Learn more :octicons-arrow-right-24:](../../channels/kore.ai-voice-gateway/configure-kore-voice-gateway.md#voice-preferences)

#### Configurable Answering Machine Detection (AMD) for Inbound Calls

The Experience Flows now include an Answering Machine Detection (AMD) option ('Start Flow' → 'Answering Machine Detection (AMD)'), which can be selectively enabled for inbound calls. The flag helps reduce latency by preventing unnecessary AMD processing. When enabled, the system will detect answering machines in incoming calls and store the results in context variables that can be used in Dialog/Experience flows. This feature is only available for Voice Start Flows and includes a checkbox that allows users to automatically disconnect calls upon machine detection, streamlining call handling based on specific business requirements. [Learn more :octicons-arrow-right-24:](../../flows/create-flows.md#answering-machine-detection)

#### Expanded Amazon Polly Voice Selection in TTS Dropdown

When 'AWS Amazon Polly' is selected as the Text-to-Speech (TTS) engine, users can now access the full list of generative voices available for AWS Amazon Polly. These voices can be selected at the following locations:

* Flows & Channels → Start Flows,
* Start Node in a Start Flow,
* Kore Voice Gateway → Voice Preferences → Manage

<hr>