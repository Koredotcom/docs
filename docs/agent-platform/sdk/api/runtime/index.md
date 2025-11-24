# Runtime APIs

The Runtime APIs manage application execution, including starting the server, saving configurations, and deployment.

## Overview

While Design-Time models define your application structure, Runtime APIs handle execution, persistence, and deployment.

## Key Runtime Methods

### `app.start()` - Start Application Server

Starts the application server with your custom orchestrator and tools. This is the primary method for running your application locally.

```python
from agenticai_core.designtime.models import App
from agenticai_core.designtime.models.tool import ToolsRegistry

# Create your app
app = App(name="My App", ...)

# Start the application
app.start(
    orchestrator_cls=CustomOrchestrator,
    custom_tools=ToolsRegistry,
    host="0.0.0.0",
    port=8080
)
```

**Parameters:**
- `orchestrator_cls`: Custom orchestrator class for agent coordination
- `custom_tools`: Dictionary of registered custom tools (typically `ToolsRegistry`)
- `host`: Server host address (default: "127.0.0.1")
- `port`: Server port (default: 8080)

**Usage:**
```bash
# Start from code
python main.py

# Or use CLI
python run.py start --host 0.0.0.0 --port 8080
```

## CLI Interface (`run.py`)

The SDK provides a unified CLI interface through `run.py` for the complete application lifecycle - from local development to production deployment.

### What is `run.py`?

`run.py` is a thin wrapper script that invokes the centralized CLI from `agenticai_core.cli.runner`. It provides a consistent interface for:

- **Local Development**: Start and test applications locally
- **Packaging**: Create deployable KAR archives
- **Deployment**: Deploy to the AgenticAI platform
- **Management**: Create environments, check status, and test deployments

```python
# workspace/run.py structure
from agenticai_core.cli.runner import main

if __name__ == '__main__':
    # Wrapper passes app module to centralized CLI
    app_module = 'src.app'  # Your app module
    main(app_module=app_module)
```

### CLI Command Structure

```bash
# General format
python run.py [OPTIONS] COMMAND [ARGS]

# With environment configuration
python run.py -c <env> COMMAND [ARGS]
```

### Global Options

| Option | Description | Example |
|--------|-------------|---------|
| `-c, --config` | Environment configuration file to load (from `.env/<env>`) | `-c dev`, `-c staging`, `-c prod` |

Environment configs are loaded from `.env/<env>` files (see [Environment Configuration](#environment-configuration) for details).

## CLI Commands

### Start Command

Start the application server locally for development and testing.

```bash
python run.py start [OPTIONS]
```

**Options:**
- `--host` - Server host address (default: `127.0.0.1`)
- `--port` - Server port (default: `8080`)

**Example:**
```bash
# Start on localhost
python run.py start

# Start on all interfaces with custom port
python run.py start --host 0.0.0.0 --port 8080
```

**What it does:**
- Imports your app module
- Calls `start()` function with orchestrator and tools
- Starts MCP server for local testing

### Archive Command

Package your application into a deployable KAR (Kore ARchive) file.

```bash
python run.py --archive <project_name>
```

**Arguments:**
- `<project_name>` - Name for the archive (creates `bin/<project_name>/`)

**Output:**
- `bin/<project_name>/application.kar` - Deployable ZIP archive (<1MB target)
- `bin/<project_name>/application.config.json` - Application configuration

**What it does:**
- Calls `create_app()` from your app module
- Serializes app configuration to JSON
- Creates KAR archive with:
  - Application configuration
  - Inline tool code
  - Required metadata
- Excludes: `.venv/`, large binaries, test files

**Example:**
```bash
python run.py --archive banking-app

# Verify size
ls -lh bin/banking-app/application.kar
# Should be < 1MB (ideally a few hundred KB)
```

!!! tip "Archive Size"
    Target archive size is <1MB. If larger, check contents with `unzip -l bin/<project>/application.kar` and ensure `.venv` is not included.

### Deploy Command

Deploy your application to the AgenticAI platform.

```bash
python run.py -c <env> deploy -f <kar_file>
```

**Required Options:**
- `-c <env>` - Environment configuration (loads `.env/<env>`)
- `-f, --kar` - Path to KAR archive file

**Environment Requirements:**
Requires in `.env/<env>`:
- `KORE_HOST` - Platform endpoint URL
- `APP_API_KEY` - API authentication key

**Example:**
```bash
# Deploy to development
python run.py -c dev deploy -f bin/banking-app.kar

# Deploy to production
python run.py -c prod deploy -f bin/banking-app.kar
```

**Output:**
```
Deployment successful!
App ID: app_abc123xyz
Stream ID: stream_def456uvw

Save these IDs for testing and environment creation.
```

!!! warning "Save Deployment IDs"
    Save the `appId` and `streamId` from deployment output - you'll need them for creating environments and testing.

### Create Environment Command

Create an environment for your deployed application.

```bash
python run.py -c <env> create-env --app <appId> --env <envName> [OPTIONS]
```

**Required Options:**
- `-c <env>` - Environment configuration file
- `--app` - Application ID (from deploy output)
- `--env` - Environment name (e.g., `development`, `staging`, `production`)

**Optional:**
- `--desc` - Environment description

**Example:**
```bash
# Create development environment
python run.py -c dev create-env \
  --app app_abc123xyz \
  --env development \
  --desc "Development environment for testing"

# Create production environment
python run.py -c prod create-env \
  --app app_abc123xyz \
  --env production \
  --desc "Production environment"
```

### Status Command

Check the status of a deployed application environment.

```bash
python run.py -c <env> status --app <appId> --env <envName>
```

**Required Options:**
- `-c <env>` - Environment configuration
- `--app` - Application ID
- `--env` - Environment name

**Example:**
```bash
python run.py -c dev status --app app_abc123xyz --env development
```

**Output:**
- Environment status (active/inactive)
- Health metrics
- Last deployment time
- Version information

### Test Command

Run end-to-end tests on a deployed application.

```bash
python run.py -c <env> test --app <appId> --env <envName>
```

**Required Options:**
- `-c <env>` - Environment configuration
- `--app` - Application ID
- `--env` - Environment name to test

**Example:**
```bash
python run.py -c dev test --app app_abc123xyz --env development
```

**What it does:**
- Sends test requests to deployed application
- Validates agent responses
- Tests tool execution
- Reports success/failure

## Runtime Components

### Request Context

Access request-specific information in tools:

```python
from agenticai_core.runtime.sessions.request_context import RequestContext

context = RequestContext()
request_id = context.request_id
headers = context.headers  # appId, userId, sessionId, etc.
memory = context.get_memory()
```

### Memory Manager

Manage persistent storage during runtime:

```python
from agenticai_core.runtime.sessions.request_context import RequestContext

context = RequestContext()
memory = context.get_memory()

# Set content
result = await memory.set_content('store_name', data)

# Get content with projections
result = await memory.get_content('store_name', {'field': 1})

# Delete content
result = await memory.delete_content('store_name')
```

### Logger

Structured logging in tools:

```python
from agenticai_core.runtime.sessions.request_context import Logger

logger = Logger('ToolName')

await logger.debug("Debug message")
await logger.info("Info message")
await logger.warning("Warning message")
await logger.error("Error message")
```

### Tracer

Distributed tracing for monitoring:

```python
from agenticai_core.runtime.trace._langfuse_tracer import Tracer

tracer = Tracer()

@Tool.register(description="Example tool")
@tracer.observe(span_name="Tool:example", kind="Tool")
async def example_tool(param: str):
    # Tool implementation
    return result
```

## CLI Quick Reference

Complete reference for all `run.py` commands:

```bash
# ============================================
# LOCAL DEVELOPMENT
# ============================================

# Start local server
python run.py start [--host HOST] [--port PORT]

# Examples
python run.py start                          # localhost:8080
python run.py start --host 0.0.0.0 --port 8080


# ============================================
# PACKAGING
# ============================================

# Create deployable archive
python run.py --archive <project_name>

# Example
python run.py --archive banking-app
ls -lh bin/banking-app/application.kar       # Verify size < 1MB


# ============================================
# DEPLOYMENT
# ============================================

# Deploy to platform
python run.py -c <env> deploy -f <kar_file>

# Examples
python run.py -c dev deploy -f bin/banking-app.kar
python run.py -c prod deploy -f bin/banking-app.kar

# Save the appId and streamId from output!


# ============================================
# ENVIRONMENT MANAGEMENT
# ============================================

# Create environment
python run.py -c <env> create-env --app <appId> --env <envName> [--desc "Description"]

# Examples
python run.py -c dev create-env --app app_abc123xyz --env development
python run.py -c prod create-env --app app_abc123xyz --env production --desc "Production env"

# Check environment status
python run.py -c <env> status --app <appId> --env <envName>

# Example
python run.py -c dev status --app app_abc123xyz --env development


# ============================================
# TESTING
# ============================================

# Test deployed application
python run.py -c <env> test --app <appId> --env <envName>

# Example
python run.py -c dev test --app app_abc123xyz --env development
```

### Environment Configuration

Create `.env/<env>` files with required variables:

```bash
# .env/dev
KORE_HOST=https://staging-agent-platform.kore.ai
APP_API_KEY=your_dev_api_key_here
TRACING_ENABLED=True

# .env/staging
KORE_HOST=https://staging-agent-platform.kore.ai
APP_API_KEY=your_staging_api_key_here
TRACING_ENABLED=True

# .env/prod
KORE_HOST=https://agent-platform.kore.ai
APP_API_KEY=your_prod_api_key_here
TRACING_ENABLED=False
```

Load configuration:
```bash
python run.py -c dev  # Uses .env/dev
```

### Application Lifecycle Workflow

Complete workflow from development to production:

```bash
# ============================================
# 1. DEVELOPMENT PHASE
# ============================================
# Define application structure with Design-Time models
# Implement custom tools and orchestrators
python run.py start --host localhost --port 8080
# Test with MCP client...

# ============================================
# 2. PACKAGING PHASE
# ============================================
python run.py --archive my-banking-app
# Verify: ls -lh bin/my-banking-app/application.kar

# ============================================
# 3. DEPLOYMENT PHASE
# ============================================
python run.py -c dev deploy -f bin/my-banking-app.kar
# Output: App ID: app_abc123xyz, Stream ID: stream_def456uvw (SAVE THESE!)

# Create environment
python run.py -c dev create-env --app app_abc123xyz --env development

# ============================================
# 4. TESTING PHASE
# ============================================
python run.py -c dev test --app app_abc123xyz --env development

# ============================================
# 5. MONITORING PHASE
# ============================================
python run.py -c dev status --app app_abc123xyz --env development

# ============================================
# 6. PRODUCTION DEPLOYMENT (when ready)
# ============================================
python run.py -c prod deploy -f bin/my-banking-app.kar
python run.py -c prod create-env --app <new_appId> --env production
python run.py -c prod test --app <new_appId> --env production
```

## Best Practices

1. **Development**
   - Test locally with `python run.py start` before deploying
   - Use meaningful project names for archives
   - Keep archive size minimal (<1MB)
   - Always test with MCP client during development

2. **Deployment**
   - Use `.venv` for virtual environments (excluded from archives)
   - Test in staging/dev before production
   - **Save appId and streamId** from deployment output immediately
   - Use separate `.env` files for different environments
   - Verify archive contents with `unzip -l` if size is large

3. **Environment Management**
   - Create separate environments for dev/staging/prod
   - Use descriptive environment names and descriptions
   - Document appId and environment names in your project README
   - Check status regularly with `status` command

4. **Monitoring**
   - Enable distributed tracing in dev/staging environments
   - Monitor logs and performance metrics
   - Use status command to check environment health
   - Test deployments end-to-end before going live

5. **Configuration**
   - Keep sensitive keys in `.env` files (never commit these!)
   - Use different API keys for different environments
   - Document required environment variables
   - Validate configuration before deployment

## Troubleshooting

### Archive Size Issues
```bash
# Check archive contents
unzip -l bin/myProject/application.kar

# Look for unwanted files
unzip -l bin/myProject/application.kar | grep -E "(venv|.venv|__pycache__|.git)"

# Solution: Ensure virtual env is named .venv
```

### Deployment Failures
```bash
# Verify environment variables
python -c "import os; print(f'KORE_HOST: {os.getenv(\"KORE_HOST\")}'); print(f'APP_API_KEY: {os.getenv(\"APP_API_KEY\")}')"

# Check .env file exists
ls -la .env/

# Verify config is loaded
python run.py -c dev deploy -f bin/myProject.kar
```

### Module Import Errors
```bash
# Ensure virtual environment is activated
source .venv/bin/activate

# Verify app module exists
python -c "import src.app; print('Module OK')"

# Check run.py points to correct module
cat run.py | grep "app_module"
```

## Related Documentation

- [Design-Time Models](../index.md) - Define your application
- [Quick Start Guide](../../getting-started/quickstart.md) - Complete tutorial
- [App API Reference](../designtime/app.md) - App model details
- [Installation Guide](../../getting-started/installation.md) - Setup and configuration

