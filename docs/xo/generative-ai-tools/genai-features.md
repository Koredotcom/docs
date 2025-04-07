
# Generative AI Features

## Overview

The Generative AI features improve design-time and runtime capabilities, accelerating virtual assistant development and enhancing performance. LLM-powered functionalities streamline the development process, reducing time and effort while boosting overall efficiency.

By default, all the features are disabled. To enable the feature, select the model, prompt, and then toggle the status to enable it. You can also change the model, its prompts, and the respective settings.
		
### Enable Feature

Steps to enable the feature:


1. Navigate to **Generative AI Tools** > **GenAI Features**.  
<img src="../images/genai-features-home.png" alt="GenAI Features" title="GenAI Features" style="border: 1px solid gray; zoom:70%;"> 

2. Select the **Model** and **Prompt** from the drop-down list for a feature. 
3. Turn on the Status toggle. The success message is displayed.

		

	
### Product Filter

Smart filtering in the features section is based on the context from which the users access the Generative AI menu. This will only show the relevant feature options for that product (e.g., Automation, Search, Agent). The users can easily add/remove this filter as needed.  
<img src="../images/filter-and-search.png" alt="Product Level Filter" title="Product Level Filter" style="border: 1px solid gray; zoom:70%;"> 
	

### Feature Search Functionality

A dedicated search feature functionality to enable quick and efficient discovery of GenAI features across the entire platform. This enhancement streamlines navigation, minimizes search time, and improves overall user efficiency by providing direct access to key tools and options.
			


## Change Settings for a Model

Choose the option below based on the model for which you want to change the settings:


### Change Settings for a Pre-built Model

			

You can change the selected model’s settings if required. **In most cases**, **the default settings work fine**.

Follow these steps:



1. Go to **Generative AI Tools** > **GenAI Features**.
2. Open **Advance Settings** using the feature gear icon. The **Advance Settings** dialog box is displayed.  
<img src="../images/advance-settings.png" alt="Advance Settings" title="Advance Settings" style="border: 1px solid gray; zoom:70%;"> 


Adjusting the settings allows you to fine-tune the model’s behavior to meet your needs. The default settings work fine for most cases. You can tweak the settings and find the right balance for your use case. A few settings are common in the features, and a few are feature-specific:

* **Model**: The selected model for which the settings are displayed.
* **Instructions or Context**: Add feature/use case-specific instructions or context to guide the model.
* **Temperature**: The setting controls the randomness of the model’s output. A higher temperature, like 0.8 or above, can result in unexpected, creative, and less relevant responses. On the other hand, a lower temperature, like 0.5 or below, makes the output more focused and relevant.
* **Max Tokens**: It indicates the total number of tokens used in the API call to the model. It affects the cost and the time taken to receive a response. A token can be as short as one character or as long as one word, depending on the text.
* **Number of Previous User Inputs**: Indicates how many previous user messages should be sent to the model as context for rephrasing the response sent through the respective node. For example, 5 means that the previous 5 responses are sent as context.
* **Additional Instructions**: Add specific instructions on how prompts should be rephrased. You can create a persona, ask it to rephrase in a particular tone, etc.
* **Similarity Threshold**: The Similarity Threshold is applicable for the Answer from Docs feature. This threshold refers to the similarity between the user utterance and the document chunks. The platform shortlists all chunks that are above the threshold and sends these chunks to the LLMs to auto-generate the responses. Define a suitable threshold that works best for your use case. Setting a higher threshold limits the number of chunks and may not generate any result. Setting a lower threshold might qualify too many chunks and might dilute the response.

		
### Change Settings for a Custom Model

	

		

			

For a custom model, you can only change the post-processor script to adjust the actual response with the expected response.

Follow these steps:



1. Go to **Generative AI Tools** > **GenAI Features**.
2. Click the feature **Settings** (gear) icon. 

3. Click **Edit**. The Actual Response is displayed. 


    ![alt_text](images/cpf(5).png  )
    

4. Click **Configure**. The Post Processor Script is displayed. 


    ![alt_text](images/cpf(7).png  )

5. Modify the script and click **Save & Test**. The Response is displayed. 




    ![alt_text](images/cpf(6).png  )

6. Click **Save**.
7. (Only for Agent Node) Enter the **Exit Scenario Key-Value** and **Virtual Assistance Response Key fields**. Click **Save**.
The Exit Scenario Key-Value fields help identify when to end the interaction with the GenAI model and return to the dialog flow. A Virtual Assistance Response Key is available in the response payload to display the VA’s response to the user.
    ![alt_text](images/image1-8.png  )
	

## Automation AI Features


### Model and Supported Features - Automation AI

The following table displays the features and the supported models. 

(✅ Supported | ❌ Not supported)

=== "Automation AI - Runtime Features"

    |Model|Agent Node|Prompt Node|Repeat Responses|Rephrase Dialog Responses|Rephrase User Query|Zero-shot ML Model|
    |:----:|:----:|:----:|:----:|:----:|:----:|:----:|
    |Azure OpenAI – <br>GPT 4|✅|✅|✅|✅|❌|✅^|
    |Azure OpenAI – <br>GPT 4 Turbo, GPT 4o, and GPT-4o mini*|✅|✅|❌|✅|❌|✅|
    |OpenAI – <br>GPT 3.5 Turbo, GPT 4, GPT 4 Turbo, GPT 4o, and GPT-4o mini*|✅|✅|✅|✅|❌|✅^|
    |Provider's New LLM**|✅|✅|❌|✅|❌|✅|
    |Custom LLM|✅|✅|❌|✅|❌|✅|
    |Amazon Bedrock|✅|✅|❌|✅|❌|❌|
    |Kore.ai XO GPT|❌|❌|❌|✅|✅|❌|


=== "Automation AI - Designtime Features"

    |Models|Automatic Dialog Generation|Conversation Test Case Suggestions|Conversation Summary|NLP Batch Test Case Suggestions|Training Utterance Suggestions|
    |:----:|:----:|:----:|:----:|:----:|:----:|
    |Azure OpenAI – <br>GPT 4, GPT 4 Turbo, GPT 4o, and GPT-4o mini*|✅|✅|❌|✅|✅|
    |OpenAI – <br>GPT 3.5 Turbo, GPT 4, GPT 4 Turbo, GPT 4o, and GPT-4o mini* |✅|✅|❌|✅|✅|
    |Provider's New LLM**|✅|✅|❌|✅|✅|
    |Custom LLM|✅|✅|✅|✅|✅|
    |Amazon Bedrock|✅|✅|❌|✅|✅|
    |Kore.ai XO GPT|❌|❌|✅|❌|❌|
<hr>

\^  Currently, the Zero-shot ML Model does not support batch testing when using GPT 4.

\* The OpenAI GPT-4o mini and Azure OpenAI GPT-4o mini do not include system prompts, but they can be used with custom prompts. 

\** To use the Provider's New LLM, you must create a custom prompt as system prompts are unavailable.

### Agent Node

When enabled, this feature lets you add an Agent Node to Dialog Tasks. This node allows you to collect Entities from end-users in a free-flowing conversation (in the selected English/Non-English Bot Language) using LLM and Generative AI in the background. You can define the entities to be collected as well as rules & scenarios in English and Non-English Bot languages. You can configure node properties just like any other node. You can also use the Agent Node across Dialog Tasks.

<img src="../images/genainode.png" alt="Agent Node" title="Agent Node" style="border: 1px solid gray; zoom:70%;"> 



**Usage**

When creating or editing a Dialog Task that’s created manually or[ auto-generated](../automation/use-cases/dialogs/using-the-dialog-builder-tool.md#auto-generated-dialog-tasks), you can find a node called Agent Node within your nodes list. 

When this feature is disabled, the node is unavailable within the Dialog Builder.[ Learn more](../automation/use-cases/dialogs/node-types/genai-node-v2.md).


### Prompt Node

This feature lets you define custom user prompts based on the conversation context and the response from the LLMs. You can define the subsequent conversation flow by selecting a specific AI model, tweaking its settings, and previewing the response for the prompt.

 

**Usage**



1. When building the Dialog Flow, click the **“Gen AI”**, and select the **Prompt Node** node. 
<img src="../images/genaiprompt.png" alt="Agent Node" title="Agent Node" style="border: 1px solid gray; zoom:70%;"> 

2. Configuring the Component Properties in the following sections helps set up the node:
    * **General Settings**: Provide **Name** and **Display Name** for the node and write your own OpenAI Prompt.
    * **Advanced Settings**: Fine-tune the model’s behavior and tweak its settings as required for the following:
        * Model
        * System Context
        * Temperature
        * Max Tokens
1. **Advanced** **Controls**: Select the maximum wait time (**Timeout**) to receive a response from the LLM and the bot’s response (Timeout Error Handling) when a timeout error occurs.
2. When you add custom tags to the **current message**, **user profile**, and **session** under **Instance Properties**, you can build custom profiles for the bot conversation. .
3. Configuring node connections on an instance lets you define the connection rules for the conversation using transition conditions. This lets the conversation follow specific paths based on the user’s input.

If this feature is disabled, you cannot configure the ML model to build custom prompts using OpenAI for different use cases.[ Learn more](../automation/use-cases/dialogs/node-types/genai-prompt.md).


### Repeat Responses

This feature uses LLM to reiterate the recent bot responses when the Repeat Response event is triggered. Bot developers can enable the event and customize the trigger conditions. This empowers end-users to ask the bot to repeat its recent responses at any point during the conversation. Currently, this event is supported for IVR, Audiocodes, and Twilio Voice channels.[ Learn more](../automation/intelligence/event-handling.md#repeat-bot-response-event).



### Rephrase Dialog Responses

This feature sends all User Prompts, Error Prompts, and Bot Responses to the Generative AI along with the conversation context, which depends on the configured number of user inputs. Responses are rephrased in English or the selected Non-English Bot Language based on the context and user emotion, providing a more empathetic, natural, and contextual conversation experience to the end-user. You can give instructions (additional instructions) in English or any other bot language you select.





<img src="../images/dcf(1).gif" alt="Rephrase Dialog Responses" title="Rephrase Dialog Responses" style="border: 1px solid gray; zoom:70%;">

**Usage**

When configuring a Message, Entity, or Confirmation node, you can enable the **Rephrase Response** feature (disabled by default). This lets you set the number of user inputs sent to OpenAI/Anthropic Claude-1 based on the selected model as context for rephrasing the response sent through the node. You can choose between 0 and 5, where 0 means that no previous input is considered, while 5 means that the previous. 5 responses are sent as context.

When this feature is disabled, the Rephrase Response section is not visible within your node’s Component Properties.





![alt_text](images/dcf(3).png  )



### Rephrase User Query

This feature uses the[ Kore.ai XO GPT Model](xo-gpt-module.md). This model helps improve intent detection and entity extraction by enriching the user query with relevant details from the ongoing user conversation.

When a user intent and entity are split across multiple utterances or through the conversation, the feature enriches the user query by rephrasing the user’s multiple queries during runtime. This enriched user query contains all the conversation details so the bot can understand the actual meaning behind a user’s utterance. This enriched user query is fed to the natural language, improving accuracy by improving intent identification and entity extraction.

**Usage**

The LLM rephrases the query using one of the following methods depending on the scenario:

**Completeness**: The user query should be complete based on the conversation context so that the NLP can identify the right intent. If the user query is incomplete, the system urges the user to rephrase with more information.

For example: 
User: What is the weather forecast for New York tomorrow? 
Bot: It will be Sunny, with temperature ranging between 30 – 35 degrees Celsius. 
User: How about Orlando? 
Bot: Sorry, I cannot understand. Can you please rephrase?

The query should be completed as “How about the weather forecast in Orlando tomorrow?”.

**Co-referencing**: Coreference arises when multiple expressions or queries within text pertain to a common entity. In cases where a user’s query demonstrates incomplete coreference, the system prompts the user to rephrase the query with additional information. This enhances NLP’s ability to discern the correct intent and entities involved.

For example: 
User: I’ve been experiencing a persistent headache for the past week. 
Bot: I’m sorry to hear that. Have you been taking any medication for it? 
User: Yes, I’ve been taking ibuprofen, but it doesn’t seem to help much. 
Bot: I see. How often do you take ibuprofen? 
User: I take it every six hours 
Bot: I don’t understand. Can you tell me how often you take ibuprofen?

The co-reference in the user query should be expanded for NLP to identify the right intent and entities. The co-reference should be expanded as “I take ibuprofen every six hours”.

**Completeness and Co-referencing**: The following example illustrates completeness and co-referencing issues with the user’s input which triggers rephrasing.

For example: 
User: I want to apply for a personal loan.

Bot: Sure, I can help you. You’re eligible to take a personal loan of up to 20,000\$.

User: How about a Home loan? 
Bot: You’re eligible to apply for a home loan as well. You can avail up to 100,000\$. 
User: What about the interest rates of both loans?

The co-reference and the query have to be completed as “What is the interest rate of personal loan and home loan?

#### Conversation History Length
This setting allows you to specify the number of recent messages sent to the Kore.ai XO GPT model as context for the user query rephrasing feature. These messages include both user messages and virtual assistant (VA) messages. You can set any value greater than 1. However, the number of messages sent is limited to the session's conversation history, even if your set value is higher. The default value is 10.
You can access the Conversation History Length from **Repharse User Query** > **Advanced Settings**.
<img src="../images/ruq-ad.png" alt="Conversation History Length" title="Conversation History Length" style="border: 1px solid gray; zoom:70%;">

### Zero-shot ML Model

This feature help the ML Engine identify the relevant intents from user utterances based on semantic similarity. By identifying the logical intent during run time, this feature eliminates the need for training data. The Zero-shot ML model requires well-defined intents to work well. This training approach is well-suited for virtual assistants with relatively fewer intents and distinct use cases.

For the Zero-shot model feature, the XO Platform offers two template prompts for every supported model of Open AI and Azure Open AI. The template prompts are “Default” and “Zero-Shot-V2”. The “Zero-Shot-V2” is the advanced version of the “Default” template and is selected by default as you select the model. You can import both templates and create a custom prompt using them.

!!! note

    The Zero-shot model is production-ready in English but experimental in other languages. We advise caution before using it in production for non-English languages.

**Usage**

Before performing utterance testing, the user selects the **Zero-shot Model** Network Type. During utterance testing, the user provides a more descriptive input with a subject, object, and nouns. Once the test runs, the system identifies the most logical intent as the definitive match by comparing the following:



* User utterance input
* Intent names

The identified intent is then displayed as the matched intent.

If this feature is disabled, the system won’t identify and display the logical and matched intent during utterance testing.[ Learn more](../automation/natural-language/training/machine-learning-engine.md#zero-shot-learning-model-with-openai).

### Few-shot ML Model

The Few-shot model uses Kore Ai’s hosted embeddings to train virtual assistants based on intent names and training utterances. The model identifies the intents based on semantic similarity between user and training utterances.

!!! note

    The Few-shot model is production-ready in English but experimental in other languages. We advise caution before using it in production for non-English languages.

**Usage**

Before performing utterance testing, the user selects the **Few-Shot Model (Kore.ai Hosted Embeddings)** network type. 

During utterance testing, the user provides a more descriptive intent name with a subject, object, and nouns, as well as the training utterances. Once the test runs, the system identifies the most logical intent as the definitive match based on the following:



* The default configuration settings
* User utterance input
* Intent names

If this feature is disabled, the system won’t identify and display the logically matched intent during utterance testing.[ Learn more](../automation/natural-language/training/machine-learning-engine.md#few-shot-model-koreai-hosted-embeddings).


### Automatic Dialog Generation

This feature auto-generates conversations and dialog flows in the selected language using the VA’s purpose and intent description provided (in English or the selected Non-English Bot Language) during the creation process. The Platform uses LLM and generative AI to create suitable Dialog Tasks for Conversation Design, Logic Building & Training by including the required nodes in the flow. 

You must provide an intent description, and the Platform handles the Conversation Generation for the Dialog Flow.

You can preview the conversation flow, view the Bot Action taken, improvise the intent description, and regenerate the conversation to make it more human-like.

The nodes and the flow for the Business Logic are automatically built for your conversation, and you only need to configure the flow transition.

The Platform auto-defines the Entities, Prompts, Error Prompts, Bot Action nodes, Service Tasks, Request Definition, Connection Rules, and other parameters.





<img src="../images/cpf(1).gif" alt="Automatic Dialog Generation" title="Automatic Dialog Generation" style="border: 1px solid gray; zoom:70%;">

**Usage**

Once you enable this feature:



1. The Platform triggers the flow when you launch a task for the first time.
2. The Platform presents the intent description and an option to generate conversation.
3. You can preview the generated conversation, edit the description, and regenerate it.
4. The Platform sends the updated description to Generative AI in the background to get the new conversation.
5. Once you’re satisfied with the conversation, generate a dialog task.

If this feature is disabled, you will not have the option to auto-generate a dialog flow when first launching a Dialog Task.

!!! note

    The Platform uses the configured API Key to authorize and generate the suggestions from OpenAI.



### Conversation Test Cases Suggestions

This feature provides a regression tool or a Playbook that creates a conversation test suite for each intent (new and old) in English or Non-English Bot language to evaluate the impact of the change on the conversation execution.


<img src="../images/cpf(2).gif" alt="Conversation Test Cases Suggestions" title="Conversation Test Cases Suggestions" style="border: 1px solid gray; zoom:70%;">





You can view input/utterance suggestions at every conversation step simulating the various input types and scenarios. This feature helps check if the task/intent is robust enough to handle random user utterances.

This feature also helps you predict and simulate the end user’s behavior and check if the VA can execute all the defined flows by generating user responses and presenting any digressions from the specified intent.

**Usage**



1. You can create a test suite by recording a live conversation with a VA by initiating the interaction or letting the VA initiate it.
2. An icon displays to indicate the user input suggestions from Generative AI.
3. The Platform triggers OpenAI or Anthropic Claude-1 based on your model selection to generate suggestions for user input where expected in English or a Non-English Bot Language.
4. The Platform shares the following information with OpenAI/Anthropic to generate suggestions.

    * Randomly picked intents from the VA (Dialog, FAQ),
    * Conversation flow,
    * Current Intent, if any,
    * Current node type:
        * For an entity node, the system sends the following:
            * Entity name,
            * Entity type,
            * Sample entity values. 
        * Types of user input scenarios:
            * Entities,
            * Without entities,
            * Different entity combinations in the user input,
            * Digression to another intent,
            * Trigger error scenarios.
    * You can regenerate suggestions if required.
    * You can accept the suggestions shown or type custom input at every step.
    * Create a Test Suite after stopping the recording and validating the model.

If the feature is disabled, the Platform doesn’t display the Generative AI suggestions icon and the suggestions themselves.[ Learn more.](../automation/testing/regression-testing/conversation-testing/create-a-test-suite.md#generated-user-response-suggestions)


### Conversation Summarization

This feature generates concise, natural language summaries of interactions between the virtual assistant, users, and human agents. It distills the key intents, entities, decisions, and outcomes into an easy-to-read synopsis. Companies can leverage conversation summarization to boost agent productivity, ensure process compliance, and create better contextual recommendations – without having to read lengthy transaction histories. It is pre-integrated with Kore.ai’s Contact Center platform. It is also extensible to third-party applications via API integration.
!!! note

    For existing bots, by default, the feature is enabled with the Kore.ai XO GPT Model. For new bots, the feature is disabled.

This feature is broadly implemented in two scenarios discussed below:

**Scenario 1**

In a contact center environment, the customer interacting with a VA may request to transfer to a live agent. During agent handoff, the agent must have the necessary context information and interaction history to assist the customers efficiently. The system generates the conversation transcript and interaction summary and routes it to the agent for better understanding.

An example of the usage: When Conversation Summary is enabled and the conversation is transferred to an agent in SmartAssist, the Conversation Summary is displayed on the Agent Console, as shown in the screenshot below.


<img src="../images/conversation-summary.png" alt="Conversation Summary" title="Conversation Summary" style="border: 1px solid gray; zoom:70%;">


**Usage**

The[ Conversation Summary](../apis/automation/conversation-summary.md) public API fetches the summary of the entire conversation included in the transcript. LLM and Generative AI are leveraged to provide a concise and informative conversation summary from the transcript.

**Scenario 2**

When closing a conversation request, contact centers require an agent to summarize the customer interaction and context in their closing notes to confirm that the issue has been resolved effectively. Closing notes help document the interactions, provide context for future interactions, support quality assurance efforts, and serve as references to deliver effective customer service.

**Usage** 

The system uses the[ Conversation Summary](../apis/automation/conversation-summary.md) public API to fetch the details of the entire conversation between the customer and the VA or agent. The API uses an open-source LLM to summarize conversations using a large number of sample conversation transcripts.




### NLP Batch Test Cases Suggestions

This feature lets you generate test cases based on the NLU Language selected, and add them to the test suite with minimum or no errors. You can give instructions in English or any Non-English bot language you’ve selected. Additionally, in case of a Multilingual NLU, the system generates utterances in the language prompted by the user. For instance, if your instructions are in Hindi, the utterances are generated in Hindi.


**Usage**

1. When creating a New Test Suite, select **Add Manually** or **Upload Test Cases File** to add test cases. 
2. **Add Manually** creates an empty test suite where you can generate test cases and do the following:
    * Select a Dialog Task.
    * Based on the intent context, the Generative AI generates test cases you can review and add to or remove from the Test Suite.
1. When you click **Generate Test Cases**, the Platform sends Generative AI (OpenAI or Anthropic Claude-1 model based on your selection) the following information to generate test cases:
    * Intent
    * Entities
    * Probable entity value
    * Different scenarios to simulate end-user utterances,
    * Random training utterances and test cases that are generated to avoid duplicate test cases from Generative AI.

If this feature is disabled, you will not have the option to generate test cases during batch testing.[ Learn more.](../automation/testing/regression-testing/batch-testing.md#generating-test-cases-automatically)





### Training Utterance Suggestions

This feature generates a list of suggested training utterances and NER annotations based on the selected NLU language for each intent description and Dialog Flow, eliminating the need for manual creation.



<img src="../images/cpf(3).gif" alt="Training Utterance Suggestions" title="Training Utterance Suggestions" style="border: 1px solid gray; zoom:70%;">





**Usage**

The Platform can generate utterances in the NLU language to train your VA.

Once you request to generate utterances for a given intent, the Platform provides utterance suggestions (in the selected NLU language) based on the following information: 



1. Intent
2. Entities and Entity Types
3. Probable entity values
4. Different scenarios for training utterances based on entities, a combination of entities, structurally different utterances, etc.

You can add/delete the suggested training utterances from the list or generate more suggestions.

If this feature is disabled, you won’t see the Suggestions tab on the training page.[ Learn more.](../automation/use-cases/dialogs/using-the-dialog-builder-tool.md#Automatically_Generate_Utterance_Suggestions)

### Use Case Suggestions

In the standard Virtual Assistant creation journey, use case suggestions help link the standard bot to a business scenario. Based on the selected use case, the system identifies and creates specific dialog tasks or interactions that the virtual assistant should be able to handle.

		

!!! note

    This feature is only available if **Default Language** is set to English.

	

		

			

Generating Use Cases automatically creates up to 30 customizable[ Dialog Tasks](../automation/use-cases/dialogs/dialog-tasks-overview.md) tailored to specific use cases. This streamlines the development process, as developers won’t need to manually create each interaction from scratch.

LLM and Generative AI help generate accurate suggestions automatically without configuring any LLM settings for this feature. Providing a detailed bot description is crucial for the effective functioning of this feature. The more information you provide about the virtual assistant’s intended purpose and capabilities, the better the generated use case suggestions will be.

**Usage**



1. The user initiates a new standard virtual assistant creation on the XO Platform.
2. The user provides the Bot Name and selects the following:
    * Purpose 
    * _Standard Bot_ for **Bot Type**.
    * _English_ for **Default Language**.
1. When adding the short Bot description, the user must include specific details on the high-level scenarios the Bot needs to handle.
2. The user generates use case suggestions by clicking **Get Use Cases**.
3. Based on the user’s description, the system generates improved use case suggestions with the help of the OpenAI Model.
<img src="../images/use-case-suggestions.png" alt="Use Case Suggestions" title="Use Case Suggestions" style="border: 1px solid gray; zoom:70%;"> 



1. The user selects the relevant use cases from the suggestions to create and configure the VA accordingly.

If you select Create without use cases when creating a bot, the system won’t provide use case suggestions for VA creation. Only the default Dialogs for Welcome and Fallback tasks are created for the VA.[ Learn more](../getting-started/building-a-virtual-assistant.md).



		


## Search AI Features

### Model and Supported Features - Search AI

The following table displays the features and the supported models. 

(✅ Supported | ❌ Not supported)


|Model|Answer Generation|Vector Generation|Query Rephrasing|
|:----:|:----:|:----:|:----:|
|Azure OpenAI – <br>GPT 4, GPT 4 Turbo, GPT 4o, and GPT-4o mini*|✅|❌|❌|
|OpenAI – <br>GPT 3.5 Turbo, GPT 4, GPT 4 Turbo, GPT 4o, and GPT-4o mini*|✅|❌|❌|
|Provider's New LLM**|✅|❌|❌|
|Custom LLM|✅|✅|❌|
|Kore.ai XO GPT|✅|✅|✅|

\* The OpenAI GPT-4o mini and Azure OpenAI GPT-4o mini do not include system prompts, but they can be used with custom prompts. 

\** To use the Provider's New LLM, you must create a custom prompt as system prompts are unavailable.

### Answer Generation

This feature helps generate an answer to the user question based on the data ingested into the Search AI application. The relevant data with a user query is inserted into the prompt, and the configured LLM responds with the answer. This answer is then formatted appropriately and presented to the user. [Learn more](../searchai/answer-configuration.md#answers-generation).

### Vector Generation

This feature helps create vector embeddings for all the ingested data in the Search AI application. When the user inputs a query, the query is converted into an embedding, and then a vector search is performed to get a list of relevant data from the ingested data. This relevant data is then sent to the answer generation feature.

### Query Rephrasing

To learn more about the feature, see [Rephrase User Query](#rephrase-user-query).

## Agent AI Features

### Model and Supported Features - Agent AI

The following table displays the features and the supported models. 

(✅ Supported | ❌ Not supported)


|Model|Agent Response Rephrasing|Generating Opposite Utterance Suggestions|Generating Similar Utterance Suggestions|
|:----:|:----:|:----:|:----:|
|Azure OpenAI – GPT 4|❌|✅|✅|
|OpenAI – GPT 3.5 Turbo|✅| ✅|✅|
|OpenAI – <br>GPT 4, GPT 4 Turbo, and GPT 4o|❌|✅|✅|


### Agent Response Rephrasing
Agents will be able to choose the LLM to rephrase their responses in the following tones.

* **Formalize**: Allows agents to elevate the formality of their writing, making it suitable for business or any other formal contexts.
* **Friendly**: Offers suggestions and improvements to promote a friendly and approachable tone in text.
* **Expand**: Allows agents to elevate the formality of their writing, making it suitable for business or any other formal contexts.
* **Rephrase**: Allows agents to elevate the formality of their writing, making it suitable for business or any other formal contexts.


### Generating Opposite Utterance Suggestions
Use LLM models for generating opposite utterances during design time.

### Generating Similar Answer Suggestions
Use LLM models for generating similar answers during design time based on semantic similarity.

### Generating Similar Utterance Suggestions
Use LLM models for generating similar utterances during design time based on semantic similarity.


