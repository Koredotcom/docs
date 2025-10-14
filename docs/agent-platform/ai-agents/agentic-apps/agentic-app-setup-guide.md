# Agentic App Setup Guide

This guide walks you through setting up your first Agentic App on the Agent Platform. By following these steps, you'll learn how to create an account, configure your app, thoroughly test it, and deploy it to production.

## Setup Process

The Agentic App setup process consists of the following phases:

1. **[Foundation Phase](#1-foundation-phase)**: Essential setup steps to get your workspace and core components ready.
2. **[Configuration Phase](#2-configuration-phase)**: Customize your app with agents, knowledge, and tools.
3. **[Quality Assurance Phase](#3-quality-assurance-phase)**: Ensure your app is safe, reliable, and performs well.
4. **[Deployment Phase](#4-deployment-phase)**: Take your app live and integrate it with your systems.

### 1. Foundation Phase

1. **Sign Up for the Agent Platform**: The Agent Platform onboarding journey starts with creating an account. Upon successful signup, the platform will automatically provision a dedicated workspace for your projects.</br>
If you've already set up AI for Service, both your existing workspaces and shared workspaces will be visible, but you'll need separate access permission from workspace owners to use shared workspaces in the Agent Platform.
1. **Configuring Large Language Models (LLMs)**: The Agent Platform leverages the power of LLMs to enable the intelligence of your agents. The platform supports integration with various LLM providers, including OpenAI, Azure OpenAI, Anthropic, and Gemini. Select the preferred model based on your specific use case and configure it. [Learn more](../../models/overview.md){:target="_blank"}.
2. **Create an Agentic App**: An Agentic App is the core application you will build on the Agent Platform. You can create an Agentic App from scratch on the platform, import a pre-built app, or install an existing one from the marketplace. [Learn more](create-app.md){:target="_blank"}.

### 2. Configuration Phase

1. **Set Up Agents**: Configure individual intelligent agents within your application, assigning them specific roles, responsibilities, and potentially initial capabilities. Define how they will leverage the configured LLMs and available tools to perform their tasks. [Learn more](../create-agent.md){:target="_blank"}.
2. **Knowledge Integration**: The Agent Platform provides Retrieval-Augmented Generation (RAG)-based search functionality across diverse content sources, including enterprise knowledge bases, document repositories, FAQs, and external systems, through the Search AI application. This advanced RAG-driven integration empowers your autonomous agents to deliver accurate, context-aware, and timely responses by leveraging relevant information from connected knowledge sources. [Learn more](../knowledge/overview.md){:target="_blank"}.
3. **Configure Tools**: Tools enable agents to execute tasks by interacting with external systems, retrieving data, and triggering workflows. They serve as functional extensions of an agent’s intelligence, allowing seamless interaction with third-party applications, logic-based operations, and workflow automation.
    * **Workflow Tool**: These provide a no-code, visual interface for designing and orchestrating agent actions. Users can define multi-step workflows using an intuitive graphical builder, making them ideal for standardized, repeatable processes that benefit from structured execution. [Learn more](../tools/workflow-tools.md){:target="_blank"}.
    * **Code Tool**: Designed for flexibility and precision, Code Tools allow agents to execute custom scripts for tailored operations. Developers can leverage JavaScript or Python to implement advanced logic, integrate with intricate systems, and automate complex workflows where predefined configurations are insufficient. [Learn more](inline-tools.md){:target="_blank"}.
    * **MCP Tool**: The Model Context Protocol (MCP) is an open standard that serves as a universal connector, enabling AI models to interact with external tools, data, and services through a unified interface, thereby simplifying system integration. [Learn more](../tools/mcp-tools.md){:target="_blank"}.
4. **Configure Events**: Events in the Agentic App act as crucial conversation milestones, handling transitions such as welcome events, end-of-conversation events, and agent handoffs. Customize these predefined, system-triggered events to ensure a consistent user experience and natural dialogue flow across all agent interactions. [Learn more](settings/events.md){:target="_blank"}.

### 3. Quality Assurance Phase

1. **Deploy Guardrails**: Guardrails are crucial for safety, stability, and performance. Input and Output scanners within an Agentic App monitor and regulate the data agents receive and generate. [Learn more](../../guardrails/overview.md){:target="_blank"}.
2. **Test the App**: Simulating and verifying the behavior of an Agentic application before deployment ensures accurate responses across various scenarios. This process helps reduce errors, enhances the user experience, and optimizes the agent's effectiveness in real-world interactions. The built-in simulator offers an interactive interface that enables users to submit queries and assess the responses for accuracy and performance. [Learn more](app-testing.md){:target="_blank"}.
3. **Evaluate Performance**: Evaluation Studio facilitates the systematic testing and improvement of AI systems through both model and agentic evaluation, ensuring that AI applications are safe, reliable, and high-performing before deployment. It helps by enabling data-driven optimization, identifying workflow issues and coordination problems, and accelerating development cycles through scalable quality assessment processes. [Learn more](../../evaluation/overview.md){:target="_blank"}.

### 4. Deployment Phase

1. **Deploy the App**: App deployment involves transitioning an application version from development to live environments in a structured and repeatable way. This ensures that thoroughly tested, stable versions are available to users in designated environments, such as development, staging, or production. [Learn more](deployment/app-deployment.md){:target="_blank"}.
2. **Integrate the Deployed App with Your Business Apps or Systems**: The Webclient Script enables seamless embedding of the App into your website. Authentication is managed through API keys, and audit logs track user actions for a secure, branded, and intuitive experience. [Learn more](deployment/access-deployed-version.md){:target="_blank"}.
