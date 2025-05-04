# Set up an AI Agent

Setting up an agent involves defining its intended purpose, configuring its core functions, and ensuring it has the necessary tools and resources to perform its tasks. It also includes defining the boundaries of the agent to govern its actions within specified boundaries.


<img src="../images/agent-anatomy.png" alt="Anatomy of an Agent" title="Anatomy of an Agent" style="border: 0px solid gray; zoom:65%;">

To add a new agent to an app, go to the Agents Apps page, choose the App, and then click **+New Agent**. 

![Add Agent](images/new-agent-pw1.png "Add Agent")

You can also set up the agent during the app creation process. 

![Add Agent](images/new-agent-pw.png "Add Agent")

Enter or select the appropriate details for each field as described below. 

## Agent Profile

Agent profile consists of the following fields:

**Name**: Choose a unique name that reflects your agent's core function and persona. It is good to have a name that is intuitive and indicative of its role. 

!!!abstract "Examples"

    * Credit Card Assistant for an agent that handles all queries related to credit cards.
    * Leave Manager for an agent that manages all requests related to employee leaves in an organization.
    * Order Manager for an agent that manages all the user requests related to order status, returns, and refunds. 

---

**Description**: Specify your AI agent's primary objectives and key responsibilities. The description should clearly define the agent's role in the application and differentiate it from other agents. The application orchestrator uses this description to select the most suitable agent for a specific task.

!!!abstract "Examples"

    * Credit Card Assistant: An agent that handles all queries related to credit cards.
    * Leave Manager: An agent that manages all requests related to employee leaves in an organization.
    * Order Manager: Manages all the user requests related to order status, returns, and refunds. 

---

**Avatar**: Select an avatar for the agent. This is primarily for visual appeal. 

---

**AI Model**: Select the AI model that the agent will use to perform its tasks. The model helps an Agent in the following:

* Understanding and Processing User Input into structured data
* Selecting the most appropriate action for the task
* Tool calling 
* Transforming results from agents into natural and contextual responses for the users.

For more information, see [Add an External Model](./../core-ai/models/external-models/add-an-external-model-using-easy-integration.md/).

!!!tip
    When choosing a model for your agent, consider its specific use case. For example, if the agent is designed for code generation, opt for a model that specializes in coding skills.


---

## Agent Definition

**Scope**: This section outlines the agent's role and the tasks it can perform. The scope defines the agent's capabilities, serving as a guideline for setting its objectives and outlining its functionalities. Clearly establishing what the agent can do and how it should operate ensures that the goals are effectively aligned.  

!!!abstract "Examples"

    * Leave Manager: You are an AI-powered Leave Management Assistant designed to streamline the leave application process and provide employees with up-to-date leave balances. Your key responsibilities include:
        * Facilitating Leave Applications: Guide employees through the process of applying for leave, ensuring the correct leave type and duration are selected.
        * Providing Leave Balances: Offer accurate and real-time updates on remaining leave entitlements.
        * Cancelling Leave requests: Help users cancel their leave requests
    * Credit Card Assistant: You are an AI-powered Credit card assistant that assists users with credit card-related inquiries and transactions efficiently and accurately. Your responsibilities include:
        * Credit Card Approval Status: provide updates on the status of of credit card applications. 
        * Outstanding Balance Inquiry: Provide details on the outstanding bills and information on recent transactions. 
        * Bill Payments: Facilitate secure payment of outstanding credit card bills.
    *  Order Manager: You are an AI agent responsible for enabling users to access real-time order updates and manage their orders independently. Key responsibilities are:
        * Order Status Inquiry: Provide updates on the order status. 
        * Return Management: Verify the eligibility of return, guide users on the return process, initiate returns, and provide information on return policies. 
        * Refund Enquiry: Provide the status of the refund and address refund-related queries. 

---

**Instructions**: Instructions for an agent are a set of directives or rules that define how an agent should behave, respond to inputs, and complete tasks effectively, aligning with the application's overall goal. Instructions can be used to define an agent's boundaries or provide specifications on how to interact with users.

They serve as a guide to ensure the agent operates within its scope and delivers accurate and consistent results.

!!!abstract "Examples"

    * Setting the tone of the conversation:

        “Respond in a professional and empathetic tone when handling refund-related queries.”

    * Understanding User Inputs:

        “When a user asks for leave balance, do not prompt exclusively for the leave type.”

    * Output Guidelines:

        “Always get a confirmation from the user before performing any transactions. ”


---

## Knowledge

Agent Platform provides powerful search functionality across diverse content sources using\the **Search AI** application, which supports Retrieval-Augmented Generation (RAG)-based search across enterprise knowledge bases, document repositories, FAQs, and external systems. This advanced RAG-driven integration empowers autonomous agents to deliver accurate, context-aware, and timely responses by leveraging relevant information from connected knowledge sources.

You can link to one or more Search AI applications in the same workspace and account and access them as Knowledge Tools for the agent to answer user queries. Each Search AI app can be integrated with multiple content sources. 

[Learn more](./../ai-agents/knowledge/about-knowledge.md) about Knowledge integration with agents. 

---
## Tools

**Tools** are foundational components that empower agents to perform purposeful actions. They serve as the functional extensions of an agent’s intelligence, enabling it to interact with third-party applications, retrieve information, perform logic-based operations, and trigger workflows across complex environments.

In an agentic architecture, **Actions** represent the discrete tasks an agent can execute. These actions are made possible by **Tools**, which encapsulate the domain-specific logic and capabilities needed to accomplish specific objectives. Tools serve as the operational backbone of actions, providing the necessary interfaces and execution that translate an agent’s intent into meaningful outcomes.

Powered by the tool invocation capabilities of large language models (LLMs), agents can dynamically identify and invoke the most relevant tools at runtime, ensuring flexibility, scalability, and precision in task execution.

!!!abstract "Examples"

    * Tools for a Leave Managing Agent might include:	
        * Get leave balance tool that invokes an external API to get leave details.
        * Leave application tool that gathers necessary information and applies leaves in the backend system.  
    * Tools for a Credit Card Assistant might include:
        * Retrieve outstanding amount - Fetches the due amount 
        * Fetch credit limit - Fetches the maximum credit limit for the user 
        * Initiate bill payment - Initiates bill payment process
        * Find recent transactions - Present last *n* transactions that might include retrieving data from a database. 

There are **two types of tools** that agents can use.



* **Workflow Tools**: **Workflow Tools** provide a visual, no-code interface for designing and orchestrating agent actions with ease. Built for clarity and control, these tools allow users to define multi-step workflows using an intuitive graphical builder, making them ideal for standardized, repeatable processes. Supporting both synchronous and asynchronous execution modes, Workflow Tools enable rapid development and reliable execution of tasks without writing code. They are best suited for scenarios where business logic is consistent, well-defined, and benefits from visual traceability.

    **Examples**

* Weather API: Retrieves live weather updates.
* Stock Market Tool: Fetches real-time stock prices.
* Database Query Tool: Accesses structured data from a company’s database.

    For more information, see [About Tools](./../ai-agents/tools/overview.md).

* **Code Tools**: **Code Tools** are designed for flexibility and depth, enabling agents to execute custom code for highly tailored operations. These tools are ideal for handling complex or dynamic logic that cannot be captured through pre-defined workflows. Supporting synchronous execution, Code Tools empower developers to implement advanced algorithms, perform conditional processing, and integrate with intricate systems. They are the preferred choice when precision engineering and extensibility are required to meet unique business needs. With **code tools**, you can write and execute business logic using **JavaScript or Python **code, allowing seamless integration and automation of complex workflows.

    For more information, see [Inline Tools](./../agentic-apps/inline-tools.md).



### Adding a Tool to Agent

You can enhance an agent's capabilities by **creating a new tool** or **importing an existing one** from the tool library.



* **New tools** are custom-built within the context of a specific app and are not shared across other apps.

* **Imported tools** act as templates from the library. Once imported, they can be customized within the app to suit specific requirements without affecting the original version in the library.

To add a new tool, click **New Tool** and choose the desired tool type—**Workflow Tool** or **Code Tool**.

For a **Workflow Tool**, enter the tool's **name** and **description**, then click **Create**. The tool will be added to your app. Next, go to the **Agent's Tools** page, select the newly created tool, and open it to define its workflow. You can now design the logic and flow for this tool.

![Create App](images/addtool1.png "Agentic App Creation")

To create a **Code tool**, click on Code Tool and configure the details of the tool. Refer [to this page ](./../agentic-apps/inline-tools.md)for details on creating a new code tool, along with an example. 


### Importing a Tool

You can import an existing tool into your app. When you import a tool, a **new instance** is created specifically for that app. You can use it as is or **customize it** to better fit your requirements.

To make changes, simply select the tool from the library and open it to **modify the flow** as needed.

Use [this example as a reference or starting point](./../ai-agents/agent-creation-example.md) when building your own agent.