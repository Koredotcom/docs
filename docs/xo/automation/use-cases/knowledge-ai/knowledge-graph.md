# Knowledge Graph Training

[Training your Assistant](https://developer.kore.ai/docs/bots/nlp/optimizing-bots/) is not restricted to the Machine Learning and Fundamental Meaning engines. You must also train the Knowledge Graph (KG) engine.

The Ontology-based Knowledge Graph turns static FAQ text into an intelligent, personalized conversational experience. It uses domain terms and relationships thus reducing the training needs. It also has the capability to enable the ontology weighted features whenever ML gets confused and to automate conversational dialog for resolving appropriate answers.

The Few-Shot Knowledge Graph leverages Kore.ai’s LLM and lets you add FAQs without building an ontology. Less training and maintenance are required since you do not need to configure the graph term-by-term. [Learn more about Knowledge Graph Types](https://docsinternal-kore.github.io/docs/xo/automation/use-cases/knowledge-ai/knowledge-graph-overview/#knowledge-graph-types).

The Knowledge Graph engine thus responds to users’ intents by identifying the appropriate questions within the Knowledge Graph, and then presenting the user with the appropriate response.

You can find the Knowledge Graph by selecting your desired VA, then going to **Build** > **Conversation Skills** > **Knowledge Graph**.

<div class="admonition note">
<p class="admonition-title">Training a Few-Shot Knowledge Graph</p>
<p>Few-Shot Knowledge Graphs do not require an ontology and do not perform path qualification. Instead, they identify intents using semantic similarity and pattern recognition. However, if you want to train the VA on a specific use case for which the appropriate FAQ is not identified, you can map FAQs to an ontology, similar to what you would do with an Ontology-based Graph.</p>

<p>The main difference concerning training is that in the Few-Shot KG, Terms don't require some of the training configurations needed in an Ontology Graph. Here are some key pointers:</p>

<p><ul><li>Default Terms are not available. The only exception is when you switch from an Ontology Graph, in which case existing Default terms are stored as such until updated. Afterward, Default terms become Organizer terms and can be set as Mandatory.</li>
<li>Organizer Terms do not support Path-Level and Knowledge Graph Synonyms. They support Intent Preconditions and Context Output.</li> 
<li>Mandatory Terms support Traits, Path-Level and Knowledge Graph Synonyms, Intent Preconditions, and Context Output, just like in an Ontology-based Graph.</li>
<li>You can set all Thresholds and Configurations except Path Coverage and Lemmatization using Parts of Speech, Search in Answer, and Qualify Contextual Paths, which are not supported by Few-Shot Graphs.</li></ul></p></div>

<p>See the <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/knowledge-ai/knowledge-graph-overview/#compare-knowledge-graph-types">Knowledge Graph Types Comparison Table</a> for a detailed list of supported features.</p>

<p>Also, see <a href="https://docsinternal-kore.github.io/docs/xo/automation/use-cases/knowledge-ai/knowledge-graph-training/#training-configuration">Training Configuration</a> below for training setup details.</p>

## Knowledge Graph Engine Capabilities

The following are the overall capabilities of the Knowledge Graph Engine:

* **Ease of Training using Synonyms**: Kore.ai’s Knowledge Graph has a provision to associate synonyms against a graph node. This helps capture the variation in a question. For example, *flight* can be used as a synonym for *plane* in an FAQ such as *How can I buy a plane ticket*?
* **Better Coverage with Alternate Questions**: The Knowledge Graph has a provision to add alternate questions. This helps us to capture the various ways a user might ask the same question. For example, in *How do I change my flight?* we can add an alternate question as *Can I change my flight?*
* **Improved Accuracy**: Ontology-driven question-answers reduce the possibility of false positives.
* **Weighing Phrases using Traits**: Kore.ai’s Knowledge Graph engine includes a concept of traits for filtering out irrelevant suggestions. [Learn More](https://developer.kore.ai/docs/bots/nlp/traits/).
* **Ability to Mark Term Importance**: The Knowledge Graph has a provision to mark that an ontology term is important. For example, in the question, *How to book a flight?*, the word *flight* is an important term. If the *flight* keyword is not present in the user utterance, then it makes little sense.
* **Ability to Group Relevant Nodes**: As the graph grows in size, managing graph nodes can become a challenging task. Using the *organizer node* construct of the ontology engine, developers can group relevant child nodes under a parent node.

## FAQ Detection Steps

Here are the steps that the Knowledge Graph Engine takes when detecting FAQs:

* **Step 1: Extract Nodes**: The KG engine processes the user utterance to extract the term (ontology nodes) present in the graph. It also takes into consideration the synonyms, traits, and tags associated with the terms.
* **Step 2: Query Graph**: The KG engine fetches all the paths that consist of the extracted nodes.
* **Step 3: Shortlist Paths**: All the paths consisting of 50% or more matching terms with the user utterance are shortlisted for further processing.
<div class="admonition note">
<p class="admonition-title">Note</p>
<p>Patch coverage computation doesn't consider the root node.</p></div>

* **Step 4: Filter with Traits**: If traits are defined in the Knowledge Graph, paths shortlisted in the above step are further filtered based on the confidence score of a classification algorithm in user utterance. 
* **Step 5: Send to Ranker**: The KG engine then sends the shortlisted paths to the Ontology Ranker Program.
* **Step 6: Score based on Cosine Similarity**: The Ontology Ranker makes use of user-defined synonyms, lemma forms of word, n-grams, stop words, to compute the cosine similarity between the user utterance and the shortlisted questions. Paths are ranked in non-increasing order of cosine similarity score.
* **Step 7: Qualify Matches**: The Ontology Ranker then qualifies the paths as follows:
    * Paths with score >= upper_threshold are qualified as an answer (definitive match).
    * Paths with lower_threshold > score > upper_threshold are marked as suggestions (probable match).
    * Paths with a score > lower_threshold are ignored.

## Training Guidelines

From the Knowledge Graph, follow these steps to build and train the corresponding Knowledge Graph:

1. Identify terms by grouping the unique words in each FAQ question. Build a hierarchy based on all such unique words.
2. Ensure that each node has not more than 25 questions.
3. Associate traits with terms to enable filtering FAQs from multiple identified results.
4. Define synonyms for each term/node in the hierarchy. Ensure that all the different ways to call the term are defined.
5. Depending on the importance of each term in a path, mark them as either mandatory or regular.
6. Define alternative questions for each FAQ to ensure better coverage.
7. Manage context for accurate response.
8. Use Stop Words to filter unwanted utterances.

## Training Configuration

This article presupposes that you already know the basics of building your Knowledge Graph. If not, please read [this article](https://developer.kore.ai/docs/bots/bot-builder-tool/knowledge-task/knowledge-ontology/).

In order to configure the training of your Knowledge Graph for improved VA performance, we recommend that you go through as many of the following parameters as possible. These parameters involve:

* Adjusting the Term Type to your VA’s needs when adding terms to your graph,
* Setting tags for FAQs to improve detection,
* Configuring synonyms for Knowledge Graph terms to enhance path detection and help the VA find the appropriate questions to answer by widening the spectrum of words that can be used to find a specific question,
* Adding Traits to detect relevant information that improves intent or scenario detection.
* Manage Context to help users complete tasks faster and create more natural, human-like back and forth conversations.
* Add Stop Words which will be discarded from intent scoring, even when they are a node term. 

We will discuss these parameters in detail in the following sections.

### Term Type

Designate the terms and tags in the Knowledge Graph as Default, or Mandatory, or Organizer depending on their importance in qualifying matching paths: You can configure term types by accessing the term/node settings.

<img src="../../images/term-type-settings.png" alt="term type setting" title="term type setting" style="border: 1px solid gray; zoom:75%;">

The available term types are: 

* **Default**: Default terms do not have any particular considerations in shortlisting qualified paths.
* **Mandatory**: When you mark a term as Mandatory, all paths associated with the term are shortlisted for ranking only if the user’s utterance includes the mandatory term or its synonyms.
* **Organizer**: Term can be marked as being a part of the Knowledge Graph only for organizing questions (this option is available only for terms, not tags).
<img src="../../images/term-types.png" alt="term types" title="term types" style="border: 1px solid gray; zoom:75%;">

### Tags

When you type a question in the Intent Name **Add Question** field, the Knowledge Graph suggests some tags that you can add to the graph based on the text. To include a suggested term to the path, select the tag from the drop-down list that appears when the cursor is in the Add Term field. You can also add custom tags by typing them in the add term field and hitting the Enter/Return key.

<img src="../../images/term-field-custom-tag.png" alt="term field custom tag" title="term field custom tag" style="border: 1px solid gray; zoom:75%;">

After you add a tag, it is visible below the question like a tag everywhere the question appears. Tags work exactly like terms but are not displayed in the Knowledge Graph to avoid clutter.