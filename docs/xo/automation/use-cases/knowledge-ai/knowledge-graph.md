# Knowledge Graph Training

[Training your Assistant](https://developer.kore.ai/docs/bots/nlp/optimizing-bots/) is not restricted to the Machine Learning and Fundamental Meaning engines. You must also train the Knowledge Graph (KG) engine.

The Ontology-based Knowledge Graph turns static FAQ text into an intelligent, personalized conversational experience. It uses domain terms and relationships thus reducing the training needs. It also has the capability to enable the ontology weighted features whenever ML gets confused and to automate conversational dialog for resolving appropriate answers.

The Few-Shot Knowledge Graph leverages Kore.ai’s LLM and lets you add FAQs without building an ontology. Less training and maintenance are required since you do not need to configure the graph term-by-term. [Learn more about Knowledge Graph Types](https://docsinternal-kore.github.io/docs/xo/automation/use-cases/knowledge-ai/knowledge-graph-overview/#knowledge-graph-types).

The Knowledge Graph engine thus responds to users’ intents by identifying the appropriate questions within the Knowledge Graph, and then presenting the user with the appropriate response.

You can find the Knowledge Graph by selecting your desired VA, then going to **Build > Conversation Skills > Knowledge Graph.**

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