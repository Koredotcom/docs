# Pass Contextual Data from (In)Business Customer Experience to (In)Agent Platform

This document explains how to share contextual variables such as channel information, user preferences, etc. from the (In)Business Customer Experience platform with the (In)Agent Platform. This enables AI agents to reason more effectively, enrich prompts, and execute tools more efficiently, leading to more personalized conversations and a seamless transition from (In)Business Customer Experience to (In)Agent Platform.


## How It Works

Agent Platform supports **metadata injection** via a structured memory model. Developers can define variables and expose them as metadata in the Automation Node in (In)Business Customer Experience, which is then made available in the agent’s memory during runtime. This allows seamless context sharing across the platforms.


## Step 1: Pass variables from the (In)Business Customer Experience app

1. Go to the Automation Node in the experience flows. 
2. Go to the Full Autonomy Settings. 
3. Under Metadata, add the variables that you need to pass to the (In)Agent Platform as key-value pairs. You can pass static or dynamic information using context variables through the Metadata key-value pairs. 

Example: Pass the user’s name to the (In)Agent Platform for personalization of conversations:
```json
key: <name> 
value: <context.userInfo.name>
```


## Step 2: Access Metadata in (In)Agent Platform

The metadata passed from (In)Business Customer Experience is automatically stored in the system memory, specifically in the *sessionMeta* field. You can then access this metadata from both the agent and supervisor prompts, as well as code tools. 

To use this metadata in the agent and supervisor prompts, use


```json
{{memory.sessionMeta.metadata.<key>}}
```

To use this metadata in code tools, refer to [this guide](../memory-stores.md#accessing-memory-stores-from-code-tools). 
