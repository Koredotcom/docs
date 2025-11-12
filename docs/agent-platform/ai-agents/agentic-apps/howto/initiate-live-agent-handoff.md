# Initiate a Live Agent Handoff from Agentic Apps

The Agent Handoff Event in Agentic Apps enables smooth transfer of conversations from an AI agent to a live agent when required. This feature is particularly useful in scenarios where user queries require personalized support or the user explicitly asks for assistance.

Currently, the Agent Handoff event can initiate live agent handoff only via the (In)Business Customer Experience platform. This event-driven handoff is managed through the Automation Node in (In)Business Customer Experience, which facilitates the integration between the two platforms. When the Agent Handoff Event is triggered, the (In)Agent Platform sends required information to the specified automation node within the XO Platform's flows. The automation node subsequently processes the agent transfer request in accordance with the transfer connection rules established for the node.

This document provides step-by-step instructions for configuring and invoking a live-agent handoff using the Automation Node in the (In)Business Customer Experience app. 

!!! note
    Although this document focuses on invoking a live agent via (In)Business Customer Experience, the same configuration can also be used to trigger other conversational agents or workflows via the (In)Business Customer Experience app.


## Prerequisites

* Both (In)Business Customer Experience and (In)Agent Platform applications must be in the same workspace.
* The relevant channel flows (for example, chat, voice) must be set up in (In)Business Customer Experience.
* (In)Business Customer Experience and (In)Agent Platform must be integrated via the Automation Node.


## Setting up Live Agent Transfer in the (In)Agent Platform Application

1. Navigate to the Events page. 
2. Configure the Agent Handoff Event. 
3. Update the description of the event to describe when this event should be invoked. There is a default description that configures the event to trigger whenever human intervention is required—either when the user explicitly requests it or when the available agents and tools can't fulfill the request. 
4. Set the status to enabled.
5. Configure the parameters to be sent to the Automation Node in (In)Business Customer Experience during handoff. 

[Find more details here](../settings//events.md#agent-handoff-event).


## Handling Agent Transfer Requests in (In)Business Customer Experience

When an agent transfer event is triggered, the (In)Agent Platform passes control and relevant context data to the (In)Business Customer Experience app. To process these agent transfer requests, set up the Agent Transfer connection configuration for the automation node. When the (In)Agent Platform triggers the agent handoff event, the request, along with AI-collected and system-defined parameters, is delegated to the automation node. The automation node then routes the request to the appropriate node as defined by its connection rules. Configure an Agent Transfer Node to transfer the communications from the AI Agent to a live agent.[ Learn More.](https://docs.kore.ai/xo/automation/use-cases/dialogs/node-types/working-with-the-agent-transfer-node/)
