# API Reference

Welcome to the AgenticAI Core SDK API reference documentation. This section provides detailed information about all classes, methods, and functions available in the SDK.

## Design-Time Models

Design-time models are used to define and configure your AI application structure.

### Core Models

| Model | Description |
|-------|-------------|
| [App](designtime/app.md) | Top-level application configuration |
| [Agent](designtime/agent.md) | AI agent configuration and behavior |
| [Tool](designtime/tool.md) | Tool definitions for agent capabilities |
| [LlmModel](designtime/llm_model.md) | LLM provider and inference configuration |
| [Prompt](designtime/prompt.md) | System and custom prompts |
| [MemoryStore](designtime/memory_store.md) | Persistent data storage configuration |
| [AppConfiguration](designtime/app_configuration.md) | Advanced application features |
| [AppNamespace](designtime/app_namespace.md) | Environment and context namespaces |
| [AppVariable](designtime/app_variable.md) | Application-level environment variables |
| [Icon](designtime/icon.md) | Visual identifiers for entities |

## Quick Navigation

### Building Applications

```python
from agenticai_core.designtime.models import App, Agent, AppNamespace, AppVariable

# Create an application with environment support
app = App(
    name="My App", 
    description="...",
    app_namespaces=[AppNamespace(name="production")],
    app_variables=[AppVariable(name="API_KEY", is_secured=True, value="$env.API_KEY", namespaces=["production"])]
)
```

[:octicons-arrow-right-24: App API Reference](designtime/app.md)

### Configuring Agents

```python
from agenticai_core.designtime.models import Agent, LlmModel

# Create an agent
agent = Agent(
    name="MyAgent",
    llm_model=LlmModel(...),
    tools=[...]
)
```

[:octicons-arrow-right-24: Agent API Reference](designtime/agent.md)

### Defining Tools

```python
from agenticai_core.designtime.models.tool import Tool

# Register a custom tool
@Tool.register(name="my_tool", description="...")
def my_tool(param: str):
    return result
```

[:octicons-arrow-right-24: Tool API Reference](designtime/tool.md)

### Environment Management

```python
from agenticai_core.designtime.models import AppNamespace, AppVariable

# Create namespaces for different environments
prod_ns = AppNamespace(name="production", description="Production environment")
dev_ns = AppNamespace(name="development", description="Development environment")

# Create environment-scoped variables
api_key = AppVariable(
    name="API_KEY",
    is_secured=True,
    value="$env.API_KEY",
    namespaces=["production"]
)
```

[:octicons-arrow-right-24: AppNamespace API Reference](designtime/app_namespace.md)
[:octicons-arrow-right-24: AppVariable API Reference](designtime/app_variable.md)

## Runtime APIs

Runtime APIs are used during application execution.

- **Agent Runtime** - Execute agents and handle requests
- **Memory Manager** - Access and manage memory stores
- **Request Context** - Session and context management

[:octicons-arrow-right-24: Runtime Overview](runtime/index.md)

## Type Reference

All models use Pydantic for validation and serialization. Key types include:

- `StrictStr` - String with strict validation
- `StrictInt` - Integer with strict validation
- `StrictBool` - Boolean with strict validation
- `StrictFloat` - Float with strict validation

## Serialization

All models support standard serialization methods:

```python
# To dictionary
model_dict = model.to_dict()

# To JSON string
json_str = model.to_json()

# From dictionary
model = ModelClass.from_dict(data)

# From JSON string
model = ModelClass.from_json(json_str)
```

## Builder Pattern

Many models provide builder classes for fluent configuration:

```python
from agenticai_core.designtime.models import AppConfigBuilder, AppNamespace, AppVariable

app_dict = AppConfigBuilder() \
    .set_name("My App") \
    .set_description("Description") \
    .set_agents([agent1, agent2]) \
    .set_app_namespace(AppNamespace(name="production")) \
    .set_app_variable(AppVariable(name="API_KEY", is_secured=True, value="$env.API_KEY", namespaces=["production"])) \
    .build()

app = App(**app_dict)
```

## Next Steps

- [:material-book-open: User Guide](../guide/building-apps.md) - Learn how to use these APIs
- [:material-code-braces: Examples](../examples/banking-assistant.md) - See real-world usage
