# **10.1.x Release Notes**

This document provides information on the various releases and the corresponding feature updates and enhancements introduced in version 10.1.x of the platform.


## v10.1.8 August 06, 2023

<span style="text-decoration:underline;">Patch Release</span>

This update includes bug fixes and feature enhancements.


<table>
  <tr>
   <td><strong>FEATURE</strong>
   </td>
   <td><strong>ENHANCEMENT</strong>
   </td>
  </tr>
  <tr>
   <td>Revamped Intent Discovery Journey
   </td>
   <td>The Intent Discovery tool was introduced as a beta feature in v10 of the Platform. This powerful tool helps bot designers auto-extract popular intents from previous user conversations. It reduces the time and effort to build a virtual assistant and leads to the success of your Conversational AI Journey.
<p>
Based on valuable customer feedback, we’ve enhanced the Intent Discovery module with the following features:
<ul>

<li><strong>Project Management</strong>: Bot designers can now create up to 10 projects in the tool, offering greater flexibility to delete or reuse existing projects.

<li><strong>Homepage</strong>: The tool’s homepage now presents Extracted Intents with clear options to add new Dialogs/FAQs or train existing ones.

<li><strong>Easy Re-extraction</strong>: Bot designers can now upload additional transcripts to re-discover additional intents, enabling the efficient reuse of existing projects.

<li><strong>Additional Enhancements</strong>: Bot designers can now bookmark suitable utterances for the extracted intent for easy reference. For each Extracted Intent, all sessions and corresponding utterances contributing to the Intent are grouped properly. Also, the Actions column now presents the results of actions taken from newly discovered intents, ensuring better tracking and management.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Zoom Contact Center Channel
   </td>
   <td>The Platform now supports Zoom Contact Center as a channel to automate voice and messaging services using asynchronous Webhook integration. <a href="https://developer.kore.ai/docs/bots/channel-enablement/adding-the-zoom-contact-center-channel/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>GupShup Support for WhatsApp Payment
   </td>
   <td>The Platform now supports the Whatsapp Payment Outbound message templates in the Gupshup WhatsApp Business Channel, empowering developers to build use cases based on WhatsApp Pay. <a href="https://developer.kore.ai/docs/bots/channel-enablement/adding-the-whatsapp-business-messaging-channel/#Support_for_WhatsApp_Pay">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Manage the Push Notifications for Web/Mobile SDK Channel
   </td>
   <td>Bot designers can now selectively send push notifications for events such as “Websocket Disconnected,” “App Termination,” and “Message Delivery Failure” in the Web/Mobile SDK channel. They can also customize the push notification messages sent to the client app using the Manage Push Notifications option in the Web/Mobile SDK channel. <a href="https://developer.kore.ai/docs/bots/channel-enablement/adding-the-webmobile-client-channel/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Locale Definition Property for IVR
   </td>
   <td>Bot designers can now include the language and locale identifier (<em>xml:lang= “&lt;value>”</em>) in the VoiceXML file by enabling the <strong>Locale Definition</strong> property for the IVR Channel. Automatic Speech Recognition engines use the language attribute to enhance speech recognition. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/voice-call-properties/#Dialog_Node_Settings">Learn more</a>.
   </td>
  </tr>
</table>



## v10.1.7 July 22, 2023

<span style="text-decoration:underline;">Patch Release</span>

This update includes bug fixes and feature enhancements.


<table>
  <tr>
   <td><strong>FEATURE</strong>
   </td>
   <td><strong>ENHANCEMENT</strong>
   </td>
  </tr>
  <tr>
   <td>Confluence Integration
   </td>
   <td>The XO Platform now offers pre-built integration with Confluence. You can enable the integration and explore various actions associated with your Confluence instance to create blog content or pages. <a href="https://developer.kore.ai/integrations/configuring-the-confluence-action/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Asana Integration
   </td>
   <td>The XO Platform now offers pre-built integration with Asana. You can enable the integration and explore various actions associated with your Asana instance to find information regarding projects, users, and tasks. <a href="https://developer.kore.ai/integrations/configuring-the-asana-action/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Trace ID for Incoming Messages
   </td>
   <td>The XO Platform now assigns a unique Trace ID for every incoming message throughout the lifecycle of the message, including the internal application logs and conversational history. This Trace Id is available as part of the Chat History module in various places within the application, and it can be used as a trace for any debugging purposes. <a href="https://developer.kore.ai/docs/bots/analyzing-your-bot/conversation-history-dashboard/#Chat_History">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Parallel Editing for Concepts & Synonyms
   </td>
   <td>The Parallel Editing feature enables multiple users in a team to simultaneously add or delete Concepts and Synonyms during bot training. <a href="https://developer.kore.ai/docs/bots/nlp/fundamental-meaning/#Parallel_Editing_for_Synonyms">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Ranker & Resolver Engine Enhancement
   </td>
   <td>The Ranker and Resolver Analysis panel now displays the list of matched training data during Utterance Training in all the supported NLU languages for Standard and Few-shot Model network types. This crucial information lets NLP analysts understand how the NLP Engine works and why a specific intent is qualified as a winning intent. <a href="https://developer.kore.ai/docs/bots/test-your-bot/testing-your-bot-with-nlp/#View_Matched_Training_Data">Learn more</a>.
   </td>
  </tr>
</table>



## v10.1.6 July 08, 2023

<span style="text-decoration:underline;">Patch Release</span>

This update includes bug fixes and feature enhancements.


<table>
  <tr>
   <td><strong>FEATURE</strong>
   </td>
   <td><strong>ENHANCEMENT</strong>
   </td>
  </tr>
  <tr>
   <td>Repeat Bot Responses Event for the IVR Channels
   </td>
   <td>The XO Platform has introduced a new Repeat Bot Response event within the Conversation Events category. Bot developers can enable this event and customize the trigger conditions. This empowers end-users to ask the bot to repeat its recent responses at any point during the conversation. The Auto-generate Response option uses the LLM-generated response. Currently, this event is supported for IVR, Audiocodes, and Twilio Voice channels. <a href="https://developer.kore.ai/docs/bots/bot-intelligence/event-based-bot-actions/#Repeat_Bot_Response_Event">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>New IVR Configuration Properties
   </td>
   <td>The Platform now allows configuring the following IVR Configuration Properties per bot. These configurations were part of the application configuration and are now available to be customized per bot.
<ul>

<li><strong>Document Type Definitions</strong>: To define whether the Document Type Definition should be included in the VXML file. The definition helps the VXML browser understand the response.

<li><strong>Fallback Redirection</strong>: Add an URL to redirect the conversation whenever the call hangs up.

<p>
<a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/voice-call-properties/#Dialog_Node_Settings">Learn more</a>.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Publish Intent-Specific Training and Traits without Dependency
   </td>
   <td>The Publish Workflow now empowers NLP trainers to publish only the training data of selected intents without including the task definitions. This applies to ML Utterances, Patterns, and Rules. The trainers can also independently publish Trait Groups and other NL Model configurations. This feature is particularly useful when multiple users are collaborating on a bot, as it enables bot developers or NLP trainers to independently publish their work without affecting each other’s ongoing tasks. <a href="https://developer.kore.ai/docs/bots/publish/publishing-bot/#Publishable_Components">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Few-shot Model for Standard Bot Traits
   </td>
   <td>The Platform has introduced a new <strong>Few-shot Model</strong> for training and identifying traits. This model enhances the accuracy of the NLP engine in identifying traits with minimal training required. All new bots created in NLP Version 3 will now use the Few-shot Model as the default traits model. However, older bots created in NLP Version 3 will still use the Standard traits model as the default. <a href="https://developer.kore.ai/docs/bots/nlp/user-utterances/#Support_for_Standard_Bot_Traits">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Debug Logs for Service, Script, and Webhook Nodes
   </td>
   <td>The Platform has enhanced the Debug Logs to show complete information on Service, Script, and Webhook node executions without having to switch to the Analytics – Performance module. With the new <strong>Show More</strong> option, bot developers can view the request and response inline and quickly identify any issues in the execution flow. <a href="https://developer.kore.ai/docs/bots/test-your-bot/talk-to-bot/#Debug_Log">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Task Execution Logs Separated from NLP Insights
   </td>
   <td>The task execution-related data is separated from the Analyze > NLP Insights menu and moved to the new <strong>Analyze</strong> > <strong>Task Execution Logs</strong> menu. The separation makes it easy for business users and bot developers to easily find and evaluate the virtual assistant’s performance in identifying and executing tasks. <a href="https://developer.kore.ai/docs/bots/analyzing-your-bot/task-execution-logs/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Pre and Post-Processor Scripts for AI-Assisted Dialog
   </td>
   <td>The AI-Assisted Dialog now includes <strong>Pre-processor Script</strong> and <strong>Post-processor Script</strong> options. These options empower bot developers to define scripts to manipulate data or response and incorporate it into rules or exit scenarios as required. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/ai-assisted-adaptive-dialog/#Pre-Processor_Script">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Support for Generative AI Features in Non-English Languages
   </td>
   <td>The Generative AI features are now supported for non-English NLU and Bot languages. <a href="https://developer.kore.ai/docs/bots/nlp/llm-and-generative-ai/#Important_Considerations">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>GPT 3.5 & 4 Models Support for Answer from Documents
   </td>
   <td>The Answer from Documents feature now supports OpenAI and Azure OpenAI GPT 3.5 and GPT 4 models. <a href="https://developer.kore.ai/docs/bots/nlp/llm-and-generative-ai/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>ServiceNow Agent Supports OAuth with Refresh Token
   </td>
   <td>The Platform now offers a new authorization option called <strong>OAuth with Refresh Token</strong> for the ServiceNow Agent Integration. This option enables analysts to integrate with the ServiceNow Agent seamlessly. <a href="https://developer.kore.ai/integrations/configuring-the-servicenow-agent/#Step_4_Create_an_Application_and_Generate_the_Refresh_Token">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Delete an Agent Transfer Integration
   </td>
   <td>Bot designers now have the option to delete an already configured external Agent Transfer integration. <a href="https://developer.kore.ai/integrations/agent-transfer-integrations/#Deleting_an_Agent_Transfer_Integration">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Improved Load Performance of Analytics
   </td>
   <td>The release includes various updates that improve the load performance of all the analytics modules. The platform now includes dedicated infrastructure to serve all the analytics modules. The users can view the Analytics data only for the latest six months of conversations. <a href="https://developer.kore.ai/docs/bots/analyzing-your-bot/dashboard-filter-criteria/">Learn more</a>.
   </td>
  </tr>
</table>



## v10.1.5 June 24, 2023

<span style="text-decoration:underline;">Patch Release</span>

This update includes bug fixes and feature enhancements.


<table>
  <tr>
   <td><strong>FEATURE</strong>
   </td>
   <td><strong>ENHANCEMENT</strong>
   </td>
  </tr>
  <tr>
   <td>Multiple Models Support for LLM & Generative AI
   </td>
   <td>While configuring the LLM integration, you can now enable multiple LLM models for both OpenAI and Azure OpenAI. This allows you to select a specific model for a specific feature and tweak the model’s settings to suit your use case. <a href="https://developer.kore.ai/docs/bots/nlp/llm-and-generative-ai/#Enable_LLM_Features">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Generative AI Node
   </td>
   <td>The new Generative AI node lets bot developers leverage the full potential of LLM and Generative AI models to quickly build their own prompts. Developers can also select a specific AI model, tweak its settings, and preview the response for the prompt. The node allows developers to creatively leverage LLMs by defining the prompt using conversation context and the response from the LLMs in defining the subsequent conversation flow. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/generative-ai-node/%22">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Azure OpenAI support for Answer from Docs and Zero-shot model
   </td>
   <td>The Azure OpenAI integration is now available for the Answer from Docs feature and the Zero-shot model. You can enable either the OpenAI integration, Azure integration, or both. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/answer-from-documents/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Set Ambiguous Intents as Expected Results in Batch Tests
   </td>
   <td>While creating a test suite, you can now tag multiple intents to a test utterance. It helps in scenarios where ambiguity is by-design and should be considered as True Positive. Do note that the ‘actual’ intents can include additional intents that are not part of the ‘expected’ intents. <a href="https://developer.kore.ai/docs/bots/test-your-bot/batch-testing/batch-testing/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Propagate Voice Call Properties for Linked Bots from Universal Bot
   </td>
   <td>You can now propagate the Voice Call Properties from the Universal Bot to all its linked bots. It helps you to leverage the UB properties when a linked bot’s execution is in progress. The Voice Call Properties of the linked bot are used when the conversation is happening directly with the bot as a Standard bot. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/voice-call-properties/">Learn more</a>.
<p>
The Voice Call Properties are supported by all the voice channels that have an IVR integration.
   </td>
  </tr>
  <tr>
   <td>None Intent In Universal Bots
   </td>
   <td>The None Intent feature is now available for Universal Bots. You can add ‘None Intent’ training against linked bots of a Universal bot so that these linked bots are not qualified when the user utterance identifies the ‘None Intent’. <a href="https://developer.kore.ai/docs/bots/nlp/advanced-nlp-configurations/#None_Intent">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Customize the Flow when the Service Node Calls Time out
   </td>
   <td>The XO Platform now provides an option to bot designers to stay in the context of the current dialog even when the service node calls time out. You can customize the dialog flow to provide a contextual response or take an alternate path in the conversation flow for a better error-handling experience. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/working-with-the-service-node/#Component_Properties/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Use Dynamic Variables for Defining Transition Conditions
   </td>
   <td>The XO Platform now allows you to use dynamic variable resolutions for the right-hand side field values in Transition Conditions of Dialog Tasks. Dynamic variable (content, context, or env) resolutions allow you to populate the values of certain fields at runtime based on the current state of the conversation or the user’s input, allowing you to manage the conversation flow more efficiently. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/nodes-transitions/#Component_Transitions">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Custom Entity Configuration Using Variables
   </td>
   <td>While configuring a custom entity for a node, in addition to using an expression, you can now use a Content, Context, or Environment variable that contains a regular expression or concept as the value. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/entity-types/#custom">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>New initiateTraining Parameter for Publish Bot API
   </td>
   <td>The new ‘initiateTraining’ parameter in the request body lets you indicate whether to trigger or skip the training process when publishing the bot. The parameter’s value can be:
<ul>

<li><em>true</em>: Initiate the training

<li><em>false</em>: Skip the training.

<p>
We highly recommend always initiating the training as part of the publishing process. <a href="https://developer.kore.ai/docs/bots/api-guide/publish-bot-api/">Learn more</a>.
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>Performance Improvements and Fixes
   </td>
   <td>
<ul>

<li>The Logging mechanism for Redis is optimized in specific cases to reduce overhead.

<li>Starting from MongoDB 5.0, the default write concern is changed to <em>w:majority</em>. In previous versions, it used to be <em>w:1</em>.

<li>The cs_init.txt file now enforces <em>w:1</em> as the write concern consistently across different MongoDB versions instead of relying on the default behavior.

<li>The latency issues related to Common Logger and New Relic during runtime are fixed.

<li>Certain database entry latencies are redirected to Redis.
</li>
</ul>
   </td>
  </tr>
</table>



## v10.1.4 June 10, 2023

<span style="text-decoration:underline;">Patch Release</span>

This update includes bug fixes and feature enhancements.


<table>
  <tr>
   <td><strong>FEATURE</strong>
   </td>
   <td><strong>ENHANCEMENT</strong>
   </td>
  </tr>
  <tr>
   <td>Conversation Summary API
   </td>
   <td>The new Conversation Summary API summarizes the conversation between a user and an agent. The agent can be a virtual agent or a human agent. The API accepts the conversation Id or the transcripts as input and provides an auto-generated conversation summary. Currently, the API supports transcripts only in English (en) and is available only in our global deployment (https://bots.kore.ai). <a href="https://developer.kore.ai/docs/bots/api-guide/conversation-summary-api/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Dynamic Intent Node
   </td>
   <td>The new Dynamic Intent node lets bot designers dynamically trigger any of the flows present in the bot by defining the intent name using variables. The target intent can be either a Dialog Task or a FAQ. You can use this node to proactively disambiguate an intent and choose different intents based on the user or conversation context.
<p>
In the case of linked bots associated with Universal Bots, this node can also be used to trigger flows present in any other linked bots of the corresponding Universal Bot. This feature allows you to invoke reusable or utility flows present in one linked bot from another, for example, user authentication, OTP verification, etc. It simplifies switching between tasks in different linked bots of a Universal Bot. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/dynamic-intent-node/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Ability to Contextually Secure Sensitive Inputs
   </td>
   <td>You can now contextually secure user inputs received at specific stages of the conversation. This is an extension of the current PII functionality. The PII functionality redacts specific information of the users at any point in the conversation by matching it with the defined patterns. However, there can be scenarios where the user input has to be masked only at certain places in the conversation and not at all times. For example, the PIN number, which is usually a 4 or 6-digit number, should be masked only when asked for. Masking any 4 or 6-digit number throughout the conversation is not desirable.
<p>
The new feature in the XO allows you to contextually secure the user inputs provided for certain Entity nodes. It enables bot designers to secure the input where required without impacting similar-looking inputs elsewhere. Designers can define one or more patterns to identify sensitive data and choose how to mask or de-identify it using options like redaction, replacement, or masking. <a href="https://developer.kore.ai/docs/bots/bot-settings/pii-data-masking/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Separate Retry Settings for Timeout, No Match, and Error Prompts
   </td>
   <td>The platform allows bot designers to define the prompts to be played for various events like Timeout, No Match, and Error. However, the platform allowed only one set of prompts and configurations for all these events. You can now configure the prompts, number of allowed retries, and behavior on exceeding retries for each of these events. This allows you to create a more personalized voice conversation experience. Currently, this is available only for the IVR Channel. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/voice-call-properties/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Ambiguous Intents Identified Event for Universal Bots
   </td>
   <td>Support for Ambiguous Intents Identified Event is now extended for Universal Bots. <a href="https://developer.kore.ai/docs/bots/bot-intelligence/event-based-bot-actions/#Ambiguous_Intents_Identified_Event">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>New Ignore Words Rule for LOV Entity
   </td>
   <td>The new ignoreWords rule helps bot developers to extend the ignore or stop words list for the LOV entity. <a href="https://developer.kore.ai/docs/bots/how-tos/entity-rules/#List_of_Values_LoV_type_entity">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Typeahead Suggestion for Namespaces
   </td>
   <td>While creating or editing a variable, instead of manually scrolling and selecting the namespaces, you can now search for namespaces using the typeahead suggestion. Filter and search for namespaces are also enabled on the Manage Variable Namespaces screen. <a href="https://developer.kore.ai/docs/bots/bot-settings/bot-management/managing-namespace/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Manage Workspaces
   </td>
   <td>The XO Platform now allows an admin user to manage Billing, Payment, and Usage information directly using the Manage button under the workspace. This is available for all the users with the ‘Admin’ role for the Bot Admin Console. <a href="https://developer.kore.ai/docs/bots/bot-settings/plan-usage/usage-plans/#Manage_the_Usage_Plan_Details">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Support for GIF format in Web & Mobile SDK channel
   </td>
   <td>The Web/Mobile SDK now renders .GIF files within the chat window, instead of showing them as attachments. <a href="https://developer.kore.ai/docs/bots/sdks/message-templates/#Attachment_Template">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Node.js Upgrade
   </td>
   <td>The Node.js version is upgraded from 14.x to 16.x/18.x.
   </td>
  </tr>
</table>



## v10.1.3 May 30, 2023

_(Released on May 30, 2023 in the US region | May 27, 2023 in all other regions)_

<span style="text-decoration:underline;">Patch Release</span>

This update includes bug fixes and feature enhancements.


<table>
  <tr>
   <td><strong>FEATURE</strong>
   </td>
   <td><strong>ENHANCEMENT</strong>
   </td>
  </tr>
  <tr>
   <td>Google Maps Integration
   </td>
   <td>The XO Platform now offers pre-built integration with Google Maps. You can enable the integration and explore various actions associated with Google Maps to find places by name and locations by coordinates. <a href="https://developer.kore.ai/integrations/configuring-the-google-maps-action/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>DHL Integration
   </td>
   <td>The XO Platform now offers pre-built integration with DHL. You can enable the integration and explore various actions associated with DHL to track your order and find the locations of DHL. <a href="https://developer.kore.ai/integrations/configuring-the-dhl-action/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Support for MS Teams Channel using Single Tenant App
   </td>
   <td>You can now enable Microsoft Teams using the single-tenant app, in addition to the multi-tenant app, as a delivery channel to your Kore.ai Virtual Assistant to allow it to interact with end-users using Microsoft Teams. <a href="https://developer.kore.ai/docs/bots/channel-enablement/adding-the-microsoft-teams-channel/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Sessions History API Enhancement
   </td>
   <td>A new parameter is added to filter the API response data using Session ids. <a href="https://developer.kore.ai/docs/bots/api-guide/sessions-api/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>WebSocket Enhancements
   </td>
   <td>
<ul>

<li>The XO Platform now generates additional WebSocket events to track the information related to Digital forms, Sessions, Agent transfers, and the status of active bots. <a href="https://developer.kore.ai/docs/bots/sdks/bots-platform-api-reference/#Bot_Status_Event">Learn more</a>.

<li>The Platform now displays industry standard Error codes for the WebSocket failure conditions. <a href="https://developer.kore.ai/docs/bots/sdks/bots-platform-api-reference/#WebSocket_Error_Scenarios">Learn more</a>.
</li>
</ul>
   </td>
  </tr>
</table>



## v10.1.2 May 13, 2023

<span style="text-decoration:underline;">Patch Release</span>

This update includes bug fixes and feature enhancements.


<table>
  <tr>
   <td><strong>FEATURE</strong>
   </td>
   <td><strong>ENHANCEMENT</strong>
   </td>
  </tr>
  <tr>
   <td>Shopify Integration
   </td>
   <td>The XO Platform now offers pre-built integration with Shopify. You can enable the integration and explore various actions associated with your Shopify Shop instance to find information regarding Customers, Products, and Orders. <a href="https://developer.kore.ai/integrations/configuring-the-shopify-action/">Learn more</a>.
   </td>
  </tr>
</table>



## v10.1.1 April 29, 2023

<span style="text-decoration:underline;">Patch Release</span>

This update includes bug fixes and feature enhancements.


<table>
  <tr>
   <td><strong>FEATURE</strong>
   </td>
   <td><strong>ENHANCEMENT</strong>
   </td>
  </tr>
  <tr>
   <td>Improved Genesys Channel Support
   </td>
   <td>The Platform now supports OAuth based integration for enabling the Genesys Chat channel. The Basic Auth flow is no longer supported. <a href="https://developer.kore.ai/docs/bots/channel-enablement/adding-genesys-chat-as-a-channel/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Pre-built Integration with Nice in Contact (UserHub) for Agent Transfer
   </td>
   <td>Kore.ai’s pre-built Agent Transfer integrations now allow you to seamlessly hand off the conversations to the Nice in Contact (UserHub) agent system. <a href="https://developer.kore.ai/integrations/configuring-the-niceincontact-userhub-agent/">Learn more</a>.
   </td>
  </tr>
  <tr>
   <td>Entity Placeholder support for Few-shot
   </td>
   <td>The platform now supports replacing of the entity values with entity placeholders for the Few-shot Model. This improves the accuracy levels of the Few-shot model.
   </td>
  </tr>
</table>



## v10.1 April 16, 2023

<span style="text-decoration:underline;">Minor Release</span>

The v10.1 of the Kore.ai XO Platform focuses on leveraging the power of **Large Language Models** and **Generative AI** to enable enterprises to create intelligent conversational experiences. The release offers a copilot for smart assistance, better conversational capabilities, and delivers personalized responses.

For more information on key features and enhancements introduced in the release, see [What’s new in v10.1](https://developer.kore.ai/docs/bots/whats-new/whats-new-in-this-release/).