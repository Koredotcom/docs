---
hide:
  - toc
  - feedback
---
# All-new Experience Optimization Platform
Kore.ai all-new Experience Optimization (XO) Platform is an AI-powered, end-to-end experience optimization Platform for enterprises of any scale to offer best-in-class conversational experiences for customers, employees, and agents. The Platform seamlessly blends conversational AI intelligence and generative AI innovation, offering the tools to create scalable and memorable customer experiences. The Platform is recognized as the world's most secure, credible, and scalable solution for generative and conversational AI. The Platform's business user-friendly, no-code interface allows businesses to construct intelligent virtual assistants, incorporating large language models and generative AI to foster meaningful and continuous conversations in users' preferred languages and channels.

# Comprehensive Suite of Products and Services
The unified XO Platform offers a comprehensive suite of products, features, and services to help businesses leverage conversational AI intelligence and generative AI innovations to deliver exceptional customer experiences, improve operational efficiency, and drive business growth.

**Key Products, Features, and Services offered by the XO Platform:**

<img src="../images/xo-platform-components.png" alt="New Unified XO Platform" title="New unified XO Platform">

=== "Automation AI"

    Automation AI offers sophisticated AI-powered tools for creating Virtual Assistants to handle customer interactions through intelligent automation. You can define specific use cases and utilize advanced Natural Language Processing (NLP) to handle complex interactions. You can also empower virtual assistants to handle interruptions and provide clarifications for more natural dialogues. It also offers testing tools to ensure a smooth and reliable user experience by identifying and fixing issues before deployment.
    
    Key Features
    
    * Virtual Assistant Builder: Enables the creation of intelligent virtual assistants.
    * Multi-Model NLU: Natural Language Understanding that uses multiple models to better understand user input.
    * GenAI Framework: A generative AI framework to enhance automation capabilities.  
    
    [Learn more about Automation AI features :octicons-arrow-right-24:](../automation/about-automation-ai.md)

=== "Search AI"

    Search AI offers AI-powered conversational search tools to quickly and accurately retrieve information from vast datasets and offer the most relevant piece of information to users. You can add multiple data sources to build your answer index, including website crawlers, structured data, unstructured documents, catalogs, and knowledge bases. You can also enrich and enhance your content to meet the specific needs of your users in accordance with your business needs. By combining Automation AI Use Cases and Search AI, businesses can create an exceptional, seamless conversational experience for their users.
    
    Key Features
    
    * Knowledge AI with LLM: Integrates large language models to enrich knowledge bases.
    * Retrieval Augmented Generation: Enhances information retrieval with generative AI.
    * Advanced RAG: An advanced version of retrieval augmented generation for improved search capabilities.  
    
    [Learn more about Search AI features :octicons-arrow-right-24:](../searchai/about-search-ai.md)

=== "Contact Center AI"

    Contact Center AI offers a conversational AI-native Contact Center-as-a-service solution to enhance customer experience, increase revenue, and reduce operational costs. It helps create consistent, personalized, intelligent, and effortless customer and agent experiences across channels. You can leverage Automation AI Use Cases and Search AI to automate regular customer queries and seamlessly transfer them to a human agent as needed. The new Campaigns module helps streamline outbound voice and web campaigns. It provides templates and analytics to easily create targeted campaigns, reach audiences efficiently, track performance, and achieve goals more effectively.
    
    Key Features
    
    * Routing & Experience Flows: Manages the routing of queries and the flow of customer experiences.
    * Agent Desktop: Provides a centralized workspace for agents.
    * Campaigns: Tools for managing voice and proactive web campaigns.  
    
    [Learn more about Contact Center AI features :octicons-arrow-right-24:](../contactcenter/about-contact-center-ai.md)

=== "Agent AI"

    Agent AI is your agent’s personal intelligent Virtual Assistant. It offers AI-native agent assistance to boost your contact center agents’ productivity and customer satisfaction. You can set up AI-powered automation workflows to empower your agents to deliver exceptional customer service by offering real-time assistance, the next best action, built-in Knowledge AI, automated assistance, and real-time guidance.
    
    Key Features
    
    * Real-time AI suggestions: Offers live AI-powered guidance to agents.
    * Auto-fulfillment: Automates the completion of tasks and processes.
    * Agent Coaching & Playbooks: Provides resources and strategies for agent training and performance.  
    
    [Learn more about Agent AI features :octicons-arrow-right-24:](../agentai/about-agent-ai.md)

=== "Analytics"

    The Analytics Module provides a comprehensive 360-degree view of all voice and digital conversations across channels. It offers insightful dashboards, including containment information, conversation history, automation analytics, generative AI logs and analytics, search analytics, and contact center analytics. The module empowers your teams with data-driven insights, enabling them to make informed decisions to meet their targets.
    
    Key Features
    
    * Virtual Agent - User Conversational Insights: Analyzes and provides insights on interactions between users and virtual agents.
    * Virtual Agent Performance Insights: Monitors and evaluates the performance of virtual agents.
    * Contact Center Quality Management Insights: Offers insights to improve contact center operations.  
    
    [Learn more about Analytics features :octicons-arrow-right-24:](../analytics/introduction.md)

=== "Platform Services"

    Common services help manage the entire lifecycle of products and services easily. You can configure the settings and the services once and use them across the Platform for all products and services.
    
    Key Services
    
    * Life Cycle Management: Tools for managing the lifecycle of apps and services, including versioning, publishing, and collaboration.
    * Multi-lingual Support: Offers support for multiple languages.
    * Pre-built Integrations: Provides ready-to-use integrations with other systems.
    * Generative AI: Utilizes generative AI across the Platform.
    * Omnichannel: Ensures a seamless experience across various communication channels.  
    
    [Learn more about Common Services :octicons-arrow-right-24:](../app-settings/app-profile.md)

=== "Enterprise Services"

    The Platform empowers enterprise customers with additional services.   
    
    Key Services
    
    * Role-based Access Controls, Audit Logs: Ensures security and accountability through access management and logging.
    * Security, Compliance (SOC-2, PCI, FedRAMP, HIPAA, GDPR): Compliant with major security and privacy standards.
    * Cloud and On-Premise Deployments**: Flexible deployment options.
    * Scalability, Integrations, Authentication, and Authorization: Ensures the Platform can scale and integrate securely with other systems.  
    
    [Learn more about Enterprise Services :octicons-arrow-right-24:](../administration/adminconsole.md)

<hr>

## Integrated Architecture for Omnichannel Customer Engagement
The image below provides a high-level understanding of the XO platform's capabilities, the integrated nature of its components, and how they work together as an integrated system to support customer engagement across multiple channels.

<img src="../images/xo-platform-components-flow.png">

Various components and their interactions within the XO platform:

* At the top, it has different **Channels** or entry points: Digital, Voice Gateway, and 3rd Party IVR.
* These channels feed into the **Start / Exit Flows** component, which handles the interactions' initial and final stages. From there, the flow can branch out into other components based on the implementation.
* Automation flow: 
    - **Intelligent Virtual Assistant**: The interaction is sent to the Virtual Assistant. It can handle complex interactions via Automation AI use cases and natural language processing.
    - **Search AI**: In addition to Automation AI use cases, you can use Search AI to retrieve information from vast datasets and feed the most relevant information to users via the Virtual Assistant. 
* Agent transfer flow:
    - **Contact Center / Agent Desktop**: The request is sent to Contact Center AI or Agent Desktop for live agent interactions.
    - **Agent AI**: Provides AI-powered assistance and recommendations to human agents during interactions via Agent Desktop.
    - **Third-Party Contact Center / Agent Desktop**: The request can be sent to external contact center solutions for live agent interactions.
* **Campaigns** can interact with the Contact Center to help you manage and execute marketing and customer outreach efforts via outbound voice and web campaigns.
* **Analytics** gathers data to provide insights into user interactions and system performance.
* **App Management** supports the entire platform with functionalities for publishing, importing/exporting apps, user management, collaboration, billing, etc.

<hr>

##### Related Links

* [What's New in XO v11](./whats-new-in-xo-platform.md)
* [Key Differences - XO v11 vs. v10](./key-differences-between-xo11-and-xo10.md)
* [Current Limitations](../release-notes/current-limitations.md)
* [Migration Path for Existing Customers - Upgrade Journey](./whats-new-in-xo-platform.md#migration-path-for-existing-customers-upgrade-journey)