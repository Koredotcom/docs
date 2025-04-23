# Create an Agentic App


## Prerequisites

* Set up LLM: Before creating an Agentic app, ensure that an appropriate Large Language Model (LLM) is set up and configured for use.  This involves selecting a model, setting API keys, and ensuring integration with the application. Refer to the Model Library for easy integration of the LLM. 

    !!!note
        - ✔️ Currently, the Agent Platform supports OpenAI, Gemini, Anthropic, and Azure OpenAI LLMs.
        - ❌ Custom integration is not supported.
        - ✔️ Ensure that the selected LLM used has **tool-calling** capabilities.


## Steps to Create an Agentic App

Follow the steps listed below to create an Agentic App. 

![Create App](images/steps-app-creation.png "Agentic App Creation")


### Step 1: Creating a New Application

Click on the **+New App** on the **Agentic Apps** page. ![Create App](images/create-new-app.png "Agentic App Creation")


* Provide a name for the app that reflects its core function.
* Select an icon for the app.
* Write a description explaining its main features and goals. This will help to set the scope and context of the application and ensure the application does not respond to queries based on pre-trained knowledge.
* Choose an LLM model for the application.

---

### Step 2: Defining the Agents

* Configure agents with appropriate roles and responsibilities within the application. [Refer to this for the details on how to set up an agent.](agent-overview.md)

---

### Step 3: Testing the Behavior of the Agents

* Simulate different scenarios to evaluate agent interactions and responses. [Refer to this to learn more about simulation and testing](app-testing.md)

---

### Step 4: Deploying the Application

* Finalize configurations and deploy the app for end users. Refer to this to [learn more](app-deployment.md).

---