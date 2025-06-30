# What's New in AI for Service (XO v11)
Learn about the new features and enhancements included in AI for Service (XO v11).

AI for Service helps enterprises deliver better conversations with customers, employees, and agents. It combines conversational AI intelligence and generative AI innovations to create engaging customer experiences.

Built for security and scalability, the platform uses a no-code interface that lets businesses build intelligent virtual assistants. These assistants use large language models to hold natural conversations in multiple languages across various channels.

## Comprehensive Suite of Products and Services
The unified platform offers a comprehensive suite of products, features, and services to help businesses leverage AI to deliver exceptional customer experiences, improve operational efficiency, and drive business growth.

**Key Products, Features, and Services Offered by the XO Platform:**

<img src="../images/xo-platform-components.png" alt="New Unified XO Platform" title="New unified XO Platform">

Key updates to products and features are summarized below.

### Automation AI

Automation AI offers sophisticated AI-powered tools for creating Virtual Assistants to handle customer interactions through intelligent automation. You can also empower virtual assistants to handle interruptions and provide clarifications for more natural dialogues. It also offers testing tools to ensure a smooth and reliable user experience by identifying and fixing issues before deployment.
    
Key Automation AI updates are summarized below.

    
* **Advanced AI Capabilities**: The platform has introduced several Advanced AI Capabilities that simplify building agentic experiences. Users can create more natural and personalized virtual assistant conversations while streamlining their development workflow.

    * **DialogGPT, an Agentic Orchestration for Intelligent Conversations**: DialogGPT is an intelligent, agentic orchestration engine that powers natural conversations at scale, providing autonomous orchestration across multiple topics through Dialog Tasks. [Learn more :octicons-arrow-right-24:](../generative-ai-tools/dialog-gpt.md)

    * **Enhanced Agent Node with V2 Prompt and Tool Calling**: Agent Node (previously GenAI Node) has been enhanced to take full advantage of the Tool Calling capability of advanced AI Models. The latest version (v2) orchestrates the Agent Node using the Tool Calling construct to collect entities, instruct business rules, and perform user-defined custom actions. [Learn more :octicons-arrow-right-24:](../automation/agent-node/prompt-setup.md#types-of-prompts)

    * **Build Agentic Experience with DialogGPT and Agent Node**: Tool Calling enables the new Agent Node to interact with your business applications. Users can define tools, connect multiple actions, and incorporate external data into the conversation context. DialogGPT manages conversation orchestration, while Agent Node with Tool Calling creates more natural interactions.
    [Learn more :octicons-arrow-right-24:](../automation/agent-node/working-with-agent-node.md#tools)
 
    * **Seamless Integration with Agentic Apps for Multi-agent Orchestration**: The fully autonomous Agentic Apps, powered by the Kore.ai Agent Platform, can now easily integrate with the XO Platform. [Learn more :octicons-arrow-right-24:](../flows/node-types/automation.md)

    * **Support for Dynamic Routing Capability Powered by DialogGPT**: The Platform now supports Dynamic Routing capability powered by DialogGPT. This capability allows teams to develop and manage automation apps for various functions independently and then link them to a standard app. More importantly, it enables businesses to provide a single, unified interface to the end users instead of a separate interface for each function. The orchestration is powered by DialogGPT, which provides context-aware, intelligent, and dynamic routing. [Learn more :octicons-arrow-right-24:](../automation/dynamic-routing.md)

* **LLM and Generative AI Framework**:

    * **Guardrails**: LLMs are usually pre-trained with a vast corpus of public data sources, and the content is not fully reviewed and curated for correctness and acceptability for enterprise needs. This results in generating harmful, biased, or inappropriate content at times. The Guardrail framework mitigates these risks by validating LLM requests and responses to enforce safety and appropriateness standards. [Learn more :octicons-arrow-right-24:](../generative-ai-tools/guardrails.md)

    * **Monitoring**: It offers comprehensive insights into utilizing Large Language Models (LLMs) and Generative AI features. The framework collects, analyzes, and presents comprehensive data on user interactions, request-response dynamics, and payload details. [Learn more :octicons-arrow-right-24:](../analytics/genai-analytics/llm-usage-logs.md)

* **All-new Dialog Builder**: The all-new dialog builder is super intuitive, user-friendly, and visually appealing. The user interface allows users to design conversational flows by dragging and dropping components onto a canvas. This simplifies the process of constructing dialogues, allowing users to visually structure and customize interactions between the AI system and users. It empowers developers and non-technical users alike to design and create conversational flows effortlessly. 

[Learn more about the new features in AI for Service (XO v11) :octicons-arrow-right-24:](../release-notes/11.x/automation-ai.md#v1100-march-30-2024)

<hr>

### Search AI

Kore.ai’s SearchAssist capabilities are now available under Search AI on the AI for Service platform. Search AI offers AI-powered conversational search tools to quickly and accurately retrieve information from vast datasets and offer the most relevant piece of information to users. Add multiple data sources for building your answer index, including website crawlers, structured data, unstructured documents, catalogs, and knowledge bases. By combining Automation AI (Use Cases) and Search AI (Answers), businesses can create an exceptional, seamless conversational experience for their users.

Key Search AI (Answers) capabilities are summarized below. 

* **Content Extraction Strategies**: To generate answers using the source data, the ingested data is segmented into smaller segments or chunks to understand better, organize, and efficiently retrieve the most relevant set of data when required. Selecting the most appropriate strategy requires considering several factors, like the type of content, the embedding model to store chunks, the expected length and complexity of user queries and answers, etc.

    Search AI uses **Advanced RAG technologies** to deliver accurate, context-aware answers by intelligently combining information retrieval and generative AI. It is built on an end-to-end process: 

   * **Chunk Browser**: The Chunk Browser provides a tool for observing the extracted chunks from the source data. It gives insight into the extraction process's output and enables subsequent actions like editing and rectifying the chunks. 


    ### Expanded Connectivity and High-Speed Crawling 

    * **Index Configuration**: Indexing is the process of generating vectors or embeddings from the extracted chunks and creating a knowledge Index that can be used to generate answers. Vectors or Embeddings are multidimensional numerical representations of the chunks that carry their semantic information. Embedding Models are algorithms that can translate data into vectors. The XO platform supports various embedding models, such as MPNet, LaBSE, and e5, and allows you to choose a model according to your specific needs.  
    <img src="../images/xo-platform-Index.png" alt="Index" title="Index" style="border: 1px solid gray; zoom:70%;">

* **Answer Generation Strategies**: Search AI uses LLM to generate answers from the ingested chunks. The efficacy of the response depends on the Chunk Retrieval method and the Answer Generation configuration.

    * **Chunk Retrieval Strategy**: Choose the preferred chunk retrieval strategy for retrieving answer chunks from the answer index for a given query. Search AI supports **Vector Retrieval**, which uses cosine similarity scores, and **Hybrid Retrieval**, which considers patterns and structures in the text. The choice between using vector retrieval and hybrid retrieval depends on various factors, including the nature of the data, the specific requirements of the application, and the available resources.  
    <img src="../images/xo-platform-Chunk Retrieval.png" alt="Notes" title="Notes" style="border: 1px solid gray; zoom:70%;">

       * **Vector Retrieval**: In this type of retrieval, we compute the cosine similarity between the query vector and each chunk vector at the time of query, and the resulting scores are used to filter and sort the results. The score ranges from 0 to 1, where 0 indicates no match, and 1 represents a complete match.

       * **Hybrid Retrieval**: In this type of retrieval, multiple approaches are used to find the most relevant chunk corresponding to the query.

* **Answers Generation**: Configure the type of answers to be presented to the users:

    * **Extractive Answers**: The topmost chunk retrieved in response to the user query is directly presented to the user as answers. The extractive answers are exact content retrieved from the chunks without any change in text.

    * **Generative Answers**: The top chunks retrieved in response to the user query are sent to the configured LLM, which generates a paraphrased answer from the content in the chunks. Use the following fields to configure Generative Answers.  
    <img src="../images/xo-platform-Generative Answers.png" alt="Generative Answer" title="Generative Answer" style="border: 1px solid gray; zoom:70%;">

* **Search vs. Automation Setting**: You can either keep Automation First and Answers as a fallback or otherwise.  
<img src="../images/xo-platform-Search vs. Automation Setting.png" alt="Search vs. Automation Setting" title="Search vs. Automation Setting" style="border: 1px solid gray; zoom:70%;">  
    
[Learn more about Search AI features :octicons-arrow-right-24:](../searchai/about-search-ai.md)

<hr>

### Contact Center AI

Contact Center AI (previously SmartAssist) is now a part of AI for Service. You can now leverage Automation AI Use Cases and Search AI Answers to automate regular customer queries and seamlessly transfer them to a human agent as needed. The new Campaigns module helps streamline outbound voice and web campaigns. It provides templates and analytics to easily create targeted campaigns, reach audiences efficiently, track performance, and achieve goals more effectively.

The key features and experience changes are summarized below.

* **Experience Flows**:

    * **Improved Experience Flows**: To reduce confusion, the OnConnect/Welcome Events have now been merged into the new Experience Flows. With XO v11, the logic typically written in these events can now be easily managed via experience flows.

    * **Updated Flow Builder**: The Flow Builder interface has been revamped to provide a smoother, more intuitive user experience. The interface is similar to the Dialog Builder, making the transition seamless and effortless.  
    <img src="../images/xo-platform-Flow Builder.png" alt="Updated Flow Builders" title="Updated Flow Builder" style="border: 1px solid gray; zoom:70%;">

    * **Enhanced Automation**: Conversational Input and Run Automation Nodes Merged, Deflect to Chat Deprecated; the automation process is simplified by merging Conversational Input and Run Automation Nodes into a single entity: **Automation**. This consolidation streamlines bot invocation and aligns with usage patterns observed from existing customers and demo scenarios.  
    <img src="../images/xo-platform-contact-center-Automation.png" alt="Automation" title="Automation" style="border: 1px solid gray; zoom:70%;">

        Deflect to Chat is no longer supported. This change is driven by the limited usage observed among customers, but we remain committed to addressing relevant needs and exploring adding support based on internal use cases.

    * **Centralized Publish Module**: To ensure consistency, simplify workflow management, and centralize management tasks, we've introduced a centralized Publish Module. All flows can be published from this module.  
    <img src="../images/xo-platform-Centralised-Publish-Module.png" alt="Centralized Publish Module" title="Centralized Publish Module" style="border: 1px solid gray; zoom:70%;">

* **Channels**:

    * **Omni-channel Setup**: With Contact Center AI, you can seamlessly integrate various channels, including voice, chat, email, social media, and custom SDKs, to provide a unified experience for your customers and ensure effortless omnichannel communication.  
    <img src="../images/xo-platform-omnichannel-setup.png" alt="Omni-channel Setup" title="Omni-channel Setup" style="border: 1px solid gray; zoom:70%;">

    * **Voice Gateway**: Expand your reach by enabling voice interactions through the Kore.ai Voice Gateway. It helps configure how Contact Center AI handles automation for inbound voice calls. Customers can engage with your contact center using natural language voice commands.

    * **Selective Routing**: One significant enhancement is the ability to selectively choose whether to direct customers to automation or human assistance. This feature empowers you to optimize customer journeys considering complexity, urgency, or preference.

    * **Support for Digital Channels**: Our platform is extended to support digital channels such as social media platforms, enterprise messaging apps, and custom SDKs. This allows you to engage with customers wherever they are, enhancing accessibility and convenience.

    * **Integration with 3rd Party IVR Systems**: Contact Center AI seamlessly integrates with third-party IVR systems, enabling you to leverage existing investments and infrastructure while benefiting from our advanced capabilities.

* **Role and User Management**:

    * **App Level User Definitions**: Users can be defined at the app level and assigned necessary roles, providing granular control over access and permissions.

    * **Contact Center Attributes**: Additional contact center attributes can now be added under the Contact Center section, enhancing customization and tailoring the application to your specific requirements.

    * **Administrator / Admin Role Deprecated**: The Administrator/Admin role is deprecated. Existing accounts will seamlessly transition to a new custom role with equivalent permissions on Contact Center AI, ensuring continuity and preserving access levels.

* **Updated Bot Architecture**: Instance and Automation bots are merged into a single bot. New accounts will require managing only one bot. However, existing accounts that will be migrated will continue to have separate instance and automation bots.

* **New Campaigns Module**: The new Campaigns module simplifies and enhances outbound efforts across voice and web channels. It offers tools for creating targeted voice campaigns and proactive web campaigns, supported by easy-to-use templates and comprehensive analytics. This allows businesses to efficiently reach their audience, monitor campaign performance, and achieve their objectives with greater precision and effectiveness.

    * **Voice Campaigns** :Use the power of voice technology to connect with your audience through personalized messages or interactive experiences. Setting up a new voice campaign is easy—begin with a targeted contact list to ensure your message resonates with the right audience.  
    <img src="../images/xo-platform-voicecampaign.png" alt="Voice Campaigns" title="Voice Campaigns" style="border: 1px solid gray; zoom:70%;">

    * **Proactive Web Campaigns**: Elevate your online presence with proactive web campaigns to promote your products, services, or brand. Utilizing digital channels, these campaigns are crafted to increase visibility, generate leads, and build brand awareness, ensuring measurable success.  
    <img src="../images/xo-platform-proactive-web-campaign.png" alt="Proactive Web Campaigns" title="Proactive Web Campaigns" style="border: 1px solid gray; zoom:70%;">

        You can create proactive web campaigns from scratch in various formats:  
        <img src="../images/xo-platform-formats.png" alt="formats" title="formats" style="border: 1px solid gray; zoom:70%;">

        You can also create proactive web campaigns using pre-defined templates. These templates save time and effort while ensuring consistency and brand identity. They are cost-effective, user-friendly, and offer flexibility for customization.  
        <img src="../images/xo-platform-templates.png" alt="Templates" title="Templates" style="border: 1px solid gray; zoom:70%;">

    * **List Management**: List management involves organizing and maintaining targeted Contact Lists for efficient outreach while adhering to Do Not Contact (DNC) regulations.

        Managing Contact Lists:  
        <img src="../images/xo-platform-managing-contact-list.png" alt="Managing Contact Lists" title="Managing Contact Lists" style="border: 1px solid gray; zoom:70%;">

        Managing DNC Lists:  
        <img src="../images/xo-platform-managing-DNC-List.png" alt="Managing DNC Lists" title="Managing DNC Lists" style="border: 1px solid gray; zoom:70%;">

    * **Dashboard**: The campaign dashboard allows campaign managers to obtain an overview of all their campaigns, including their status—whether they're active, inactive, or completed. This centralized snapshot facilitates effortless monitoring and management.  
    <img src="../images/xo-platform-cc-dashboard.png" alt="Dashboard" title="Dashboard" style="border: 1px solid gray; zoom:70%;">

        You can drill down individual campaigns to get detailed insights.  
        <img src="../images/xo-platform-cc-overview.png" alt="Overview" title="Overview" style="border: 1px solid gray; zoom:70%;">

    * **Settings**: The settings allow campaign managers to decide the maximum number of concurrent calls that can be dialed.  
    <img src="../images/xo-platform-cc-setting.png" alt="Settings" title="Settings" style="border: 1px solid gray; zoom:70%;"> 
    
[Learn more about Contact Center AI features :octicons-arrow-right-24:](../contactcenter/about-contact-center-ai.md)

<hr>

### Agent AI

Agent AI (previously AgentAssist) is now a part of AI for Service. It is an AI-powered virtual assistant for contact centers that enhances agent efficiency and service quality. It automates repetitive tasks like information retrieval and transactions and provides real-time customer insights and suggestions. By using Kore.ai's NLP and AI/ML technologies, AgentAI understands customer intent and offers contextually appropriate responses and FAQs. AgentAI operates as a widget within popular contact center platforms, supporting both voice and chat interactions.

The key features and experience changes are summarized below.

* **Configuration**: The Configuration section lets users customize the various aspects of Agent AI. This section includes:
    
    * **Welcome Events**: Welcome Events are pre-configured messages or prompts that are automatically triggered when a conversation is assigned to an agent in Agent AI. Welcome Events guide agents to handle inquiries effectively by streamlining workflows, lowering their Average Handle Times (AHT), reducing repetition, and contributing to enhanced customer satisfaction. [Learn more :octicons-arrow-right-24:](https://docsinternal-kore.github.io/docs/xo/agentai/configuration/welcome-events/)

    * **Answer Configuration**: SearchAssist provides an intelligent, contextual, and personalized experience in every interaction across web and mobile channels. You can enhance the search capabilities of Agent AI by integrating it with the SearchAssist application. [Learn more :octicons-arrow-right-24:](https://docsinternal-kore.github.io/docs/xo/agentai/configuration/answers-configuration/)

    * **Widget Settings**: The Agent AI Settings page lets users set the Agent AI widget’s appearance. On this page, users can decide what features they want on the widget, how the widget’s search functionality should work, the channel-specific settings, the landing page, and the URL opening behavior. [Learn more :octicons-arrow-right-24:](https://docsinternal-kore.github.io/docs/xo/agentai/configuration/widget-settings/)

* **Channels**:

    * **Voice Gateway**: Voice Gateway (VG) helps configure how Contact Center AI handles automation for inbound voice calls.

        By going to **Automation AI** > **Flows & Channels** > **Channels** > **Kore.ai Voice Gateway**, you can add phone numbers, set up SIP Transfer, and configure the voice preferences to personalize the Automatic Speech Recognition (ASR) Engine and the voice that plays for your Text-to-Speech (TTS) conversions. In this section, you can enable the virtual assistant on the Voice channel using the built-in voice gateway that allows you to purchase a new phone number or use your existing phone number (with SIP transfer). [Learn more :octicons-arrow-right-24:](https://docsinternal-kore.github.io/docs/xo/channels/kore.ai-voice-gateway/kore-voice-gateway/)

    * **Web/Mobile Client**: To use any Kore.ai Bot SDKs, you must first register your app to get the authentication credentials to communicate between the Kore.ai bot and your application hosting the bot. The Kore.ai bot SDKs can be used to add a chat widget to your company application that enables users to chat with the application using natural language input. The Kore.ai bots platform interprets the user input, processes the request, and responds to the user. In this section, you can enable the virtual assistant to be on digital channels, including live chat platforms, third-party messengers, and more. [Learn more :octicons-arrow-right-24:](https://docsinternal-kore.github.io/docs/xo/channels/add-web-mobile-client/)

* **Experience**:

    * **Agent Coaching**: The Real-time Agent Coaching feature enables real-time coaching based on the analysis of agent utterances and speech. You can set up specific utterances and speech patterns for Agent AI to take relevant actions, such as providing hints and nudges or emailing the manager when those patterns occur. In this section, you can create and manage Agent Coaching Rules to be triggered during User-Agent Interactions. [Learn more :octicons-arrow-right-24:](https://docsinternal-kore.github.io/docs/xo/agentai/agent-experience/agent-realtime-coaching/)

    * **Agent Playbook**: Contact center agents are expected to provide the best customer experience despite high call volumes and complex interactions. To empower agents in this endeavor, AgentAssist introduces the Playbook feature—a standard tool offering structured guidance for handling customer interactions. In this section, you can create and manage the adherence checklist to be triggered for an Agent in a conversation with the user. [Learn more :octicons-arrow-right-24:](https://docsinternal-kore.github.io/docs/xo/agentai/agent-experience/playbook/)

* **Dashboard**: The Agent AI Dashboard provides the Agent AI Widget’s performance data and the end user’s (agents and customers) behavioral trends. You can filter data by channel or time period. You can also view the total number of sessions and widget suggestions, the average number of widget suggestions used per session, which automations helped agents resolve customer issues, what the agents are searching for, automation performance results, and agent feedback in the form of likes and dislikes. [Learn more :octicons-arrow-right-24:](https://docsinternal-kore.github.io/docs/xo/analytics/contact-center/agentai-dashboard/)

[Learn more about Agent AI features :octicons-arrow-right-24:](../agentai/about-agent-ai.md)

<hr>

## Current Limitations

* Solutions like BankAssist, HR Assist, and IT Assist cannot be upgraded to v11.

* The App language (display language) is available in English, Japanese (Beta), Korean (Beta), and German (Beta).

<hr>

<font size="4"> Related Links</font>

* [Key UI Differences - v11 vs. v10](./key-differences-between-xo11-and-xo10.md)
* [Migration Path for Existing Customers - Upgrade Journey](../getting-started/migration-path-xo10-to-xo11.md)
