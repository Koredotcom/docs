


# DialogGPT Upcoming Features

**DialogGPT Rollout Plan**

The implementation of DialogGPT is planned in three phases:



* Phase 1 (included in this release): Focuses on core capabilities like the main DialogGPT flow, RAG pipeline, conversation orchestrator, and handling of common conversation intents.
* Phase 2 (future release): Introduces advanced features such as Universal Bot support, granular intent identification, custom entity extraction, and new XO GPT models.
* Phase 3 (future release): Includes extended capabilities like multilingual support and implementation of guardrails

This release focuses on delivering the following foundational elements of DialogGPT:



* RAG Pipeline: Utilizing Retrieval-Augmented Generation for efficient shortlisting of relevant information chunks.
* Conversation Orchestrator: This component identifies the most probable intent and determines the appropriate fulfillment type. It will support both system-provided and custom models.
* Management of Common Conversation Intents: This involves handling typical conversational intents such as hold, repeat, start over, and others, providing a natural and intuitive conversational flow.
* Out-of-the-box Event Handlers: Pre-built event handlers to streamline common conversational scenarios.

Upcoming releases will include the following advanced features:



* Universal Bot (UB) Support: Integrating DialogGPT with Universal Bots to enhance routing and orchestration capabilities across multiple specialized virtual assistants.
* Granular Intent Identification: Enabling the identification of fine-grained intents for a more precise understanding of user needs.
* Custom Entity Extraction using the Context Node: Facilitating the extraction of custom entities, leveraging the DialogGPT Context Node.
* New XO GPT Models: Models tailored for specific tasks within DialogGPT, including models for Conversation Orchestration, Granular Intent Identification, and Bot Response Generation.
* Comprehensive Testing Tools: Provision of enhanced testing tools to evaluate high-level and granular intent detection accuracy.
* Advanced Analytics and Reporting: Expanded analytics capabilities with new metrics to monitor intent identification rates, containment metrics, failure points, and other key performance indicators.
* Migration from XO v10 to v11 DialogGPT: Enabling the migration of existing implementations from XO v10 to the new DialogGPT framework within v11.
* Multi-lingual Support: Expanding language support to facilitate broader adoption and accessibility across diverse user bases.
* Implementation of Guardrails: Introducing safeguards to ensure responsible and ethical use of DialogGPT's capabilities.