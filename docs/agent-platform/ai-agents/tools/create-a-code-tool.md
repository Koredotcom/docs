# Creating a Code Tool

Steps to create a Code tool:

1. Navigate to the **Tools** page while building your agent.
2. Click **+ NewTool** and select **Code Tool**.
3. Provide the following details:
    * **Name**: Enter a unique, descriptive name that clearly identifies the tool’s purpose.
    * **Description**: Write a detailed explanation to help the language model understand when to invoke the tool. Include:
        * What the tool does
        * When it should be used
        * How it should be used
    * **Parameters**: Define the input parameters required by the tool. For each parameter, specify:
        * **Name:** A unique identifier
        * **Description:** Explains the parameter’s role to assist the agent in extracting relevant user input
        * **Type:** The expected data type (e.g., string, number, boolean)
    * **Definition**: Provide the core logic as JavaScript or Python code. This script runs whenever the tool is invoked with input parameters.
4. Before finalizing, test the tool by clicking **Execute Tool** and entering a sample input. Review the output to confirm the tool behaves as expected.
5. Once testing is complete and you’re satisfied with the tool’s behavior, click **Create Tool** to add it for use in agent workflows.
