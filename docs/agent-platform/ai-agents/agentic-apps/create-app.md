# Create an Agentic App

An Agentic App is a multi-agent application that enables you to build, configure, and deploy autonomous AI agents to handle complex tasks. Each app can include one or more agents, tools, and knowledge bases that work together to deliver intelligent, goal-driven interactions.

**Prerequisites**

* You have access to the Agent Platform with appropriate permissions to create and manage apps. 

* Configure an AI model with tool-calling capabilities. The Platform supports OpenAI, Gemini, Anthropic, and Azure OpenAI models. For more information, see [Add an External Model](../../models/external-models/add-an-external-model-using-easy-integration.md){:target="_blank"}.


## Steps to Create an Agentic App

Creating an Agentic App consists of the following steps: 

![Overview of Create App process](images/steps-app-creation.png "Agentic App Creation process overview")

1. Sign in to the [Agent Platform](https://agent-platform.kore.ai/auth/login){:target="_blank"} and go to Autonomous Agents. 

2. This page lists the existing apps in the workspace. Click *+ New App*. ![Create App](images/createapp/list-apps.png "Agentic App Creation")

3. Enter the following details. ![Create App](images/createapp/create-app.png "Agentic App Creation")

    * *Name*: Provide a name for the app that reflects its core function.
    * *Icon*: Select an icon for the app.
    * *Description*: Write a clear description of the app's purpose, features, and goals. A well-defined description helps set the scope and context of the app, allowing the AI model to stay focused on its designated function rather than relying on general pre-trained knowledge.
    * *AI Model*: Choose an appropriate model and connection for the application.

4. Click *Create App*.  

After you create the app, you can view a structured summary of the app, including linked agents, tools, and knowledge bases, on the Overview page.

| Section | Description |
|---------|-------------|
| App Summary| Displays key app details: LLM selected, orchestration pattern. Use *Edit* option to go to the [App Profile](app-profile.md) and modify configurations.  |
| Agents| Lists autonomous agents linked to the app, including name, description, and associated tools. |
| Tools| Shows the types of tools linked to agents within the app. |
| Knowledge | Displays knowledge bases connected to the app. |

<!--By default, certain configurations are pre-selected when creating a new app. If you need to review or modify these configurations, go to the [App Profile](app-profile.md) and make necessary changes. [Learn More](app-profile.md). Move to the next steps of configuring agents and tools.
-->
---

## Next Steps 

Your Agentic App is created. Complete the following steps to continue building your app and bring it into action. 

### Set Up Orchestration Pattern

An orchestration pattern defines how the agents collaborate with each other to answer user queries. See [App Orchestrator](orchestrator.md) for supported orchestration patterns and configuration details. 

### Set Up Agents

Configure one or more agents with appropriate roles and responsibilities within the application.  
See [How to set up an agent](./../create-agent.md) for detailed instructions.

### Test and Validate the App

Testing the app involves two steps - running diagnostics and simulating the app behavior.   

Use the *Diagnostics Tool* to comprehensively validate the readiness of the app. This tool proactively identifies potential issues across the app, agents, tools, events, and configurations, ensuring the application meets production-quality and operational standards before deployment. See [Diagnostics for the Platform](diagnostics-for-agent-platform.md).

Next, run simulations in the *Playground* to test how the app responds to different user queries and scenarios. See [Simulate and Test the App](./../agentic-apps/app-testing.md).

### Deploy the App

Finalize configurations and deploy the app for end users. See [App Deployment](./deployment/app-deployment.md).

