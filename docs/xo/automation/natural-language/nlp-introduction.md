# Natural Language Processing

Conversational VAs enable machines to interact organically with users and deliver high-quality customer experiences. The key for a conversational VA to understand human interactions lies in its ability to identify the user’s intention (Intent Detection), extract useful information (Entity Extraction), and map them to relevant actions or tasks (Dialog Task execution). 

[Learn more](https://developer.kore.ai/docs/bots/chatbot-overview/chatbot-overview/#How_Do_Conversational_Virtual_Assistants_Work) about how Conversational VAs work and the key components that define their functioning.

**Natural Language Processing (NLP)** is the science of deducing the intention and related information from natural conversations. The conversation flow in Kore.ai virtual assistants passes through various Natural Language Understanding (NLU) engines and conversation engines before the VA decides upon action and response.

This article gives an overview of the NLP flow within a Kore.ai virtual assistant and demonstrates how a developer can leverage the XO Platform’s features to build efficient VAs that elevate customer experiences..

## Kore.ai’s NLP Approach

The Kore.ai Experience Optimization (XO) Platform employs a multi-engine approach to natural language, which combines the following three models for optimal outcomes:

* **Fundamental Meaning (FM):** A computational linguistics approach that is built on ChatScript. The model analyzes the structure of a user’s utterance to identify each word by meaning, position, conjugation, capitalization, plurality, and other factors;
* **Machine Learning (ML):** Kore.ai uses state-of-the-art NLP algorithms and models for machine learning to enable VAs to be trained and to gradually improve their intelligence;
* **Knowledge Graph Engine (KG):** The Knowledge Graph helps you turn your static FAQ text into an intelligent and personalized conversational experience.

With its three-fold approach, the Kore.ai XO Platform enables you to accelerate the Natural Language Understanding (NLU) performance of the virtual assistant and achieve optimal accuracy with relatively less training data. Kore.ai automatically enables the trained NLP capabilities to all built-in and custom VAs, and powers the way they communicate, understand, and respond to a user request.

## NLP Building Blocks

When a virtual assistant built on the Kore.ai XO Platform receives a user utterance, it is processed to identify the user intent, extract any additional information (entities), and then answer the user via a task execution. NLP is mostly concerned with the first two – intent detection and entity extraction.

<img src="../images/nlp-building-blocks.png" alt="nlp building blocks" title="nlp building blocks" style="border: 1px solid gray; zoom:75%;">

## Steps in a Conversation Flow

The Conversation Flow involves the following steps:

1. **NLP Analysis**: The user utterance goes through a series of NLP engines for entity extraction and intent detection. (You can extend the out-of-the-box NLP functionality to use your own engine. You can install the [Bot Kit SDK](https://developer.kore.ai/docs/bots/sdks/using-the-botkit-sdk/) and easily integrate the virtual assistant with any 3rd party NLP engine. The output from the 3rd party NLP engine complements the outputs from Kore.ai thus adding to the efficiency and accuracy of the engine.) The engines provided by the Kore.ai XO Platform are as follows:
    * **Fundamental Meaning Engine** which breaks up the utterances based on the grammar constructs;
    * **Machine Learning Engine** which classifies individual words in the utterance, using an example-based, auto-learning training process;
    * **Knowledge Collection Engine** which mostly deals with FAQ type user queries. It can also be configured to trigger tasks in response to the user query;
    * **Traits Engine** which is a multiclass classifier and can identify multiple categories in user utterances thus aiding in refining user intent detection;
    * **Small Talk Engine** which adds human flavor to the conversations;
    * **Ranking and Resolver** to score the results from the above engines and rank them according to the set business rules, with the purpose of deciding on the winning intent.
2. **Task Execution**: The winning intent along with the entities extracted then passes through the conversation engine for the actual task execution. This engine maintains the state or context of the conversation with information like user details, the previous intents requested by the user, and any other information as tagged by the business rules. This helps provide a near-human conversation experience. The conversation engine uses this state information along with the following conditions to accept or reject the intent identified by the NLU engines
    * **Pre-conditions** – if an intent has a set of predefined conditions configured and if any of these conditions are not satisfied the winning intent is then rejected. For example, a _booking payment_ intent should have the _payee_ details available.
    * **Negative patterns** capture the presence of a pattern that should not identify a particular intent. For example “_I lost my bag, how do I retrieve it_” should, not assume that the user wants to be provided with information about baggage, and instead attempt to track their bag, based on the presence of the phrase “lost my bag”
    * **Event handling** – events defined for a welcome message, sentiment analysis, etc
3. **Interruptions handling**: Other conditions such as Interruption settings (to handle situations where another intent is identified during the course of an ongoing task) or Sentiment Analysis settings (user sounds angry and hence should be transferred to an agent) are crucial for the action to be taken.
4. **Response Generation**: A response is generated and presented to the user based on the channel of interaction. The response could be a success message, information as requested by the user, prompt for missing information or message concerning their transfer to a human agent.

    <img src="../images/conversation-flow-steps.png" alt="conversation flow steps" title="conversation flow steps" style="border: 1px solid gray; zoom:75%;">

<div class="admonition note">
<p class="admonition-title">Important References</p>
<p><ul><li>To understand <b>NLP Settings and Guidelines</b>, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/natural-language/nlp-guidelines/">here</a>.</li>
<li>To learn about <b>NLP Training</b> for your VA, click <a href="https://docsinternal-kore.github.io/docs/xo/automation/natural-language/nlp-training-overview/">here</a>.</li></ul></p>
</div>

