---
hide:
  - feedback
  
---
# What's New in XO 11
Learn about the new features and enhancements included in v11 of Kore.ai Experience Optimization Platform.

## All-new Experience Optimization Platform
Kore.ai all-new Experience Optimization (XO) Platform is an AI-powered, end-to-end experience optimization Platform for enterprises of any scale to offer best-in-class conversational experiences for customers, employees, and agents. The Platform seamlessly blends conversational AI intelligence and generative AI innovation, offering the tools to create scalable and memorable customer experiences. The Platform is recognized as the world's most secure, credible, and scalable solution for generative and conversational AI. The Platform's business user-friendly, no-code interface allows businesses to construct intelligent virtual assistants, incorporating large language models and generative AI to foster meaningful and continuous conversations in users' preferred languages and channels.

## Comprehensive Suite of Products and Services
The unified XO Platform offers a comprehensive suite of products, features, and services to help businesses leverage conversational AI intelligence and generative AI innovations to deliver exceptional customer experiences, improve operational efficiency, and drive business growth.

**Key Products, Features, and Services offered by the XO Platform:**

<img src="../images/xo-platform-components.png" alt="New Unified XO Platform" title="New unified XO Platform">

=== "Automation AI"

    Automation AI offers sophisticated AI-powered tools for creating Virtual Assistants to handle customer interactions through intelligent automation. You can define specific use cases and utilize advanced Natural Language Processing (NLP) to handle complex interactions. You can also empower virtual assistants to handle interruptions and provide clarifications for more natural dialogues. It also offers testing tools to ensure a smooth and reliable user experience by identifying and fixing issues before deployment.
    
    Key Features
    
    * **Virtual Assistant Builder**: Enables the creation of intelligent virtual assistants.
    * **Multi-Model NLU**: Natural Language Understanding that uses multiple models to better understand user input.
    * **GenAI Framework**: A generative AI framework to enhance automation capabilities.  
    
    [Learn more about Automation AI features :octicons-arrow-right-24:](../automation/about-automation-ai.md)

=== "Search AI"

    Search AI offers AI-powered conversational search tools to quickly and accurately retrieve information from vast datasets and offer the most relevant piece of information to users. You can add multiple data sources to build your answer index, including website crawlers, structured data, unstructured documents, catalogs, and knowledge bases. You can also enrich and enhance your content to meet the specific needs of your users in accordance with your business needs. By combining Automation AI Use Cases and Search AI, businesses can create an exceptional, seamless conversational experience for their users.
    
    Key Features
    
    * **Knowledge AI with LLM**: Integrates large language models to enrich knowledge bases.
    * **Retrieval Augmented Generation**: Enhances information retrieval with generative AI.
    * **Advanced RAG**: An advanced version of retrieval augmented generation for improved search capabilities.  
    
    [Learn more about Search AI features :octicons-arrow-right-24:](../searchai/about-search-ai.md)

=== "Contact Center AI"

    Contact Center AI offers a conversational AI-native Contact Center-as-a-service solution to enhance customer experience, increase revenue, and reduce operational costs. It helps create consistent, personalized, intelligent, and effortless customer and agent experiences across channels. You can leverage Automation AI Use Cases and Search AI to automate regular customer queries and seamlessly transfer them to a human agent as needed. The new Campaigns module helps streamline outbound voice and web campaigns. It provides templates and analytics to easily create targeted campaigns, reach audiences efficiently, track performance, and achieve goals more effectively.
    
    Key Features
    
    * **Routing & Experience Flows**: Manages the routing of queries and the flow of customer experiences.
    * **Agent Desktop**: Provides a centralized workspace for agents.
    * **Campaigns**: Tools for managing voice and proactive web campaigns.  
    
    [Learn more about Contact Center AI features :octicons-arrow-right-24:](../contactcenter/about-contact-center-ai.md)

=== "Agent AI"

    Agent AI is your agent’s personal intelligent Virtual Assistant. It offers AI-native agent assistance to boost your contact center agents’ productivity and customer satisfaction. You can set up AI-powered automation workflows to empower your agents to deliver exceptional customer service by offering real-time assistance, the next best action, built-in Knowledge AI, automated assistance, and real-time guidance.
    
    Key Features
    
    * **Real-time AI suggestions**: Offers live AI-powered guidance to agents.
    * **Auto-fulfillment**: Automates the completion of tasks and processes.
    * **Agent Coaching & Playbooks**: Provides resources and strategies for agent training and performance.  
    
    [Learn more about Agent AI features :octicons-arrow-right-24:](../agentai/about-agent-ai.md)

=== "Analytics"

    The Analytics Module provides a comprehensive 360-degree view of all voice and digital conversations across channels. It offers insightful dashboards, including containment information, conversation history, automation analytics, generative AI logs and analytics, search analytics, and contact center analytics. The module empowers your teams with data-driven insights, enabling them to make informed decisions to meet their targets.
    
    Key Features
    
    * **Virtual Agent - User Conversational Insights**: Analyzes and provides insights on interactions between users and virtual agents.
    * **Virtual Agent Performance Insights**: Monitors and evaluates the performance of virtual agents.
    * **Contact Center Quality Management Insights**: Offers insights to improve contact center operations.  
    
    [Learn more about Analytics features :octicons-arrow-right-24:](../analytics/introduction.md)

=== "Platform Services"

    Common services help manage the entire lifecycle of products and services easily. You can configure the settings and the services once and use them across the Platform for all products and services.
    
    Key Services
    
    * **Life Cycle Management**: Tools for managing the lifecycle of apps and services, including versioning, publishing, and collaboration.
    * **Multi-lingual Support**: Offers support for multiple languages.
    * **Pre-built Integrations**: Provides ready-to-use integrations with other systems.
    * **Generative AI**: Utilizes generative AI across the Platform.
    * **Omnichannel**: Ensures a seamless experience across various communication channels.  
    
    [Learn more about Common Services :octicons-arrow-right-24:](../app-settings/app-profile.md)

=== "Enterprise Services"

    The Platform empowers enterprise customers with additional services.   
    
    Key Services
    
    * **Role-based Access Controls, Audit Logs**: Ensures security and accountability through access management and logging.
    * **Security, Compliance (SOC-2, PCI, FedRAMP, HIPAA, GDPR)**: Compliant with major security and privacy standards.
    * **Cloud and On-Premise Deployments**: Flexible deployment options.
    * **Scalability, Integrations, Authentication, and Authorization**: Ensures the Platform can scale and integrate securely with other systems.  
    
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

## Key Navigation Changes

**Ease of Access to All Products and Services**

* A new guided onboarding journey helps you create your first app in record time. To start the journey, click **Create New** on the home page and follow the guided steps to create the app.  
<img src="../images/xo-platform-homepage.png" alt="New unified XO Platform" title="New unified XO Platform" style="border: 1px solid gray; zoom:70%;">

* Easy access to the Setup Guide allows you to quickly change anything inside your app later.  
<img src="../images/xo-platform-setupguide.png" alt="Setup Guide" title="Setup Guide" style="border: 1px solid gray; zoom:70%;">    

* Quickly switch to your favorite product using the **Product Switcher**.  
<img src="../images/xo-platform-productswitcher.png" alt="Product Switcher" title="Product Switcher" style="border: 1px solid gray; zoom:70%;">

## Key Differences Between XO11 and XO10

???+ abstract "Welcome Events Replaced with Welcome Flows"

     Earlier, incoming conversations were handled by events such as OnConnect/Welcome events. These events are now replaced with Flows. Flows are designed to replace the Welcome or OnConnect Message, Trigger a Dialog Task, or Run a Script.  
     <img src="../images/xo-platform-welcomeflow.png" alt="Welcome flow" title="Welcome flow" style="border: 1px solid gray; zoom:70%;">

??? abstract "Welcome Events Replaced with Welcome Flows"

    Earlier, incoming conversations were handled by events such as OnConnect/Welcome events. These events are now replaced with Flows. Flows are designed to replace the Welcome or OnConnect Message, Trigger a Dialog Task, or Run a Script.  
    <img src="../images/xo-platform-welcomeflow.png" alt="Welcome flow" title="Welcome flow" style="border: 1px solid gray; zoom:70%;">
  
??? abstract "Dialog Builder Upgrade"

     XO11 has an all-new super intuitive dialog builder.  
    <img src="../images/xo-platform-Dialogbuilder.png" alt="Dialog Builder" title="Dialog Builder" style="border: 1px solid gray; zoom:70%;">

??? abstract "Talk to Bot Moved to Header"

    Talk to Bot has been renamed to **Test**. Users can Test Voice or Digital Conversation using Talk to Bot. Also, users can now see the current state of your conversation in the Talk-to-Bot (Test/Resume/Stop).  
    <img src="../images/Talk-to-bot.png" alt="Talk to bot" title="Talk to bot" style="border: 1px solid gray; zoom:70%;">  
    <img src="../images/xo-platform-test.png" alt="Test" title="Test" style="border: 1px solid gray; zoom:70%;"></p>
    </details> 
   
    
<details>
    <summary>Create Dialog Enhanced with Generative AI</summary>
    <p>You can now use Gen AI to create a dialog from scratch. You can also install pre-built Integration Templates directly from the all-new Marketplace as Dialog Tasks.  
    <img src="../images/xo-platform-createdialog.png" alt="Create Dialog" title="Create Dialog" style="border: 1px solid gray; zoom:70%;"></p>
    </details>

<details>
    <summary>Bot Configurations Moved to App Settings</summary>
    <p>All the configurations applicable across the app have been moved to a separate menu item - App Settings.    
    <img src="../images/xo-platform-appsetting.png" alt="App Setting" title="App Setting" style="border: 1px solid gray; zoom:70%;"></p>
    </details>

<details>
    <summary>Shared LLM & Generative Settings for All Products</summary>
    <p>All the LLM integrations can be managed in one place in an app and used across the products on the Platform. For example, Agent Response Rephrasing applies to both Contact Center AI and Agent AI.  
    <img src="../images/xo-platform-LLM&generativeAI.png" alt="LLM & GenerativeAI" title="LLM & GenerativeAI" style="border: 1px solid gray; zoom:70%;"></p>
    </details>

<details>
    <summary>Global User Management</summary>
    <p>User Management is now applicable across the modules. You can set permissions, manage agent-related Permissions, Create a new Role, and Assign a role to a new or existing user. You can also assign a role to User groups (but the creation of User Groups is still in the Admin Console Page).  
    <img src="../images/xo-platform-manageuser.png" alt="User Management" title="User Management" style="border: 1px solid gray; zoom:70%;"></p>
    </details>  

<details>
    <summary>App Level Publishing and Version Management</summary>
    <p>Be it Publishing Dialogs or Flows, everything is now done in one place. The Platform supports all variants of publishing (partial, full), version control, and Import and export in one centralized place.  
    <img src="../images/xo-platform-deploy.png" alt="Deploy" title="Deploy" style="border: 1px solid gray; zoom:70%;"></p>
    </details>

<details>
    <summary>Reorganized Analytics</summary>
    <p>The Analytics module is logically regrouped to address various audience needs. A session starts from Channel through Flows, can go to Automation AI (Virtual Assistant), and then transfer to Agent. The module offers unified analytics across all conversations.  
    <img src="../images/xo-platform-analytics.png" alt="Analytics" title="Analytics" style="border: 1px solid gray; zoom:70%;"></p>
    </details>

<details>
    <summary>Fallback Behaviour</summary>
    <p>We have a new setting where users can configure where every user utterance should go first:  Automation AI (Virtual Assistant) or Search AI (Answers) to get the response.  
    <img src="../images/xo-platform-fallback-behaviour.png" alt="Fallback Behaviour" title="Fallback BehaviourI" style="border: 1px solid gray; zoom:70%;"></p>
    </details>

<details>
    <summary>New Marketplace</summary>
    <p>The New Marketplace is available inside the App (previously, it was on the bot's homepage). It allows users to search for prebuilt templates and filter them by integration type, provider, domain, etc.  
    <img src="../images/xo-platform-marketplace.png" alt="Marketplace" title="Marketplace" style="border: 1px solid gray; zoom:70%;"></p>
    </details>

<details>
    <summary>New Billing Page</summary>
    <p>The billing definition has been changed to accommodate the various price offerings we are providing in UXO. The Billing Session definition for Automation is 15 minutes of Interaction, and for Contact Center, it's 15 minutes of ideal time. The Platform offers various plans, and users can choose the plan for each product individually. Note that if users want to be Enterprise customers, then they have to choose enterprise plans for all the products.  
    <img src="../images/xo-platform-billingpage.png" alt="Billing Page" title="Billing Page" style="border: 1px solid gray; zoom:70%;"></p>
    </details>

<details>
    <summary>Other Changes
</summary>
    <p>
     * Languages are now at the App level. Users can add a language globally and access it inside a specific module. For example, a New Agent language assignment is only done if it is added globally at the App level.
     * Dev tools offer all the developer-related menus, such as BotKit, API scopes, Auth profiles, etc., across the products. </p>
    </details>





 