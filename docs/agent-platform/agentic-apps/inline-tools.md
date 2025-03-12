# Inline Tools

Inline tools are agent-specific functions designed to process user input based on predefined business logic. They enable real-time execution of custom actions within an agent, ensuring tailored responses and workflow automation. Inline tools use Javascript or Python code to process the input and generate the response.

!!!abstract "Example"
    
    * Custom processing of input before invoking an API

To create an inline tool, Click **+Create Tool** in the Actions page while creating the agent and provide the following details. 

**Name** 

Enter a **unique and descriptive name** for the tool to help identify its purpose.

---

**Description**

Provide a **clear and detailed description** of the tool’s functionality. This helps the agent understand:


* What the tool does.
* When to use it.
* How to use it.

---
**Added Parameters**

Define the **input parameters** required by the tool to perform its task. For each parameter, specify:

* **Name:** A unique identifier for the parameter.
* **Description:** Explains the parameter’s purpose to help the agent extract relevant data from user input.
* **Type:** The expected data type (e.g., string, number, boolean).
---
**Definition**

This is the core **logic of the tool**, written in **JavaScript or Python**. The tool executes this code when invoked with the provided parameters.

---
**Response Preview**

Before finalizing the tool, you can test its functionality. Click **Execute Tool** and provide the required input parameters. View the generated response to verify the correct execution of the tool. 

Once the tool is defined and successfully tested, click **Create Tool** to add it and use to complete agent actions. 
