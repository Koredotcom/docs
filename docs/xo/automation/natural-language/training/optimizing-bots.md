# Improving VA Performance – NLP Optimization

A chatbot’s ability to consistently understand and interact with a user is dictated by the robustness of the Natural Language Processing (NLP) that powers the conversation.

Kore.ai’s platform uses a unique Natural Language Processing strategy, combining Fundamental Meaning and Machine Learning engines for maximum conversation accuracy with little upfront training. Bots built on Kore.ai’s platform can understand and process multi-sentence messages, multiple intents, contextual references made by the user, patterns and idiomatic sentences, and more. [See here for an overview](../../nlp-introduction/){:target="_blank"}.

The NL engine includes recognition support for a wide range of entities and provides the tools needed to further customize your bot’s language understanding using additional patterns.


## Optimizing your Virtual Assistant

To make sure your VA is NLP-optimized, you can define, and refine names and terms used for your assistant to enhance the NLP interpreter accuracy and performance to recognize the right bot task for the user.
You begin by defining synonyms at the task level, and then manage and refine synonyms, and test at the bot level.

To get started optimizing your Virtual Assistant and tasks, you need to access the **Natural Language** options. These options are categorized under various headings for your convenience:

* **Training** – In the Training section, you can define how the NLP interpreter recognizes and responds to the user input for a VA, and then train the interpreter to recognize the correct user intent.
    * **Machine Learning Utterances** – With Machine Learning, you can enhance recognition of user utterances for better recognition and system performance for the user intent which is the intended task that the user wants to access.
    * **Synonyms & Concepts** – You can use the Synonyms section to optimize the NLP interpreter accuracy in recognizing the correct intent and entity provided by the user.
    * **Patterns & Rules** – In the Patterns section, you can define slang, metaphors, or other idiomatic expressions for intent and entities.

* **Thresholds & Configurations** – In this section, you can define the recognition confidence levels required for minimum recognition actions, the confidence range for asking a user to choose from a list of possible matches, and a recognition confidence level for a positive match for the knowledge graph.
* Modify **Advanced Settings** like auto training setting for user utterances and negative intent patterns.


<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image1.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image1.png "image_tooltip")


## NLP Version 3

Version 10.0 of the XO Platform includes a new version of the NLP Engine (Version 3) that comes with many advantages:

* Improved performance and accuracy of Traits Engine.
* Improved accuracy using network types like Transformer and KAEN models for the English Language.
* Improved accuracy using the Transformer model for other languages.
* Improved the security of NLP by addressing several security vulnerabilities.
* Improved performance by enabling LLM & Generative AI.

In addition, it allows you to explore the latest features like [Zero-shot Model](../machine-learning-engine/#zero-shot-learning-model-with-openai){:target="_blank"}, [Few-shot Model](../machine-learning-engine/#few-shot-model-koreai-hosted-embeddings){:target="_blank"}, and [Intent Discovery](../../../tools/intent-discovery/){:target="_blank"}.

The new VAs will automatically use the new version by default. We recommend migrating all your existing VAs to the new version to experience the new features and improvements.  Also, the **bot will face downtime during the upgrade**. To avoid downtime in crucial hours, it is recommended that you upgrade the bot manually at the earliest. Backup your virtual assistant before upgrading, validate the NLP performance using the Batch Testing module, and publish the changes.

With the release of v10.1.11 on September 23, 2023, a virtual assistant created in NLP v2 can only be trained and published after upgrading to NLP v3.

All ‘inactive bots’ are automatically upgraded to NLP v3. Inactive bots are defined as the ones that did not have any end-user interaction in the past 90 days as of the deployment date. The bot designers will need to manually trigger the training and publishing of the bots to ensure that they function correctly.

We also plan to auto-upgrade all ‘active bots’. Starting November 18, 2023, all active bots using NLP v2 will be automatically upgraded to NLP v3 over the next two weeks. The upgrade also includes initiating training for all bot languages in both the configured and published copies for customer bots. During this upgrade process, the intent identification may not function as expected, potentially leading to inconsistent user experiences. To minimize disruptions, we strongly recommend upgrading your bots manually before November 18 during your non-critical business hours. 

If a **customer bot** is using NLP v2 and has been active in the last three months, then the upgrade happens as below:

* Configured copy
    * The Platform will upgrade the NLP version from v2 to v3 for all bot languages.
    * After changing the version, it will trigger the training.
    * Once the training is completed for one language, it will initiate the training for another language.

* Published copy
    * The Platform will upgrade the NLP version from v2 to v3 for all languages.
    * After changing the version, it will trigger the training.
    * Once the training is completed for one language, it will initiate the training for another language.

After the upgrade, the virtual assistant’s configured copy will be in NLP v3, but the published copy will remain in NLP v2. Upon publishing the virtual assistant for the first time post-upgrade, its version will change to NLP v3.

On-Premise customers can run both versions in parallel or switch directly to Version 3.

You can start optimizing your Virtual Assistant, by:

* Customizing the ML engine, [see here for more](../machine-learning-engine/){:target="_blank"}.
* Customizing the KG engine, [see here for more](../../../../answers/knowledge-ai/knowledge-graph-training/){:target="_blank"}.
* Customizing the FM engine, [see here for more](../fundamental-meaning/){:target="_blank"}.
* Customizing the Traits engine, [see here for more](../traits/){:target="_blank"}.
* Customizing the R&R engine, [see here for more](../ranking-and-resolver/){:target="_blank"}.