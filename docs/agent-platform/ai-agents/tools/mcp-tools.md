# About MCP Tools

The Model Context Protocol is an open standard that provides a way for AI models to interact with external tools, data, and services. It simplifies integration by creating a universal interface for AI to communicate with different systems. It acts as a universal connector. 

MCP follows a client-server architecture, where:

* MCP server exposes specific capabilities through the standardized Model Context Protocol.
* The host or MCP client(in this case, Agent Platform) connects to the server, discovers available tools, and invokes them as part of agent workflows.

<a href="https://docs.anthropic.com/en/docs/agents-and-tools/mcp" target="_blank">Learn More</a>

Agentic Apps enable seamless integration with the MCP server, allowing the apps to use the tools hosted by the MCP server. 

**Key Points:**

* Currently, only **tool discovery and invocation** from MCP servers is supported. 
* Currently, dynamic updates from the MCP server such as changes to tool definitions or newly added tools, are not automatically reflected in the Agent Platform. Developers must manually reconfigure the MCP server and reselect the tools to apply updates.  
* Currently, only **SSE-based MCP server endpoint configurations** are supported.


