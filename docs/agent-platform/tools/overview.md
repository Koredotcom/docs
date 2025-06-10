# About Tools

Tools are foundational components that empower agents to perform purposeful actions. They serve as the functional extensions of an agent’s intelligence, enabling it to interact with third-party applications, retrieve information, perform logic-based operations, and trigger workflows across complex environments.

Powered by the tool invocation capabilities of large language models (LLMs), agents can dynamically identify and invoke the most relevant tools at runtime, ensuring flexibility, scalability, and precision in task execution.

For example, a ‘Leave Managing Agent’ might include tools like:

* Get Leave Balance tool - Invokes an external API to retrieve leave details.
* Leave Application tool - Gathers necessary information and applies leaves in the backend system.

Similarly, a ‘Credit Card Assistant’ might include tools like:

* Retrieve Outstanding Amount tool - Fetches the current due amount.
* Fetch Credit Limit tool - Retrieves the user's maximum credit limit.
* Initiate Bill Payment tool - Initiates the bill payment process.
* Find Recent Transactions tool - Displays recent user transactions, often by retrieving data from a database.

## Types of Tools

The Agent platform supports three types of tools that agents can use to perform tasks and integrate with external systems: **Workflow Tools**, **Code Tools**, and **MCP Tools**. Each type serves a different purpose, ranging from orchestrating visual tasks to executing custom scripts or invoking remote services. Understanding the differences between these tool types will help you design agent behaviors that are both efficient and scalable.

### Workflow Tools

Workflow Tools provide a visual, no-code interface for designing and orchestrating agent actions with ease. Built for clarity and control, these tools allow users to define multi-step workflows using an intuitive graphical builder, making them ideal for standardized, repeatable processes. They support both synchronous and asynchronous execution modes, enabling rapid development and reliable task automation without writing any code.

**Best suited for:** Scenarios where business logic is consistent, well-defined, and benefits from visual traceability.

Examples:

* Weather API tool: Retrieves live weather updates.
* Stock Market tool: Fetches real-time stock prices.
* Database Query tool: Accesses structured data from a company’s database.

For more information, see [Workflow Tools](../tools/workflow-tools.md).


### Code Tools

Code Tools provide maximum flexibility by enabling agents to run custom JavaScript or Python code. These tools are ideal for handling dynamic logic, conditional processing, or integrations that cannot be captured through pre-defined workflows. Code Tools support synchronous execution and are ideal when precision, extensibility, or complex algorithms are required.

**Best suited for:** Advanced use cases involving business-specific logic, data transformation, or interaction with complex systems.

Examples:

* SQL Query Processor – Executes SQL queries on a specified database.
* Custom Validator – Validates inputs using custom logic before proceeding.

For more information, see [Code Tools](../ai-agents/tools/code-tools.md).


### MCP Tools

MCP Tools connect agents to remote functions hosted on Model Context Protocol (MCP) servers. These tools serve as reusable logic or integration blocks, such as scripts, webhooks, or service connections, which are created and maintained outside the platform.

Following a client-server discovery model, agents can dynamically invoke third-party or proprietary services in real time without embedding logic directly into workflows or code.  Once connected, MCP Tools can be selected, configured, versioned, and managed independently, allowing modular and scalable integration across environments. Because MCP Tools are centrally managed, they support versioning, cross-feature reuse, and simplified development—ideal for scaling integrations across multiple agents.

**Best suited for:** Seamless integration with external APIs, proprietary platforms, or shared toolsets across teams or organizations.

Examples:

* Enterprise HR Toolset (MCP) – A suite of HR tools exposed via MCP.
* Remote Invoice Processor – Executes billing operations through a secure MCP endpoint.

For more information, see [MCP Tools](../tools/mcp-tools.md).
