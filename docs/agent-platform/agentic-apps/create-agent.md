# Set up an Agent

Setting up an agent involves defining its purpose, configuring its core functions, and ensuring it has the necessary tools and resources to perform its tasks. It also includes defining the boundaries of the agent to allow it to take actions within a given scope. 

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

**Description**: Specify your AI agent's primary objectives and key responsibilities. The description should clearly define the agent's role in the application and differentiate it from other agents. The application orchestrator uses this description to choose the most appropriate agent for a certain task. 

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

For more information, see [Add an External Model](./../models/external-models/add-an-external-model-using-easy-integration.md/).

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

## Actions

Actions are the tasks that agents can perform. They are the basic building blocks of an agent's capabilities. The Actions are implemented using **Tools**. Tools are the executable functions that help an agent achieve its objectives.  Agent uses the tool-calling capabilities of the LLMs to invoke the most appropriate tool required to complete a given task. 


**Tools** are components that enable various actions to be carried out effectively. They function as specialized units that execute specific tasks. Actions rely on these tools, which incorporate domain-specific business logic to successfully complete their designated roles. These tools are capable of performing activities such as data retrieval, logical operations, and facilitating connections with external systems.

!!!abstract "Examples"

    * Tools for a Leave Managing Agent might include:	
        * Get leave balance tool that invokes an external API to get leave details.
        * Leave application tool that gathers necessary information and applies leaves in the backend system.  
    * Tools for a Credit Card Assistant might include:
        * Retrieve outstanding amount - Fetches the due amount 
        * Fetch credit limit - Fetches the maximum credit limit for the user 
        * Initiate bill payment - Initiates bill payment process
        * Find recent transactions - Present last *n* transactions that might include retrieving data from a database. 

There are **two types of tools** that can be used for Agent actions. 

* **Workflow Tools**: Workflow tools are shared resources that multiple agents in an app can access to perform common operations efficiently. Workflow tools are predefined, reusable functions that enable automation of complex processes by orchestrating multiple steps seamlessly. With workflow tools, you can implement complex tasks efficiently by defining the order of tasks within a tool to achieve a desired end goal. These tools ensure **consistency** and **reusability**. Such tools are ideal for communicating with external systems, databases or performing a standard operation.

!!!abstract "Examples"

    * Weather API: Retrieves live weather updates.
    * Stock Market Tool: Fetches real-time stock prices.
    * Database Query Tool: Accesses structured data from a company’s database.

The agent platform offers a no-code builder for creating and managing tools. For more information, see [About Tools](/docs/agent-platform/tools/overview.md).

* **Code Tools**: With **code tools**, you can write and execute business logic directly within the system using **JavaScript**, allowing seamless integration and automation of complex workflows. They enable automation of workflows by executing custom scripts as part of the operations. For more information, see [Code Tools](inline-tools.md).