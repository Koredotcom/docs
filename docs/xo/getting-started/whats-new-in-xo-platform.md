---
hide:
  - feedback
  - toc  
---
# What's New in XO 11
Learn about the new features and enhancements included in v11 of Kore.ai Experience Optimization Platform.

## All-new Experience Optimization Platform
Kore.ai all-new Experience Optimization (XO) Platform is an AI-powered, end-to-end experience optimization Platform for enterprises of any scale to offer best-in-class conversational experiences for customers, employees, and agents. The Platform seamlessly blends conversational AI intelligence and generative AI innovation, offering the tools to create scalable and memorable customer experiences. The Platform is recognized as the world's most secure, credible, and scalable solution for generative and conversational AI. The Platform's business user-friendly, no-code interface allows businesses to construct intelligent virtual assistants, incorporating large language models and generative AI to foster meaningful and continuous conversations in users' preferred languages and channels.

## Comprehensive Suite of Products and Services
The unified XO Platform offers a comprehensive suite of products, features, and services to help businesses leverage conversational AI intelligence and generative AI innovations to deliver exceptional customer experiences, improve operational efficiency, and drive business growth.

**Key Products, Features, and Services offered by the XO Platform:**

<img src="../images/xo-platform-components.png" alt="New Unified XO Platform" title="New unified XO Platform">

Key updates to products and features are summarized below. Click the corresponding tab to see the details.

=== "Automation AI"

    Automation AI offers sophisticated AI-powered tools for creating Virtual Assistants to handle customer interactions through intelligent automation. You can define specific use cases and utilize advanced Natural Language Processing (NLP) to handle complex interactions. You can also empower virtual assistants to handle interruptions and provide clarifications for more natural dialogues. It also offers testing tools to ensure a smooth and reliable user experience by identifying and fixing issues before deployment.
    
    Key Automation AI updates are summarized below.

    ## All-new Dialog Builder

    The all-new dialog builder is super intuitive, user-friendly, and visually appealing.

    ### Intuitive Graphical User Interface

    The all-new intuitive graphical user interface allows users to design conversational flows by dragging and dropping components onto a canvas. This simplifies the process of constructing dialogues, allowing users to visually structure and customize interactions between the AI system and users. It empowers developers and non-technical users alike to design and create conversational flows effortlessly. 

    * **Free-flow Designing** empowers users to easily design the flow without worrying too much about the logic at the beginning. The ability to easily connect nodes without having to fully define the transition rule. The transition rule can start with a simple description and can be enforced at the later stages while testing/publishing.
    * **Infinite Canvas** allows designers to logically arrange the flow (based on purpose, objective, etc.) as needed, making it easy for them to review and audit the flows.
    * **Customizable Connectors** featuring options for color, width, and style to enhance clarity, readability, and emphasis.
    * **Seamless drag and drop** of nodes for a smooth experience.  
    <img src="../images/xo-platform-Graphic-user-interface.png" alt="Graphical User Interface" title="Graphical User Interface" style="border: 1px solid gray; zoom:70%;">

    #### Node Categorization

    A streamlined node panel with user-friendly categorization—Ask, Inform, AI, and Integration—provides clear organization for users.  
    <img src="../images/xo-platform-AutomationAI-nodecategorisation.png" alt="Node Categorization" title="Node Categorization" style="border: 1px solid gray; zoom:70%;">

    #### Sequencing

    Enhance organization through the grouping of nodes into coherent sequences. Align nodes logically and provide clear, descriptive names for the sequences to facilitate future reference and comprehension. Provide the ability to clearly read and write the key information like name type, prompts/messages, and transition conditions. Enhance visibility and distinguishability by customizing sequences with color codes. 
    <img src="../images/xo-platform-AutomationAI-sequencing.png" alt="Sequencing" title="Sequencing" style="border: 1px solid gray; zoom:70%;">

    #### Universal Search

    The new Universal search (CMD+K) quickly helps find out components, nodes, sequences, variables, etc.  
    <img src="../images/xo-platform-AutomationAI-Universal Search.png" alt="Universal Search" title="Universal Search" style="border: 1px solid gray; zoom:70%;">

    #### Comments

    Users can add comments and feedback directly within the dialogue builder. Enhances communication by providing a platform for feedback, suggestions, and discussions on specific elements of the design.  
    <img src="../images/xo-platform-Automation-Comment.png" alt="Comments" title="Comments" style="border: 1px solid gray; zoom:70%;">

    #### Bookmarks

    Bookmarks allow users to organize and reference important information. Users can bookmark frequently visited or crucial content in the canvas with relevant information. Bookmarks help users navigate to content without having to search or browse extensively.  
    <img src="../images/xo-platform-AutomationAI-Bookmark.png" alt="Bookmarks" title="Bookmarks" style="border: 1px solid gray; zoom:70%;">

    #### Notes

    Add notes to highlight key points or summarize information. Notes can also be used for communication and feedback.  
    <img src="../images/xo-platform-AutomationAI-note.png" alt="Notes" title="Notes" style="border: 1px solid gray; zoom:70%;">

    ## LLM and Generative AI Framework

    ### Guardrails

    Large language models (LLMs) are powerful AI systems that can be leveraged to offer human-like conversational experiences. The Kore.ai XO Platform offers a wide range of features to leverage the power of LLMs. LLMs are usually pre-trained with a vast corpus of public data sources, and the content is not fully reviewed and curated for correctness and acceptability for enterprise needs. This results in generating harmful, biased, or inappropriate content at times. The XO Platform's Guardrail framework mitigates these risks by validating LLM requests and responses to enforce safety and appropriateness standards.

    Guardrails enable responsible and ethical AI practices by allowing developers to easily enable/disable rules and configure settings for different features using LLMs. Additionally, platform users can design and implement fallback behaviors for a feature, such as triggering specific events, if a guardrail detects content that violates set standards.  
    [Learn more :octicons-arrow-right-24:](../app-settings/generative-ai-tools/guardrails.md)

    ### Monitoring

    It offers comprehensive insights into utilizing Large Language Models (LLMs) and Generative AI features. The framework collects, analyzes, and presents comprehensive data on user interactions, request-response dynamics, and payload details. It enables platform users to track and compare usage across various LLM features and refine prompts and settings to boost performance and user experience.  
    [Learn more :octicons-arrow-right-24:](../analytics/genai-analytics/llm-usage-logs.md)
    
    [Learn more about Automation AI features :octicons-arrow-right-24:](../automation/about-automation-ai.md/)

=== "Search AI"

    Kore.ai’s SearchAssist capabilities are now available under Search AI on the XO Platform. Search AI offers AI-powered conversational search tools to quickly and accurately retrieve information from vast datasets and offer the most relevant piece of information to users. Add multiple data sources for building your answer index, including website crawlers, structured data, unstructured documents, catalogs, and knowledge bases. By combining Automation AI (Use Cases) and Search AI (Answers), businesses can create an exceptional, seamless conversational experience for their users.

    Key Search AI (Answers) capabilities are summarized below. 

    ### Content Extraction Strategies

    To generate answers using the source data, the ingested data is segmented into smaller segments or chunks to understand better, organize, and efficiently retrieve the most relevant set of data when required. Selecting the most appropriate strategy requires considering several factors, like the type of content, the embedding model to store chunks, the expected length and complexity of user queries and answers, etc.

    The application supports various chunk-generation strategies. You have the flexibility to select and customize the strategies based on the format and structure of the ingested data or as per the answers required. You can configure multiple strategies to apply to different types of content. This improves the precision of answers by aligning the strategy to the document characteristics and gives you flexibility and granular control over the answers generated.  
    <img src="../images/xo-platform-Content-Extraction- Strategies.png" alt="Content Extraction Strategies" title="Content Extraction Strategies" style="border: 1px solid gray; zoom:70%;">

    #### Chunk Browser

    The Chunk Browser provides a tool for observing the extracted chunks from the source data. It gives insight into the extraction process's output and enables subsequent actions like editing and rectifying the chunks. 

    * **Observation and Verification:** You can use the Chunk Browser to inspect and verify the extracted chunks. This step is crucial for ensuring the correctness of the extraction process, the accuracy of the chunks generated, and the preservation of data.  
    <img src="../images/xo-platform-Chunk Browser.png" alt="Chunk Browser" title="Chunk Browser" style="border: 1px solid gray; zoom:70%;">

    * **Editing of Chunks**: You can edit the chunk information directly within the browser interface. This capability can help you add any missed information, edit inaccurate information, or simply enrich the extracted information.  
    <img src="../images/xo-platform-Chunk Viewer.png" alt="Chunk Viewer" title="Chunk Viewer" style="border: 1px solid gray; zoom:70%;">

    #### Index Configuration

    Indexing is the process of generating vectors or embeddings from the extracted chunks and creating a knowledge Index that can be used to generate answers. Vectors or Embeddings are multidimensional numerical representations of the chunks that carry their semantic information. Embedding Models are algorithms that can translate data into vectors. The XO platform supports various embedding models, such as MPNet, LaBSE, and e5, and allows you to choose a model according to your specific needs.  
    <img src="../images/xo-platform-Index.png" alt="Index" title="Index" style="border: 1px solid gray; zoom:70%;">

    ### Answer Generation Strategies

    Search AI uses LLM to generate answers from the ingested chunks. The efficacy of the response depends on the Chunk Retrieval method and the Answer Generation configuration.

    #### Chunk Retrieval Strategy

    Choose the preferred chunk retrieval strategy for retrieving answer chunks from the answer index for a given query. Search AI supports **Vector Retrieval**, which uses cosine similarity scores, and **Hybrid Retrieval**, which considers patterns and structures in the text. The choice between using vector retrieval and hybrid retrieval depends on various factors, including the nature of the data, the specific requirements of the application, and the available resources.  
    <img src="../images/xo-platform-Chunk Retrieval.png" alt="Notes" title="Notes" style="border: 1px solid gray; zoom:70%;">

    * **Vector Retrieval**: In this type of retrieval, we compute the cosine similarity between the query vector and each chunk vector at the time of query, and the resulting scores are used to filter and sort the results. The score ranges from 0 to 1, where 0 indicates no match, and 1 represents a complete match.
    * **Hybrid Retrieval**: In this type of retrieval, multiple approaches are used to find the most relevant chunk corresponding to the query.

    #### Answers Generation

    Configure the type of answers to be presented to the users:

    * **Extractive Answers**: The topmost chunk retrieved in response to the user query is directly presented to the user as answers. The extractive answers are exact content retrieved from the chunks without any change in text.
    * **Generative Answers**: The top chunks retrieved in response to the user query are sent to the configured LLM, which generates a paraphrased answer from the content in the chunks. Use the following fields to configure Generative Answers.  
    <img src="../images/xo-platform-Generative Answers.png" alt="Generative Answer" title="Generative Answer" style="border: 1px solid gray; zoom:70%;">

    ### Search vs. Automation Setting

    You can either keep Automation First and Answers as a fallback or otherwise.  
    <img src="../images/xo-platform-Search vs. Automation Setting.png" alt="Search vs. Automation Setting" title="Search vs. Automation Setting" style="border: 1px solid gray; zoom:70%;">  
    
    [Learn more about Search AI features :octicons-arrow-right-24:](../searchai/about-search-ai.md)

    
=== "Contact Center AI"

    Contact Center AI (previously Kore.ai SmartAssist) is now a part of the unified XO Platform v11. You can now leverage Automation AI Use Cases and Search AI Answers to automate regular customer queries and seamlessly transfer them to a human agent as needed. The new Campaigns module helps streamline outbound voice and web campaigns. It provides templates and analytics to easily create targeted campaigns, reach audiences efficiently, track performance, and achieve goals more effectively.

    The key features and experience changes are summarized below.

    ## Experience Flows

    ### Improved Experience Flows 

    To reduce confusion, the OnConnect/Welcome Events have now been merged into the new Experience Flows. With XO11, the logic typically written in these events can now be easily managed via experience flows.

    ### Updated Flow Builder

    The Flow Builder interface has been revamped to provide a smoother, more intuitive user experience. The interface is similar to the Dialog Builder, making the transition seamless and effortless.  
    <img src="../images/xo-platform-Flow Builder.png" alt="Updated Flow Builders" title="Updated Flow Builder" style="border: 1px solid gray; zoom:70%;">

    ### Enhanced Automation: Conversational Input and Run Automation Nodes Merged, Deflect to Chat Deprecated

    The automation process is simplified by merging Conversational Input and Run Automation Nodes into a single entity: **Automation**. This consolidation streamlines bot invocation and aligns with usage patterns observed from existing customers and demo scenarios.  
    <img src="../images/xo-platform-contact-center-Automation.png" alt="Automation" title="Automation" style="border: 1px solid gray; zoom:70%;">

    Deflect to Chat is no longer supported. This change is driven by the limited usage observed among customers, but we remain committed to addressing relevant needs and exploring adding support based on internal use cases.

    ## Centralized Publish Module

    To ensure consistency, simplify workflow management, and centralize management tasks, we've introduced a centralized Publish Module. All flows can be published from this module.  
    <img src="../images/xo-platform-Centralised-Publish-Module.png" alt="Centralized Publish Module" title="Centralized Publish Module" style="border: 1px solid gray; zoom:70%;">

    ## Channels

    ### Omni-channel Setup

    With Contact Center AI, you can seamlessly integrate various channels, including voice, chat, email, social media, and custom SDKs, to provide a unified experience for your customers and ensure effortless omnichannel communication.  
    <img src="../images/xo-platform-omnichannel-setup.png" alt="Omni-channel Setup" title="Omni-channel Setup" style="border: 1px solid gray; zoom:70%;">

    ### Kore.ai Voice Gateway

    Expand your reach by enabling voice interactions through the Kore.ai Voice Gateway. It helps configure how Contact Center AI handles automation for inbound voice calls. Customers can engage with your contact center using natural language voice commands.

    ### Selective Routing

    One significant enhancement is the ability to selectively choose whether to direct customers to automation or human assistance. This feature empowers you to optimize customer journeys considering complexity, urgency, or preference.

    ### Support for Digital Channels

    Our platform is extended to support digital channels such as social media platforms, enterprise messaging apps, and custom SDKs. This allows you to engage with customers wherever they are, enhancing accessibility and convenience.

    ### Integration with 3rd Party IVR Systems

    Contact Center AI seamlessly integrates with third-party IVR systems, enabling you to leverage existing investments and infrastructure while benefiting from our advanced capabilities.

    ## Role and User Management

    ### App Level User Definitions

    Users can be defined at the app level and assigned necessary roles, providing granular control over access and permissions.

    ### Contact Center Attributes 

    Additional contact center attributes can now be added under the Contact Center section, enhancing customization and tailoring the application to your specific requirements.

    ### Administrator / Admin Role Deprecated

    The Administrator/Admin role is deprecated. Existing accounts will seamlessly transition to a new custom role with equivalent permissions on Contact Center AI, ensuring continuity and preserving access levels.

    ## Updated Bot Architecture

    Instance and Automation bots are merged into a single bot. New accounts will require managing only one bot. However, existing accounts that will be migrated will continue to have separate instance and automation bots.

    ## New Campaigns Module

    The new Campaigns module simplifies and enhances outbound efforts across voice and web channels. It offers tools for creating targeted voice campaigns and proactive web campaigns, supported by easy-to-use templates and comprehensive analytics. This allows businesses to efficiently reach their audience, monitor campaign performance, and achieve their objectives with greater precision and effectiveness.

    ### Voice Campaigns

    Use the power of voice technology to connect with your audience through personalized messages or interactive experiences. Setting up a new voice campaign is easy—begin with a targeted contact list to ensure your message resonates with the right audience.  
    <img src="../images/xo-platform-voicecampaign.png" alt="Voice Campaigns" title="Voice Campaigns" style="border: 1px solid gray; zoom:70%;">

    ### Proactive Web Campaigns

    Elevate your online presence with proactive web campaigns to promote your products, services, or brand. Utilizing digital channels, these campaigns are crafted to increase visibility, generate leads, and build brand awareness, ensuring measurable success.  
    <img src="../images/xo-platform-proactive-web-campaign.png" alt="Proactive Web Campaigns" title="Proactive Web Campaigns" style="border: 1px solid gray; zoom:70%;">

    You can create proactive web campaigns from scratch in various formats:  
    <img src="../images/xo-platform-formats.png" alt="formats" title="formats" style="border: 1px solid gray; zoom:70%;">

    You can also create proactive web campaigns using pre-defined templates. These templates save time and effort while ensuring consistency and brand identity. They are cost-effective, user-friendly, and offer flexibility for customization.  
    <img src="../images/xo-platform-templates.png" alt="Templates" title="Templates" style="border: 1px solid gray; zoom:70%;">

    ### List Management

    List management involves organizing and maintaining targeted Contact Lists for efficient outreach while adhering to Do Not Contact (DNC) regulations.

    Managing Contact Lists:  
    <img src="../images/xo-platform-managing-contact-list.png" alt="Managing Contact Lists" title="Managing Contact Lists" style="border: 1px solid gray; zoom:70%;">

    Managing DNC Lists:  
    <img src="../images/xo-platform-managing-DNC-List.png" alt="Managing DNC Lists" title="Managing DNC Lists" style="border: 1px solid gray; zoom:70%;">

    ### Dashboard

    The campaign dashboard allows campaign managers to obtain an overview of all their campaigns, including their status—whether they're active, inactive, or completed. This centralized snapshot facilitates effortless monitoring and management.  
    <img src="../images/xo-platform-cc-dashboard.png" alt="Dashboard" title="Dashboard" style="border: 1px solid gray; zoom:70%;">

    You can drill down individual campaigns to get detailed insights.  
    <img src="../images/xo-platform-cc-overview.png" alt="Overview" title="Overview" style="border: 1px solid gray; zoom:70%;">

    ### Settings

    The settings allow campaign managers to decide the maximum number of concurrent calls that can be dialed.  
    <img src="../images/xo-platform-cc-setting.png" alt="Settings" title="Settings" style="border: 1px solid gray; zoom:70%;"> 
    

    [Learn more about Contact Center AI features :octicons-arrow-right-24:](../contactcenter/about-contact-center-ai.md)

=== "Agent AI"

    Agent AI (previously Kore.ai AgentAssist) is now a part of the unified XO Platform v11. 

    It is an AI-powered virtual assistant for contact centers that enhances agent efficiency and service quality. It automates repetitive tasks like information retrieval and transactions and provides real-time customer insights and suggestions. By using Kore.ai's NLP and AI/ML technologies, AgentAI understands customer intent and offers contextually appropriate responses and FAQs. AgentAI operates as a widget within popular contact center platforms, supporting both voice and chat interactions.

    The key features and experience changes are summarized below.

    ## Single Configuration Screen

    You don’t need different configuration screens for third-party contact centers and SmartAssist. For third-party integrations, navigate to **Channels** and use the **bot details** to establish a connection.

    ## SearchAssist / Answers

    SearchAssist provides an intelligent, contextual, and personalized experience in every interaction across web and mobile channels. You can enhance Agent AI's search capabilities by integrating it with the Search AI application. You can utilize LLM and Gen AI to generate answers, but that section applies only to automation.  
    <img src="../images/xo-platform-Knowledge AI.png" alt="Knowledge AI" title="Knowledge AI" style="border: 1px solid gray; zoom:70%;">

    * Search Results: Gives you the control over Knowledge AI search results. Agents can select between Always Show, Show with XO Results, and Show as a Fallback event.
    * Show Auto Suggestions: When On, auto suggestions are available in the Ask AgentAssist search bar. 
    * API Integration: You can optimize your search experience with the advanced Knowledge AI API configuration. Choose Basic to use the default Knowledge AI configurations or Advanced to configure how you want to use the Knowledge AI. The Advanced option lets you use your own API. The default selection is Basic.
    * Control expand behavior of Answers: You can now customize the number of answers that appear for your Knowledge AI search in the AgentAssist widget. For example, if you select “3” on the AgentAssist Settings page, only three answers will appear in the widget. By default, “4” is selected.

    ## Settings

    ### Channel-specific Setting 

    This section lets you set your preferences based on the channels. It has three channels – Chat, Voice, and Email – with a channel-specific default selection of options.  
    <img src="../images/Agent-Assist-Setting.png" alt="Channel-specific Setting " title="Channel-specific Setting " style="border: 1px solid gray; zoom:70%;">

    The available options are as follows:

    * **Proactive Mode**: This widget automates intent identification, entity extraction, and transcript generation. It also allows for automatic (proactive) transcript logging and intent suggestions. By default, this widget is enabled for all three channels.
    * **Agent Coaching**: This widget enables real-time agent coaching based on analyzing agent utterances and speech. You can set up specific utterances and speech patterns for AgentAssist to take relevant actions, such as providing hints and nudges or emailing the manager when those patterns occur. By default, it is disabled for all channels and is only available for chat and voice channels.
    * **Agent Playbook**: This widget provides agents with structured guidance and helps streamline task management. Supervisors can define stages and steps to follow, choose step progression (sequential or random), mark whether the steps are completed manually or automatically, and set adherence notifications. They can leverage this feature to gain valuable insights into agent adherence to specific playbook steps and use this data to enhance agents’ ability to handle interactions and significantly improve customer satisfaction. By default, this widget is disabled, but you can enable it for all three channels.
    * **Send Button**: This option controls the accessibility of the Send button functionality for AgentAssist responses. By default, it’s enabled for Voice and Chat channels.
    * **Copy Button**: This option controls the accessibility of the Copy button functionality for AgentAssist responses. By default, it’s enabled for all three channels.
    * **Transcript Tab**: This option controls the appearance of the Transcript tab in the AgentAssist widget. By default, this widget is enabled and available for the Chat channel only.
    * **Auto Summarization**: This option controls the automatic generation of a summary of the conversation when it ends. Agents can copy the summary and save it into the Notes or Remark field while closing the conversation. By default, it’s enabled for Voice and Chat channels only, and it also has the option to select the Submit button.
    * **Widget Landing Tab**: This option allows you to select the default landing page for your selected channel and is available for all three channels.

    [Learn more about Agent AI features :octicons-arrow-right-24:](../agentai/about-agent-ai.md)

<hr>
