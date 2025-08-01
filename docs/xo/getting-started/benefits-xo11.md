# Benefits of AI for Service (XO v11)

XO v11 represents a significant evolution in the Kore.ai platform, offering transformative benefits that address the limitations of fragmented conversational experiences while introducing cutting-edge AI capabilities. This major upgrade delivers a unified, intelligent, and collaborative platform that fundamentally enhances how organizations build, manage, and deploy conversational AI solutions.

## Automation AI

<font size="4">Unified Conversation Session</font>

Earlier, integration with individual Kore.ai products like Bots Platform, SmartAssist, Search Assist, and Agent Assist relied on APIs or Webhooks. This resulted in disjointed conversations without a central session to track complete interactions.

With XO11, conversations are now unified across modules, enabling seamless tracking of an end-to-end customer interaction within a single session. This streamlined approach enhances analytics, simplifies cross-module data retrieval, and improves workflow efficiency. 

<font size="4">Improved Dialog Builder Experience</font>

The new Dialog Builder v3 offers an intuitive, collaborative environment with features like infinite canvas, multi-user parallel collaboration, visual flow design, and no-code templates. This significantly reduces development time while improving the quality and maintainability of conversational flows.

Key Capabilities

* **Free Flow Designing**: Ability to easily design the flow without worrying too much about the logic at the beginning. Similar to flow designing tools like Lucid Charts, Miro boards, etc.
* **Ease of using transitions**: Ability to easily connect nodes without fully defining the transition rule. Transition rules can start with a simple description and can be enforced at later stages while testing/publishing.
* **Infinite Canvas**: Infinite canvas allows designers to logically arrange the flow (based on purpose, objective, etc.) as needed, making it easy to review and audit the flows.   
* **Commenting**: Ability to have comment threads to ask questions and exchange ideas 
* **Spacious Nodes:** Ability to read and write the key information like name, type, prompts/messages, and the transition conditions. 
* **Annotation Tools / White Boarding:** Designers will like to add annotations that explain the flow, thought process, ideas, etc, alongside the flow. This helps them in ideation and brainstorming. 
* **Co-Designing**: Allowing multiple users to collaborate in parallel to design a flow. This is essential when multiple conversation designers and AI Agent developers must co-build.
* **Sharing**: Ability to share the designs with the external audience to collect feedback or get approvals
* **New Node Panel:** Simplified Nodes panel with four broad categories (Inform, Ask, Action, AI). 
* **No Code Templates**: Configure templates in the UI without any code.
* **Node Sequences**: Better organization of flows by grouping nodes into a sequence.

<font size="4">Advanced AI Capabilities</font>

DialogGPT and enhanced RAG (Retrieval-Augmented Generation) capabilities enable zero-training intent detection, contextual understanding, and intelligent conversation management. The new Agent Node with tool calling brings sophisticated LLM-powered interactions that can dynamically handle complex tasks and integrate with external systems.

<font size="4">DialogGPT</font>

DialogGPT introduces a new paradigm shift in Intent Detection and  Conversation Management. It addresses these challenges by leveraging advanced techniques like embedding-based retrieval combined with Generative AI models and improving intent detection and conversation handling with zero training.

Key Capabilities:

* Contextual Intent detection without the need for training utterances
* Identification and Fulfillment of Ambiguous Intents and Multi-intents. 
* Management of common conversation intents such as pausing, repeating information, restarting conversations, and transferring to human agents.
* Identifying the granular intents based on the knowledge graph. DialogGPT uses an LLM to orchestrate the conversation, ask clarifying questions, and determine the granular intent.
* Out-of-the-box event handlers to fulfill the user’s request.
* Identifying the child bot intents from Universal Bot without the need for Bot Scoping Training; applicable for Universal Bots.

With DialogGPT, businesses can overcome the limitations of traditional models, ensuring their agents provide a more accurate, responsive, and efficient user experience, all while simplifying the development process.

<font size="4">Seamless Integration With Search Module - RAG Capabilities</font>

Powered by large language models (LLMs), Search AI provides accurate, context-aware answers, significantly improving the user experience. Integrate a variety of data sources—such as web crawlers, structured data, documents, catalogues, and knowledge repositories—to create a comprehensive answer index. Customize and enrich content to meet specific business needs and boost user engagement.

Key Capabilities

* Get the Answer to any question from the knowledge base.
* Connect to 50+ external connectors to auto-sync the latest knowledge base.
* Customize the chunking strategy.
* Manage the RAG pipeline.
* Test the answers using the debug window.

<font size="4">Agent Node with Tool Calling</font>

The Agent Node lets you leverage LLMs and generative AI with Tool calling to create sophisticated and versatile AI Agents capable of handling complex tasks and providing dynamic, data-driven interactions. With its streamlined entity collection, contextual intelligence, multilingual support, and integration with external systems, the node empowers platform users to deliver exceptional human-like conversational experiences to their employees and customers.

Key Capabilities

* **Entity Collection**: The Agent Node simplifies the process of gathering entities within a conversation, reducing the need for multiple entity nodes. This streamlined approach enhances the user experience by making AI Agent interactions more natural and user-friendly.
* **System Context, Business Rules, and Exit Scenarios**: The Agent Node incorporates system context, business rules, and predefined exit scenarios to ensure accurate and relevant responses. This contextual intelligence helps guide the conversation, handle various user inputs effectively, and maintain alignment with enterprise business rules.
* **Multilingual Support**: The Agent Node supports both English and non-English languages, enabling platform users to create AI Agents that cater to a diverse user base and facilitate multilingual interactions.
* **Configuration Flexibility**: The Agent Node can be configured like any other node in the XO Platform, providing flexibility in its integration within dialog tasks. This allows platform users to seamlessly incorporate the Agent Node into their existing conversational flows.
* **Interaction with External Systems**: The introduction of tool calling expands the Agent Node's capabilities beyond text generation. It enables interaction with external systems and databases, facilitating real-time data retrieval, calculations, and system-specific operations. This integration allows for more dynamic and data-driven conversational experiences.
* **Dynamic Prompt Enhancement**: The Agent Node's prompt is enhanced to include tool definitions and contextual information. The language model can dynamically decide whether to generate text or call a tool based on user input and ongoing conversation. The dynamic prompt adaptation ensures that the agent provides the most appropriate response or action at each step of the interaction.

<font size="4">Operational Efficiency</font>

With features like Experience Flows for channel-specific welcome experiences, conditional FAQ answers, and an enhanced Marketplace with ready-to-use templates, XO v11 accelerates time-to-value while reducing the complexity of managing conversational AI applications. See the Feature Comparison table below for more information.

**Feature Comparison**

The following section provides a summary of key differences between v10 and v11 versions of the XO Platform. 

<table>
  <tr>
   <td><strong>Feature</strong>
   </td>
   <td><strong>XO v10</strong>
   </td>
   <td><strong>XO v11</strong>
   </td>
  </tr>
  <tr>
   <td>
<h4>Channels</h4>


   </td>
   <td>Digital Channels
<p>
XO10 supports 30+ Enterprise and Social channels. 
<p>
3rd Party IVR Integration
<p>
Supports integration with 3rd party IVR/CCaaS applications via VXML-based integration.
<p>
Kore.ai Voice Gateway
<p>
Integration with Kore.ai’s Voice Gateway will require the user to integrate a bot with an instance of SmartAssist to configure the SIP Transfer. There is a limitation of enabling only one instance of Voice Gateway per account. 
   </td>
   <td>XO11 includes everything supported in XO10. 
<p>
In addition, it provides a seamless, integrated flow to enable <strong>Kore.ai Voice Gateway. </strong>Multiple instances of Voice Gateway can be enabled by creating different XO11 apps. 
<p>
 
   </td>
  </tr>
  <tr>
   <td>
<h4>Welcome and On-Connect Events replaced with Flows</h4>


   </td>
   <td><strong>OnConnect Event:</strong>
<p>
XO10 supports OnConnect Event, which can be configured to either trigger a message, a Dialog Task, or run a script when the event is triggered.
<p>
<strong>Welcome Events:</strong>
<p>
XO10 also supports
<ul>

<li>Welcome Event </li>

<li>Facebook Welcome Event </li>

<li>Telegram Welcome Event </li>

<li>Telephony Welcome Event 

<p>
and they are configurable to trigger a Dialog Task or send a message when the user connects with the Bot.</li>
</ul>
   </td>
   <td>XO11 has <strong>Experience Flows</strong> that help define a great user experience when someone connects to the App from a channel.
<p>
Users can go to Flow Builder and <strong>build an experience</strong> to welcome a user when they come through a specific Channel. Every Channel is mapped to one Welcome Flow, and the Flow will be triggered to meet and greet the user.
<p>
The platform provides <strong>OOTB Welcome Flows</strong> when they upgrade to the XO11 version from XO10 (users can choose to continue with existing XO10 Events or choose to switch to Welcome Flows).
   </td>
  </tr>
  <tr>
   <td>
<h4>Intelligent User Utterance Handling</h4>


   </td>
   <td>In XO10, each utterance will be routed to the <strong>NLP</strong>, which <strong>will</strong> <strong>determine</strong> whether to initiate a Dialog Task, respond with an FAQ, or handle Small Talk.
   </td>
   <td><strong>Configurable Fallback Option:</strong>
<p>
XO11 offers a configurable utterance routing, which helps customers configure the App to use Generative Answering capability and fallback to Automation, or prefer Automation capabilities and fallback to Generative Answers.
   </td>
  </tr>
  <tr>
   <td>
<h4>Dialog Creation Options</h4>


   </td>
   <td>XO10 has <strong>predefined basic dialog templates</strong> (for every Integration that the user enables), which can be installed as a Dialog Task.
<p>
The other option is to start <strong>generating a Dialog Task by using the Automatic Dialog generation</strong> option within the Dialog Builder canvas.
   </td>
   <td>XO11 has all of these XO10 features with a better UX and offers dialog creation from scratch with the following additional options:
<ul>

<li><strong>Marketplace</strong> use cases and action Templates</li>

<li>The user can configure whether the <strong>dialog is customer-facing or agent-facing</strong>.</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
<h4>FAQs</h4>


   </td>
   <td>XO10 supports <strong>simple FAQ </strong>questions and answers.
   </td>
   <td>XO11 supports <strong>Conditional FAQ </strong>Answers based on the Context. This provides more personalized FAQ answering.
   </td>
  </tr>
  <tr>
   <td>
<h4>Dialog Builder</h4>


   </td>
   <td>XO10 hosts <strong>v2 Dialog Builder</strong>
   </td>
   <td>XO11 has a new and improved <strong>Dialog Builder v3</strong>. The additional features of the Dialog builder:
<ul>

<li>Grouping/Sequencing of Nodes</li>

<li>Multi-user Parallel Collaboration </li>

<li>User Comments on the Canvas</li>

<li>View and configure the OOTB Templates in the property panel</li>

<li>Infinite Canvas</li>

<li>Improved Search</li>

<li>Bookmarking feature</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
<h4>Agent Transfer</h4>


   </td>
   <td>XO10 has <strong>prebuilt third-party Agent Transfers</strong> options that users can configure to route conversations to third-party Agent Desktops. 
   </td>
   <td><strong>Self-Transfer to CCAI</strong>
<p>
In addition to third-party agent transfers, XO11 offers self-transfer to Kore.ai's Contact Center AI product to transfer to an agent using the same app.
<p>
<strong>Enhanced Agent Transfer Node</strong>
<p>
The Agent Transfer Node has additional properties: Agent Skills and Agent Groups. These properties will help routing to the correct agent during Agent Transfer if the Customer uses the Kore Contact Center AI product.
   </td>
  </tr>
  <tr>
   <td>
<h4>Answer from Documents</h4>


   </td>
   <td>XO10 has basic features for answering from user-uploaded PDF and Word documents and giving a generative answer.
   </td>
   <td>In XO11, users can seamlessly upload various files, provide a web URL to Crawl, or connect to a cloud source for the engine to crawl and answer user queries using the XO GPT model.
<p>
The advanced capabilities include defining a strategy for chunking, business rules, etc.
   </td>
  </tr>
  <tr>
   <td>
<h4>Display Language </h4>


   </td>
   <td>XO10 supports English, Japanese, and Korean
   </td>
   <td>XO11 supports only English as of now. We are working on supporting Japanese, Korean, Simplified Chinese, French, and Spanish.
   </td>
  </tr>
  <tr>
   <td>
<h4>Marketplace</h4>


   </td>
   <td>In XO10, Marketplace offers predefined Bot/process Apps with OOTB dialogs.
<p>
This is available on the homepage of XO10.
   </td>
   <td>In XO11, the enhanced Marketplace that is present inside the App hosts 
<ul>

<li><strong>Use Case Templates</strong> that you can install inside your App as a Dialog Task</li>

<li><strong>Configure Integrations </strong>and install Basic Actions or Use Cases of that specific integration</li>

<li>Predefined <strong>Dialog Templates</strong> (actions)

<p>
Roadmap includes Templates for Flows, Campaigns, Agent Dialog Templates, etc.</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
<h4>Create New Bot</h4>


   </td>
   <td>In XO10, users can <strong>only create an Automation Bot</strong>. This is done in two steps: 
<ol>

<li>Bot name and</li>

<li>The user can generate use cases during bot creation that are created as blank dialog tasks inside the bot</li>
</ol>
   </td>
   <td>XO11 offers App creation with <strong>any of the 4 modules: Automation AI, Contact Center AI, Search AI, and Agent AI</strong>. 
<p>
App creation is a guided journey. In the end, the user can have live testing of the app.
<p>
Users should start creating an App with any one Product and later can enable/add other products. For example, users can begin with Automation AI and build the app, and later, they can enable CCAI in the same app.
   </td>
  </tr>
  <tr>
   <td>
<h4>Talk to Bot</h4>


   </td>
   <td>XO10’s Talk-to-Bot is only for Chat Testing and debugging.
   </td>
   <td>XO11 has both Voice and Chat testing using Talk-to-Bot.
   </td>
  </tr>
  <tr>
   <td>
<h4>Guided Onboarding</h4>


   </td>
   <td>Simple Onboarding is offered as part of XO10
   </td>
   <td>XO11 has Automation AI onboarding that helps users create an end-user-facing, publishable App using Onboarding.
   </td>
  </tr>
  <tr>
   <td>
<h4>Setup Guide</h4>


   </td>
   <td>
   </td>
   <td>XO11 hosts a Setup Guide where all the important features are listed in a logical order that helps users in kick-starting their learning journey easily.
   </td>
  </tr>
  <tr>
   <td>
<h4>GenAI and LLM</h4>


   </td>
   <td>XO10 supports various GenAI features
<ul>

<li>Integrate with Commercial and Custom LLM, including Kore.ai’s XO GPT</li>

<li>Prompt Library with System and Custom Prompts</li>

<li>Copilot features</li>

<li>Dynamic Conversation features</li>

<li>Guardrails</li>
</ul>
   </td>
   <td>XO11 has all of XO10, and in addition to Automation AI GenAI features, XO11 Apps have GenAI features for the other three products (Search AI, Agent AI, Contact Center AI).
   </td>
  </tr>
  <tr>
   <td>
<h4>User Role Management -> Creation of User role</h4>


   </td>
   <td>In XO10, this can be managed in the Admin Console only
   </td>
   <td>The user role management is available on the homepage. App Owners can create User roles inside the App. These roles are reflected across the workspace and in other apps as well.
   </td>
  </tr>
  <tr>
   <td>
<h4>User Roles</h4>


   </td>
   <td>XO10 has the following system roles created by default with Role Type as BOT:
<ul>

<li>Bot Owner</li>

<li>Bot Developer</li>

<li>Bot Tester</li>
</ul>
   </td>
   <td>XO11 has additional roles created by default with Role Type as APP:
<ul>

<li>App Owner</li>

<li>App Developer</li>

<li>App Tester</li>

<li>Agent</li>

<li>Supervisor</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
<h4>Bot Name change</h4>


   </td>
   <td>XO10 bot, once published, users cannot change the name.
   </td>
   <td>In XO11, users can change the app's name at any time.
   </td>
  </tr>
  <tr>
   <td>
<h4>Deletion of Bot/App</h4>


   </td>
   <td>Once the XO10 bot is published, users can only delete it by suspending the tasks in the Admin Console.
   </td>
   <td>In XO11, users can delete the App from the builder (only by the App Owner). This App will be available for 30 days to revert to the normal state.
   </td>
  </tr>
  <tr>
   <td>
<h4>Public APIs</h4>


   </td>
   <td>All the public APIs available in XO10 have a limited scope within the workspace and only within the bot.
   </td>
   <td>All the Public APIs for XO11 have scopes limited to workspace, Automation AI (Bot APIs), Contact Center AI (smartAssist APIs), Search AI (Search Assist APIs), Agent AI (Agent Assist APIs).
   </td>
  </tr>
</table>

## Search AI

Search AI represents the next generation of our search and retrieval platform, delivering performance improvements, advanced AI capabilities, and enterprise-grade features. This next-generation platform offers substantial enhancements across every aspect of the search experience, from data ingestion to answer generation. Below is a breakdown of new features across the product.

<font size="4"> Intelligent and More Accurate Answer Generation</font>


**Agentic RAG Architecture**

Search AI leverages an Agentic RAG (Retrieval-Augmented Generation) architecture, where multiple autonomous agents collaborate to optimize query interpretation, retrieval, and response generation. This results in highly accurate, context-aware answers, especially for complex and multi-faceted queries. [Learn more](../searchai/rag-agents.md).

**Advanced Retrieval Technology**

Search AI offers a hybrid retrieval method based on RAG Fusion, combining multiple keyword and vector scores to significantly boost accuracy, relevance, and performance of search results. [Learn more](../searchai/retrieval.md).


**Channel-Aware Response Formatting**

Responses are optimized for voice or digital channels automatically, ensuring they are presented in the most effective and engaging format for each medium. This leads to improved user experience and higher engagement rates across platforms.


**Contextual Answer Generation**

Search AI improves response accuracy by allowing users to send entire documents as context to language models, rather than just fragments. This approach enables the model to grasp the structure and intent of the content, resulting in the generation of more relevant and insightful answers.


<font size="4">Improved Content Ingestion Capabilities</font>


**6x More Connectivity Options**

* With 60+ connectors available in Search AI, there is a 6x increase in connectivity options compared to SearchAssist. 
* Support for both structured and unstructured data from connectors.
* Universal RACL support across connectors.
* Improved business user experience with streamlined configuration and setup.
[Learn more](../searchai/content-sources/connectors/connector-directory.md).


**Superior Web Crawling**

* New and improved crawler with significantly higher success rates.
* 80% performance improvement in web crawling speed.
* Better handling of complex website structures and dynamic content, including JavaScript-heavy pages.
[Learn more](../searchai/content-sources/web-crawl.md).

**Flexible Field Mapping for Content Ingestion from Third-party Applications**

* Easily map fields from the source application to the Search AI schema to ensure consistency and relevance.
* Use post-processor scripts to update the content received from the source application. 
* Test and save the fields to apply the field mapping for ingestion. 

<font size="4">Advanced Content Extraction and Processing</font>


**Flexible Extraction Framework**

Search AI introduces a customizable extraction strategy framework that adapts to different document types, replacing SearchAssist's static one-size-fits-all approach.

* [Image-based Document Extraction -](../searchai/content-extraction/extraction.md#image-based-document-extraction) Capture the semantic meaning between textual and image content through **VDR-based embeddings**, enabling greater accuracy for complex documents containing nontextual layouts such as tables or forms. By interpreting the visual structure alongside the text, Search AI ensures more reliable indexing from complex document structures. 
* [Markdown Extraction -](../searchai/content-extraction/extraction.md#markdown-extraction) Transforms each page of a document into structured Markdown format before further processing. This strategy is particularly effective in preserving the semantic structure of the original content.
* [Layout Aware Extraction -](../searchai/content-extraction/extraction.md#layout-aware-extraction) Identifies objects in documents by combining OCR technology, layout detection models, and layout awareness rules. This approach enhances Search AI's ability to comprehend tables, graphs, and charts in documents and generate answers based on this information.
* [Advanced HTML Extraction -](../searchai/content-extraction/extraction.md#advanced-html-extraction) Intelligent processing of images and tables from HTML documents
* [Custom Extraction -](../searchai/content-extraction/extraction.md#custom-extraction) Allows enterprises to modify the search data pipeline by inserting their custom extraction logic.

**Multimodal Content Support**

Search AI supports the extraction and processing of diverse content types, including text, tables, images, and layout-based visual structures, using different extraction techniques. Users can define different extraction strategies for different types of content. This multimodal capability ensures efficient extraction for different types of content. 


**Custom Content Transformation During Extraction**

The content transformation layer used to enrich content immediately after extraction and before vectorization now features an additional API stage for custom processing of the extracted content. This allows developers to make custom changes to the content while preserving essential relationships and context of the original document. Additionally, developers can now define enrichment logic using JavaScript, replacing the earlier use of painless scripts. This change makes the enrichment process more developer-friendly and easier to maintain. [Learn more](../searchai/content-extraction/transformation.md).


**Chunk-Level Processing**

Chunk Workbench provides granular control over how content is transformed at the individual chunk level. This flexibility enables teams to tailor data processing to meet specific business needs, such as appending page summaries to each chunk for enhanced context and improved performance. [Learn more](../searchai/workbench/introduction.md).


**Multi-Vector Generation**

Search AI supports multi-vector search, which allows you to associate multiple embedding vectors with a single chunk of data. This advanced technique significantly improves retrieval accuracy by capturing different important fields of a chunk. Each vector can be assigned a weightage based on the relative importance of the fields used in that vector generation, enabling the system to prioritize certain fields during search and retrieval. This leads to more relevant and accurate results. [Learn more](../searchai/index-configuration.md).


**Enhanced Embedding Models**

Search AI supports advanced embedding models to improve semantic understanding across both structured and unstructured content types.

* Support for E5 and VDR(Image Embeddings) embedding models for superior semantic understanding across text and image data.
* Custom embedding support without requiring middleware.


<font size="4"> Gen AI Capabilities</font>

* [Custom LLM support](../generative-ai-tools/models-library.md#custom-llm-integration-framework) for answer generation without requiring middleware
* [Dynamic Models and Prompts for answers](../apis/searchai/advance-search.md) - Support for runtime selection of prompts and LLM models within the answer generation API, allowing developers to tailor responses dynamically based on query intent, user context, or application requirements.


<font size="4"> Developer Experience & Tools</font>


**Centralized Development Toolkit**

A comprehensive developer toolkit has been introduced, consolidating all platform resources in one location.

* Unified Resource Hub - Centralized access to all development tools and utilities
* Extraction Utilities - Ready-to-use tools for various extraction needs
* Evaluation Frameworks - Ready-to-use tools for testing and validation
* SDKs and APIs - Complete development resources and documentation
* Streamlined Discovery - Easier access to platform utilities and capabilities

<font size="4"> Other Enhancements</font>

* Auto Training for real-time updates: Automatically detects new content ingestion or updates to existing content and auto-trains the system for these updates, keeping the indexed content up-to-date always. 
* Greater Configuration Flexibility: It offers more configurable answer generation properties than the standalone application, making it more user-friendly and flexible. 


<font size="4"> Integration with AI for Service Platform</font>

Search AI is now seamlessly integrated into the XO platform as part of the broader **AI for Service** suite. This integration brings together enterprise-grade search, automation, and assistance within a unified ecosystem. By combining Search AI's generative intelligence and deep retrieval capabilities with XO’s automation, contact center, and agent-assist features, enterprises can deliver highly contextual conversational experiences across channels. It also also provides comprehensive user and role management, enabling precise control over access and permissions. A robust admin console allows for centralized configuration and monitoring, while built-in guardrails ensure responsible and secure AI deployment at scale.
To accelerate adoption, a curated model and prompt library streamlines implementation across diverse use cases, making it easier for organizations to deploy, manage, and refine AI-powered solutions. Gen AI usage logs provide enhanced visibility and governance, and support for multiple JWT app creation enables scalable, secure integrations across enterprise applications.

<font size="4">Feature Realignment</font>

As part of our transition from SearchAssist to the next-generation Search AI in the AI for Service platform, we’ve realigned capabilities to focus on performance, usability, and flexibility. Below is a comparison of features that have been adapted or optimized as part of this process. 


<table>
  <tr>
   <td><strong>Feature in SearchAssist</strong>
   </td>
   <td><strong>Status in Search AI</strong>
   </td>
   <td><strong>Notes</strong>
   </td>
  </tr>
  <tr>
   <td>FAQ Support
   </td>
   <td>Available( under the Automation AI Module)
   </td>
   <td><a href="../getting-started/best-practices-faq-and-answer.md">FAQs</a> are now managed via the<a href="https://docs.kore.ai/xo/automation/knowledge-ai/knowledge-ai-introduction/"> Knowledge Module</a>, offering a more flexible and scalable approach for handling common queries without duplicating functionality. This ensures consistent, centralized knowledge management.
   </td>
  </tr>
  <tr>
   <td>Bot Actions
   </td>
   <td>Available 
   </td>
   <td>Search AI and Automation AI can now work seamlessly in AI for Service platform without any additional configuration. Use the <a href="https://docs.kore.ai/xo/searchai/setup-search-ai/#enabling-answers-in-automation-ai">intent identification setting</a> to configure the use of Search AI in dialog flows. A <a href="https://docs.kore.ai/xo/automation/use-cases/dialogs/node-types/working-with-the-searchai-node/">search node</a> is also available in dialog flows for users to fetch answers, giving users more control within the dialog. 
   </td>
  </tr>
  <tr>
   <td>Rule-based Extraction Model 
   </td>
   <td>Deprecated
   </td>
   <td>More advanced extraction techniques are available in Search AI. <a href="https://docs.kore.ai/xo/searchai/content-extraction/extraction/">Find more details here</a>. 
   </td>
  </tr>
  <tr>
   <td>Hybrid Legacy retrieval strategy
   </td>
   <td>Improved
   </td>
   <td>Hybrid retrieval is still supported, but the final ranking is now calculated using a more advanced algorithm, RRF (Reciprocal Rank Fusion), which improves accuracy. 
   </td>
  </tr>
  <tr>
   <td>Workbench Stages
<br>- Entity Extraction
<br>- Traits Extraction
<br>- Keyword Extraction
<br>- Semantic Meaning
<br>- Snippet Extraction
   </td>
   <td>Deprecated
   </td>
   <td>Search AI utilizes advanced semantic embeddings, eliminating the need for additional processing to enhance search efficiency and accuracy. However, if users have specific needs, they can still leverage <a href="https://docs.kore.ai/xo/searchai/workbench/api-stage/">API </a>or LLM stages to achieve the same outcome and tailor the process to their use case.
   </td>
  </tr>
  <tr>
   <td>Search Profiles
   </td>
   <td>Supported via multi-apps in a workspace
   </td>
   <td>Users can create multiple apps within the same workspace for isolated testing before deployment. 
   </td>
  </tr>
  <tr>
   <td>Search Settings
   <br>- Weights
   <br>- Presentable
  <br> - Prefix Search
   <br>- Search Relevance
   </td>
   <td>Deprecated
   </td>
   <td>Search results and answers now use a common processing pipeline that leverages semantic similarity along with enhanced retrieval methods, removing the need for traditional keyword-based search configurations.
   </td>
  </tr>
  <tr>
   <td>Search Settings
<br>- Small Talk
   </td>
   <td>Available ( via Automation AI)
   </td>
   <td>Small talk can be managed through conversational flows in Automation AI. <a href="https://docs.kore.ai/xo/automation/use-cases/small-talk/">Learn More.</a> 
   </td>
  </tr>
  <tr>
   <td>Results Ranking
   </td>
   <td>Deprecated
   </td>
   <td><a href="https://docs.kore.ai/xo/searchai/business-rules/">Business rules</a> and <a href="https://docs.kore.ai/xo/searchai/rag-agents/">Agentic Rag</a> capabilities in Search AI provide the search developer better control over retrieval. Allowing them to configure behaviour for a wide range of scenarios. This eliminates the need for manually configuring rules for every unique user input
   </td>
  </tr>
  <tr>
   <td>Full Search API 
   </td>
   <td>Deprecated
   </td>
   <td>Use the <a href="https://docs.kore.ai/xo/apis/searchai/advance-search/">Advanced Search API</a>, which offers more robust capabilities.
   </td>
  </tr>
  <tr>
   <td>Live Search API
   </td>
   <td>Deprecated
   </td>
   <td>Use the <a href="https://docs.kore.ai/xo/apis/searchai/advance-search/">Advanced Search API</a> instead for near real-time results.
   </td>
  </tr>
  <tr>
   <td>Auto Suggestions API
   </td>
   <td>Deprecated
   </td>
   <td>Auto Suggestions API has been deprecated as Search AI's semantic understanding directly interprets natural language queries, eliminating the need for traditional autocomplete functionality.
   </td>
  </tr>
  <tr>
   <td>Train API
   </td>
   <td>Not required
   </td>
   <td>Search AI automatically re-trains when new content is detected, both when added via the application and APIs across all data sources.
   </td>
  </tr>
  <tr>
   <td>Index Fields API
   </td>
   <td>Coming Soon
   </td>
   <td>To maintain consistency across fields in content extracted from different sources, a unified schema has been designed to address all the requirements. Adding or removing fields from the schema is not allowed. However, this schema offers 50 custom fields that can be used to meet specific requirements, such as metadata.
   
   This API will allow you to update the names and descriptions of fields, enabling you to align the field names with those used in your system.
   </td>
  </tr>
  <tr>
   <td>History API
   </td>
   <td>Not required
   </td>
   <td>Can be retrieved using <a href="https://docs.kore.ai/xo/apis/automation/conversation-history/">the Platform APIs. </a>
   </td>
  </tr>
  <tr>
   <td>Fetch Debug Information API
   </td>
   <td>Not required
   </td>
   <td>Debug information is available as part of every API. Hence, a separate api is not required. Use the <em>includeChunksinResponse </em>parameter in the request to get the debug information. 
   </td>
  </tr>
  <tr>
   <td>Index Creation 
   </td>
   <td>Not required
   </td>
   <td>Users can create separate apps for performance testing. 
   </td>
  </tr>
  <tr>
   <td>Add/Update/Delete Index Fields through UI
   </td>
   <td>Available 
   </td>
   <td>To maintain consistency across fields in content extracted from different sources, a unified schema has been designed to address all the requirements. The unified schema includes a set of fixed fields and supports up to 50 custom fields, which can be added or deleted as needed and can be used to store any metadata fields.
   </td>
  </tr>
  <tr>
   <td>Traits
   </td>
   <td>Not required
   </td>
   <td>Search AI utilizes semantic similarity along with enhanced retrieval methods, to capture the relationships between various terms based on their context. This eliminates the need to rely on traditional search relevance tools.
   </td>
  </tr>
  <tr>
   <td>Search Interface features
   </td>
   <td>Deprecated
   </td>
   <td>Custom interfaces can be built using <a href="https://docs.kore.ai/xo/apis/searchai/api-list/">Search AI’s public APIs</a>. By default, the AI for Service Platform offers agent experiences available across<a href="https://docs.kore.ai/xo/channels/adding-channels-to-your-bot/"> 40+ channels.</a> 
   </td>
  </tr>
  <tr>
   <td>Analytics
   </td>
   <td>Available 
   </td>
   <td><a href="https://docs.kore.ai/xo/analytics/searchai/answer-insights/">Unified analytics</a> for search and answers are available under the analytics page in  Search AI. User engagement metrics and the Dashboard can be found as part of<a href="https://docs.kore.ai/xo/analytics/introduction/"> AI for Service analytics</a>.
   </td>
  </tr>
</table>


Additionally, features such as app importing and exporting and email notification support are under development and will soon be available. Contact us to learn more about the roadmap and release plans for Search AI. 


## Contact Center AI

* **Integrated Experience**: Integrated advantages of Contact Center AI (CCAI), Automation AI, Search AI, and Agent AI in a single app.

* **Additional Capabilities**: Enhanced Contact Center with additional capabilities in Campaign Management, Quality Management, and Case Management with additional top-ups.

* Enhanced Dialog Tasks and Flows building experience.

* Enhanced user experience for the Agents and Supervisors.

* Improved conversational experience and human-like conversations using the Generative AI capabilities. 

* Access to Agent AI and Search AI is available to users based on additional licenses.


## Agent AI

* Access to Search AI based on additional licenses.
* Enhanced user experience for the Agents and Supervisors. 
* Improved conversational experience and human-like conversations using the GenerativeAI capabilities - Auto Summarization, GenAI node powered Dialog tasks, Sentiment Analysis, Answers through Knowledge AI, Playbooks and Coaching design time, and Gen AI powered runtime Coaching hints. 
    * **Auto Summarization**: GenAI powered summarization, with the added ability to configure models through Prompt Library for better control.
    * **GenAI node powered Dialog tasks**: Uses commercial models to power dialogs/workflows in Agent AI.
    * **Sentiment Analysis**: Choose between XO or commercial LLMs to detect and show customer sentiment to agents in Real-Time.
    * **Answers through Knowledge AI**: Choose between commercial models or bring your own through custom LLM endpoint.
    * **Playbooks and Coaching design time**: Improve Playbooks and Realtime Coaching creation by suggesting similar utterances powered by commercial OpenAI model.
    * **GenAI powered Runtime Coaching hints** using commercial LLM models. 
* **Enhanced Collaboration**: Brand-new experience for building Dialog Tasks and Flows. 
* **Comprehensive Analytics**: Detailed insights into user conversations categorized by each product through extensive analytics. 
* **Integrated Experience**: Integrated advantages of Contact Center AI (CCAI), Automation AI, Search AI, and Agent AI in a single app.
