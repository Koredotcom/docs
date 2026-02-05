# Set up an AI Agent

An AI Agent is a configurable, goal-driven component that can understand user input, reason using context, and take actions by invoking tools or delegating tasks. Setting up an agent involves defining its intended purpose, configuring its core functions, and ensuring it has the necessary tools and resources to perform its tasks. It also includes defining the agent's boundaries to govern its actions within those boundaries.

**Components of an Agent**
<img src="../images/agent-anatomy.png" alt="Anatomy of an Agent" title="Anatomy of an Agent" style="border: 1px solid gray; zoom:65%;">

<!-- ## Agents Page

The **Agents** page displays all agents associated with the Agentic app as individual cards, providing clear visibility into each agent's connected tools and configuration status. It shows the total number of agents in the app.

Key highlights

* Each agent card shows the connected tools with identifiable icons.
* Highlights **Proxy Agents** with an external icon and hover tooltips revealing connected apps.
* Agents needing LLM configuration show a **Configure LLM** button for quick setup.
* Displays the total agent count in the page header, with **Explore Marketplace** and **New Agent** options always visible.

<img src="../images/agents-listing-page.png" alt="Agent Listing Page" title="Agent Listing Page" style="zoom:70%; border: 1px solid gray;">
-->

## Agent Setup Overview

### Choosing How to Create an Agent

The first step in setting up an agent is deciding how it will be created. Depending on your use case, you may:

* Use a prebuilt agent from the Marketplace.
* Connect an external agent that's hosted elsewhere.
* Build an agent from scratch with full control over its configuration.

<table>
  <tr>
   <td>
Option
   </td>
   <td>When to use
   </td>
   <td>What you configure
   </td>
  </tr>
   <tr>
   <td><a href="../create-from-scratch/">From Scratch</a>
   </td>
   <td>You want full control
   </td>
   <td>Configure everything for the agent - Profile, instructions, tools, and knowledge. 
   </td>
  </tr>
  <tr>
   <td><a href="../external-agents/">Connect External Agent</a>
   </td>
   <td>You already have an agent hosted elsewhere
   </td>
   <td>Connection details
   </td>
  </tr>
  <tr>
   <td><a href="../create-from-marketplace/">From Marketplace</a>
   </td>
   <td>You want to use a  preconfigured, ready-to-use agent
   </td>
   <td>Requires minimal edits
   </td>
  </tr>
  
 
</table>


This selection determines the setup flow and the configurations available during agent creation. For step-by-step instructions, refer to the corresponding guides for each option.

---

## Defining the Agent Profile 

The agent profile establishes the agent’s identity and purpose. It specifies the AI agent's primary objectives and key responsibilities. The profile helps the system (or orchestrator) understand what the agent is designed to do and helps identify the most suitable agent for a task.

---

## Configuring Agent Definition

This defines how the agent should behave. It outlines the agent's role and the tasks it can perform to support decision-making. It defines the agent's capabilities, serving as a guideline for setting its objectives and outlining its functionalities. It establishes what the agent can do and how it should operate, ensuring that the goals are effectively aligned.
Well-structured instructions ensure the agent responds consistently and follows expected workflows.

---

## Adding Knowledge

The platform provides powerful search functionality across diverse content sources using the Search AI application, which supports Retrieval-Augmented Generation (RAG)-based search across enterprise knowledge bases, document repositories, FAQs, and external systems. You can link to one or more Search AI applications in the same workspace and account and access them as Knowledge Tools for the agent to answer user queries.

---

## Adding Tools 

Tools are foundational components that empower agents to perform purposeful actions. They serve as the functional extensions of an agent’s intelligence, enabling it to interact with third-party applications, retrieve information, perform logic-based operations, and trigger workflows across complex environments. For example, tools can be used for:

* Fetching data from external systems
* Creating or updating records
* Triggering workflows or APIs

Each tool expands the agent’s capabilities and allows it to interact with other applications or services. Agent Platform offers three types of tools:

* Workflow Tools
* Code Tools
* MCP Tools

---

## Adding Delegation Logic

If the agentic app follows the Adaptive Network pattern for orchestration, additionally provide the delegation rules that define how the agent delegates the query to another agent in the app. Clear delegation logic ensures predictable and reliable agent behavior.
