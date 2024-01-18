
# Dynamic Conversations Features

	

		

			

The Dynamic Conversations features boost your virtual assistant’s performance with LLM-powered runtime features designed to streamline development and reduce time and effort. By default, all the features are disabled. To enable the feature, select the model and toggle the status to enable it. You can select another supported model for a feature if you have configured multiple models. You can also change the model and its settings.

Steps to enable the feature:



1. Navigate to **Build** > **Natural Language** > **Generative AI & LLM** > **Dynamic Conversations**. 


    ![alt_text](images/dcf(1).jpg "image_tooltip")

2. Select the preferred model from the model drop-down menu for a feature. (For a pre-built model, the default prompt is used that can’t be changed.) 
3. Turn on the Status toggle. The success message is displayed.

		

	

	

		

			




		

	


## Change Settings for a Pre-built Model

	

		

			

You can change the selected model’s settings if required. **In most cases**, **the default settings work fine**.

Follow these steps:



1. Go to **Build** > **Natural Language** > **Generative AI & LLM** > **Dynamic Conversations**.
2. Hover over the feature to view the **Advance Setting** (gear) icon. 


    ![alt_text](images/dcf(2).jpg "image_tooltip")

3. Click the **Advance Setting**. The **Advance Settings** dialog box is displayed. 


    ![alt_text](images/dcf(5).png "image_tooltip")



Adjusting the settings allows you to fine-tune the model’s behavior to meet your needs. The default settings work fine for most cases. You can tweak the settings and find the right balance for your use case. A few settings are common in the features, and a few are feature-specific:

* **Model**: The selected model for which the settings are displayed.
* **Instructions or Context**: Add feature/use case-specific instructions or context to guide the model.
* **Temperature**: The setting controls the randomness of the model’s output. A higher temperature, like 0.8 or above, can result in unexpected, creative, and less relevant responses. On the other hand, a lower temperature, like 0.5 or below, makes the output more focused and relevant.
* **Max Tokens**: It indicates the total number of tokens used in the API call to the model. It affects the cost and the time taken to receive a response. A token can be as short as one character or as long as one word, depending on the text.
* **Number of Previous User Inputs**: Indicates how many previous user messages should be sent to the model as context for rephrasing the response sent through the respective node. For example, 5 means that the previous 5 responses are sent as context.
* **Additional Instructions**: Add specific instructions on how prompts should be rephrased. You can create a persona, ask it to rephrase in a particular tone, etc.
* **Similarity Threshold**: The Similarity Threshold is applicable for the Answer from Docs feature. This threshold refers to the similarity between the user utterance and the document chunks. The platform shortlists all chunks that are above the threshold and sends these chunks to the LLMs to auto-generate the responses. Define a suitable threshold that works best for your use case. Setting a higher threshold limits the number of chunks and may not generate any result. Setting a lower threshold might qualify too many chunks and might dilute the response.

		

	

	

		

			


## Model and Feature Support Matrix

The following table displays the Dynamic Conversation features and the supported models. 

(✅ Supported | ❌ Not Supported)


<table>
  <tr>
   <td><strong>Model</strong>
   </td>
   <td>GenAI Node
   </td>
   <td>Answer From Documents
   </td>
   <td>GenAI Prompt
   </td>
   <td>Rephrase Dialog Responses
   </td>
   <td>Zero-shot ML Model
   </td>
   <td>Repeat Responses
   </td>
  </tr>
  <tr>
   <td>Azure OpenAI – GPT 3.5 Turbo
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td>Azure OpenAI – GPT 4
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>❌
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td>OpenAI – GPT 3.5 Turbo
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td>OpenAI – GPT 4
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>❌
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td>Anthropic – Claude Instant
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>❌
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td>Anthropic – Claude
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>✅
   </td>
   <td>✅
   </td>
   <td>❌
   </td>
   <td>✅
   </td>
  </tr>
  <tr>
   <td>Custom LLM
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
   <td>❌
   </td>
  </tr>
</table>


!!! note

    Azure OpenAI and OpenAI have officially ended support for their GPT-3 model on January 4, 2024. We recommend selecting a higher or alternate model for supported features as soon as possible.[ Learn more](https://platform.openai.com/docs/deprecations).


## Feature Details


### GenAI Node

When enabled, this feature lets you add an GenAI Node to Dialog Tasks. This node allows you to collect Entities from end-users in a free-flowing conversation (in the selected English/Non-English Bot Language) using LLM and Generative AI in the background. You can define the entities to be collected as well as rules & scenarios in English and Non-English Bot languages. You can configure node properties just like any other node. You can also use the GenAI Node across Dialog Tasks.




![alt_text](images/dcf(1).png "image_tooltip")


**Usage**

When creating or editing a Dialog Task that’s created manually or[ auto-generated](https://developer.kore.ai/docs/bots/chatbot-overview/using-the-dialog-builder-tool/#Auto-Generated_Dialog_Tasks), you can find a node called GenAI Node within your nodes list. 

When this feature is disabled, the node is unavailable within the Dialog Builder.[ Learn more](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/genai-node/).


### Answer From Documents

This feature leverages a Large Language Model (LLM) and Generative AI models from OpenAI to generate answers for FAQs by processing uploaded documents in an unstructured PDF format and user queries.




![alt_text](images/dcf(4).png "image_tooltip")


**Usage**

After redacting personally identifiable information, the uploaded documents and the end-user queries are shared with OpenAI to curate the answers.

Once you meet the prerequisites and enable the feature:



1. You should[ upload the PDF document(s)](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/answer-from-documents/#Upload_PDF_Documents) to be shared with the third-party system (OpenAI). You can upload a maximum of 10 documents with a size of not more than 5 MB.
2. The uploaded documents are listed under the **Answer from Documents** section with the following details:
    * Upload Name
    * Uploaded by
    * Uploaded on
    * Status (Active/Inactive)
    * Actions (View and Delete File)
1. A good practice is to test the answer generation by asking the VA a question directly related to the contents of your uploaded documents.[ Learn more](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/answer-from-documents/#Test_Answer_Generation).
2. You can view, delete, and disable the uploaded documents.
3. The VA provides answers only from uploaded documents that are active, whereas disabled documents are ignored.

If the feature is disabled, you won’t be able to send queries to LLMs as a fallback.[ Learn more](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/answer-from-documents/#Disable_Answer_from_Documents).


### GenAI Prompt

This feature lets you define custom user prompts based on the conversation context and the response from the LLMs. You can define the subsequent conversation flow by selecting a specific AI model, tweaking its settings, and previewing the response for the prompt.

 

**Usage**



1. When building the Dialog Flow, click the **“+”** button, and select the **GenAI Prompt** node. 


    ![alt_text](images/dcf(2).png "image_tooltip")

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

If this feature is disabled, you cannot configure the ML model to build custom prompts using OpenAI for different use cases.[ Learn more](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/genai-prompt/).


### Rephrase Dialog Responses

This feature sends all User Prompts, Error Prompts, and Bot Responses to the Generative AI along with the conversation context, which depends on the configured number of user inputs. Responses are rephrased in English or the selected Non-English Bot Language based on the context and user emotion, providing a more empathetic, natural, and contextual conversation experience to the end-user. You can give instructions (additional instructions) in English or any other bot language you select.




![alt_text](images/dcf(1).gif "image_tooltip")


**Usage**

When configuring a[ Message](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/working-with-the-message-nodes/#Component_Properties),[ Entity](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/working-with-the-entity-node/#Component_Properties), or[ Confirmation](https://developer.kore.ai/docs/bots/bot-builder-tool/dialog-task/working-with-the-confirmation-nodes/#Component_Properties)<span style="text-decoration:underline;"> </span>node, you can enable the **Rephrase Response** feature (disabled by default). This lets you set the number of user inputs sent to OpenAI/Anthropic Claude-1 based on the selected model as context for rephrasing the response sent through the node. You can choose between 0 and 5, where 0 means that no previous input is considered, while 5 means that the previous. 5 responses are sent as context.

When this feature is disabled, the Rephrase Response section is not visible within your node’s Component Properties.





![alt_text](images/dcf(3).png "image_tooltip")



### Zero-shot ML Model

This feature uses a Azure OpenAI or OpenAI LLM models to help the ML Engine identify the relevant intents from user utterances based on semantic similarity. By identifying the logical intent during run time, this feature eliminates the need for training data. The Zero-shot ML model requires well-defined intents to work well. This training approach is well-suited for virtual assistants with relatively fewer intents and distinct use cases.

!!! note

    The Zero-shot model is production-ready in English but experimental in other languages. We advise caution before using it in production for non-English languages.

**Usage**

Before performing utterance testing, the user selects the **Zero-shot Model with OpenAI** Network Type. During utterance testing, the user provides a more descriptive input with a subject, object, and nouns. Once the test runs, the system identifies the most logical intent as the definitive match by comparing the following:



* User utterance input
* Intent names

The identified intent is then displayed as the matched intent.

If this feature is disabled, the system won’t identify and display the logical and matched intent during utterance testing.[ Learn more](https://developer.kore.ai/docs/bots/nlp/user-utterances/#Zero-Shot_Learning_Model_with_OpenAI).


### Repeat Responses

This feature uses LLM to reiterate the recent bot responses when the Repeat Response event is triggered. Bot developers can enable the event and customize the trigger conditions. This empowers end-users to ask the bot to repeat its recent responses at any point during the conversation. Currently, this event is supported for IVR, Audiocodes, and Twilio Voice channels.[ Learn more](https://developer.kore.ai/docs/bots/bot-intelligence/event-based-bot-actions/#Repeat_Bot_Response_Event).


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

If this feature is disabled, the system won’t identify and display the logically matched intent during utterance testing.[ Learn more](https://developer.kore.ai/docs/bots/nlp/user-utterances/#Few-Shot_Model_Koreai_Hosted_Embeddings).

		
