# Knowledge Graph Training

[Training your Assistant](https://developer.kore.ai/docs/bots/nlp/optimizing-bots/)is not restricted to the Machine Learning and Fundamental Meaning engines. You must also train the Knowledge Graph (KG) engine.

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