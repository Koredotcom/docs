# Agentic App Configurations

**Orchestration**: Orchestration refers to the coordination of multiple AI agents to efficiently handle user requests, execute complex workflows, and manage decision-making across the application.

The apps currently utilize the **Supervisor** pattern. This model involves a supervisor that oversees and coordinates the activities of multiple agents to ensure that the overall goal is achieved both efficiently and optimally. This orchestration pattern is particularly effective for managing multi-step workflows with various agents, as it optimizes system performance through strategic task allocation and adaptive management.

**Enable Real Time Voice**: Use this configuration to enable real-time interactions with the agent. [Learn more](../real-time-voice-integration.md).

**External Agents**: Use this config to enable integration with an external third-party agent via a proxy agent in Agentic App. [Learn more](../../external-agents.md).

**Thought Streaming**: Enable this option to preview the LLM's step-by-step reasoning (or thoughts) before it generates the final response in your agentic application.

You can also customize the default prompt used by the LLM to influence how the thought process is structured and displayed during thought streaming.

**Document Upload**: Enable this to allow the users to upload documents during interactions as contextual data. Click on **Modify Upload Restrictions** to configure the following file upload restrictions. 

* File Limit: Maximum number of files a user can upload. This can take a maximum value of **10.**
* Max File Size: Maximum size of each file, up to **10 MB**. 
* Max Tokens: Specifies the maximum combined size of all uploaded files, measured in tokens. This value can be set up to **150,000 tokens**. If the total token size of all files exceeds this threshold, files may be partially processed. 

Note: This limit is also constrained by the token limit of the underlying LLM. The platform uses the lower value between the specified Max Tokens and 80% of the LLM’s maximum token limit. If the specified Max Tokens exceeds the LLM’s capacity, the LLM limit takes precedence, and this value is ignored.

**Delete Agentic App**: To permanently delete the agentic app and the associated agents and tools, click **Proceed to Delete**.