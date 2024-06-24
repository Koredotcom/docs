# What’s New

Learn about the new features and enhancements included in v10.1 of **Kore.ai Experience Optimization Platform** which was released on April 16, 2023.

The v10.1 of the Kore.ai XO Platform focuses on leveraging the power of **Large Language Models** and **Generative AI** to enable enterprises to create intelligent and context-specific conversational experiences. The release offers a copilot for smart assistance, better conversational capabilities, and delivers personalized responses.

The key features and enhancements included in this release are listed below for your reference:


## Smart Copilot for IVA Development


### Enhanced Bot Creation Journey with Use Case Suggestions

Create Virtual Assistants faster with the new bot creation process that lets you generate use cases automatically. Dialog Tasks are auto-created along with the bot, providing you with the base framework to fasttrack your VA creation journey. [Learn more].

### Automatic Dialog Generation

This feature auto-generates conversations and dialog flows using the VA’s purpose and intent description provided during the creation process. The Platform uses LLM and generative AI to create suitable Dialog Tasks for Conversation Design, Logic Building & Training by including the required nodes in the flow.

You can provide an intent description, and the Platform handles the Conversation Generation for the Dialog Flow. You can preview the conversation flow, view the Bot Action taken, improvise the intent description, and regenerate the conversation to make it more human-like. The nodes and the flow for the Business Logic are automatically built for your conversation, and you only need to configure the flow transition. <a href="https://developer.kore.ai/docs/bots/chatbot-overview/using-the-dialog-builder-tool/#Auto-Generate_Dialog_Tasks">Learn more </a>.

![Autogenerate Dialog Task](../assets/images/autogenerate-dialog-task.gif)

### Training Data Suggestions

Quickly generate high-quality training data using suggested utterances for each intent. Review and add the utterances to create a robust training set for your bot. <a href="https://developer.kore.ai/docs/bots/chatbot-overview/using-the-dialog-builder-tool/#Automatically_Generate_Utterance_Suggestions"> Learn more </a>.

![Training Data Suggestions](../assets/images/training-suggestions.gif)

### NLP Batch Test Case Suggestions

Automatically generate NLP test cases for every intent, including the entity checks. Use the generated utterances to quickly create test suites in the builder. <a href="https://developer.kore.ai/docs/bots/test-your-bot/batch-testing/batch-testing/#Generating_Test_Cases_Automatically"> Learn more </a>.

![Batch Test Case Suggestions](../assets/images/batch-testing.gif)

### Conversation Test Cases Suggestions

Get simulated user inputs covering end-user scenarios at every test step. Use the suggestions to create test suites instantly. You can view input/utterance suggestions at every conversation step simulating the various input types and scenarios. This feature helps check if the task/intent is robust enough to handle random user utterances. It helps you predict and simulate the end user’s behavior and check if the VA can execute all the defined flows by generating user responses and presenting any digressions from the specified intent. <a href="https://developer.kore.ai/docs/bots/test-your-bot/create-a-test-suite/#Generated_User_Response_Suggestions"> Learn more </a>.

![Conversation Test Cases Suggestions](../assets/images/conv-test.gif)


## Dynamic Conversations


### Dynamic Paraphrasing

You can now leverage Generative AI to rephrase bot responses based on conversation context and users’ emotions, resulting in more empathetic and natural responses that enhance user experience and engagement. When the OpenAI or Azure-OpenAI integration is enabled, you can see a new setting to rephrase responses at the node level for Message, Entity, and Confirmation Nodes. The messages added as User Prompts, Error Prompts, and Bot Responses are rephrased during runtime using the integration. <a href="https://developer.kore.ai/docs/bots/nlp/llm-and-generative-ai/#Dynamic_Prompt_and_Message_Rephrasing"> Learn more </a>.

![Dynamic Paraphrasing](../assets/images/rephrase-response.gif)


### AI-Assisted Adaptive Dialog

The AI-Assisted Dialog Node lets you leverage the full potential of LLMs and Generative AI models to quickly build conversations that involve complex flows and also provide human-like experiences. You can define the entities you would like to collect and also the business rules that govern the collection of these entities. The XO Platform orchestrates the conversation using contextual intelligence, ensuring that the conversation is always grounded to your enterprise business rules. You can also provide exit rules for handing off the conversation to the virtual assistant or the human agents. <a href="https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/ai-assisted-adaptive-dialog/"> Learn more</a>.


### Knowledge Graph Powered by LLM

The new Few-Shot Knowledge Graph leverages LLMs to understand the FAQs without the need for exhaustive ontology. All you need to do is add all FAQs to the root node/term. This significantly reduces the complexity of building and maintaining an ontology structure. [Learn more](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/knowledge-ontology/#The_Few-Shot_Knowledge_Graph).

With the introduction of Few-shot models in ML and KG engines, rescoring by Ranking & Resolver is no longer required for intent identification. Therefore, we have introduced a new version of Ranking & Resolver (Version 2) for Few-shot models that only ranks intents based on scores from ML and KG engines. The version significantly improves the accuracy of intent identification.

**Multi-language Support for Zero-shot and Few-shot Models**

The Zero-shot and the Few-shot ML Models are now supported in all non-English languages.


## Pre-built Integrations


### Integration with Unblu for Agent Transfer

Kore.ai’s pre-built Agent Transfer integrations now allow you to seamlessly hand off the conversations to the Unblu agent system without writing any custom code using the BotKit. [Learn more](https://developer.kore.ai/docs/bots/channel-enablement/adding-the-unblu-channel/).


### Disable or Delete Pre-built Action Integrations

You can now disable or delete a configured external Action integration.


## Additional Enhancements


### External NLU for Universal Bots

The Platform provides more flexibility in bot orchestration by allowing you to link some bots using external NLU engines and others using proprietary multi-engine NLP. With external NLU integration, you can continue to have the NLU training on an external system and build the conversation flow on the XO platform. [Learn more](https://developer.kore.ai/integrations/external-nlu-adapters/).


### Analytics Details in Webhook v2 Response

The Webhook v2 response now includes additional conversation flow-related analytics information to help you build custom analytics. You can set the **AnalyticsDetails** parameter to **Include** in the request to view meta tags related to all nodes, tasks, sub-task, and session_id details in the response. [Learn more](https://developer.kore.ai/docs/bots/channel-enablement/adding-webhook-channel/#Webhook_V20).


### Export Conversational Path Analysis Data

You can now export the Conversational Path Analysis data in a .csv file to analyze the flow of drop-off sessions and take the required actions. [Learn more](https://developer.kore.ai/docs/bots/analyzing-your-bot/conversations-dashboard/).


### Customize Authorization Profiles for a Conversion Session

The Platform provides a new way to clear authorization profiles collected from the users. The authorization profiles can be auto-cleared as part of the session closure, or you can also use the **koreUtil.clearAuthProfiles** and **koreUtil.clearAllAuthProfiles** functions. [Learn more](https://developer.kore.ai/docs/bots/bot-settings/bot-sessions/#Manage_Sessions).


### Improved Messaging Channel Support

SmartAssist Gateway is Kore.ai’s native voice interface to deliver seamless and low-latency conversation experiences. [Learn more](https://developer.kore.ai/docs/bots/channel-enablement/adding-the-smartassist-gateway-channel/).


### Plan & Usage

[Ecommerce Plans](https://developer.kore.ai/docs/bots/bot-settings/plan-usage/plans-overview/) are now supported in the EU region. Also, wire transfer-based payments are now supported for Ecommerce Plans. [Learn more](https://developer.kore.ai/docs/bots/bot-settings/plan-usage/usage-plans/#Wire_Transfer).


### Entity Rule Enhancements



* **Letters rule for the String Entity**: The new Letters rule `(letters=a single number OR a range)` for the String entity allows you to extract a word of a specific length or a sequence of individual characters that meet the length criteria. [Learn more](https://developer.kore.ai/docs/bots/how-tos/entity-rules/#String_type_entity).
* **New Model Number Rule for Composite Entity**: The new Model Number rule `("modelNumber":true)` for Composite Entity allows you to set a specific number of letters and numbers to extract a unique identifier. For example, a social security number, membership ID, or other structured data on a voice channel where the user’s utterance does not follow a strict regex pattern. [Learn more](https://developer.kore.ai/docs/bots/how-tos/entity-rules/#Model_Number_for_Composite_entity_type).
* **New Precondition Rule for all entity types** allows you to define preconditions for entity extraction if one of the conditions is true. If the precondition is invalid then the entity extraction is skipped entirely. For example, a composite entity matches with a set of identification numbers, such as membership ID, provider ID, and RX number. You can set the precondition rule as `"preConditions" : ["checkMemberID"]`. [Learn more](https://developer.kore.ai/docs/bots/how-tos/entity-rules/#Generic_rules).