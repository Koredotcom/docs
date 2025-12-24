



# Agent Flows Overview

**Agent Flows** are intelligent conversational workflows built by combining Dialog Tasks with Agent Nodes to deliver autonomous, goal-driven customer service experiences.

At their core, Agent Flows leverage DialogGPT as the orchestration layer for intent identification and routing, while Agent Nodes handle the execution of the conversation within individual use cases. This combination enables AI Agent to autonomously plan, reason, and execute multi-step actions - much like a skilled human agent.


## Key Components



* **Dialog Tasks** define the scope and structure of a use case, establishing clear boundaries for what the flow handles (such as "Web Check-In Assistance" or "Account Balance Inquiry").
* **Agent Nodes** within these flows bring agentic capabilities, natural language understanding, slot filling, confirmation handling, and tool invocation, all within defined business rules and exit scenarios.
* The hybrid design allows developers to use **deterministic nodes** (entity, message, service nodes) for regulated or compliance-critical steps, and **Agent Nodes** for flexible, natural conversation handling.

This architecture balances control with flexibility - DialogGPT intelligently routes users to the right Dialog Task based on their intent, and Agent Nodes within those tasks deliver human-like, contextually aware responses while adhering to business constraints.
