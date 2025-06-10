# Configuring an MCP Server in an Agent

To integrate tools from an MCP server into an agent, follow these steps:

Navigate to the **Tools** section of the app and click on **Add Tool**. Click on **+New Tool** to configure a new MCP server and add tools. 

![alt_text](images/mcp/home.png "Add tool")


Provide the MCP server configuration on the following page. 

![alt_text](images/mcp/mcp-config.png "MCP Config")


**Name**- Provide a unique name for the MCP server. 

**Description**- Provide a description of the capabilities/tools offered by the server. 

**Request Definition** - Define how the platform should send a request to the MCP server to fetch available tools. Click **Configure** and provide:

* HTTP Method: the method used for the request like, `POST` or `GET.`
* URL: Endpoint that returns tool definitions.
* Headers:  Any required headers like Authorization tokens.

Click the **Test** button to fetch tool metadata from the MCP server. 

Upon successful connection, the platform displays the list of all the tools offered by the MCP server. Select the required tools and click **Add Selected** to add the tools to the agent. 


## Tool Naming Convention

To avoid naming conflicts and help identify the source, imported tool names are automatically **prefixed with the MCP server name**. 

Format: 
```
<MCP server name>__<Tool name as exposed by the server>
```

For instance, if the tool name is GMAIL_DELETE_DRAFT and the MCP server name is “GoogleMCP”, the tool name will be listed as GoogleMCP__GMAIL_DELETE_DRAFT.