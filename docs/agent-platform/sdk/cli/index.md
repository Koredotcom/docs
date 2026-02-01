# CLI Reference

The AgenticAI SDK provides a comprehensive command-line interface through `run.py` for the complete application lifecycle - from local development to production deployment.

## Overview

The SDK CLI is a unified interface that handles:

- **Local Development**: Start and test applications locally
- **Packaging**: Create deployable KAR archives  
- **Deployment**: Deploy to the AgenticAI platform
- **Management**: Create environments, check status, and test deployments

## CLI Structure

### What is `run.py`?

`run.py` is a thin wrapper script that invokes the centralized CLI from `agenticai_core.cli.runner`. It provides a consistent interface across all workspace operations.

```python
# workspace/run.py structure
from agenticai_core.cli.runner import main

if __name__ == '__main__':
    # Wrapper passes app module to centralized CLI
    app_module = 'src.app'  # Your app module
    main(app_module=app_module)
```

### Command Format

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

## Available Commands

| Command | Purpose | Key Options | Example |
|---------|---------|-------------|---------|
| **`start`** | Start local development server | `--host`, `--port` | `python run.py start --host 0.0.0.0` |
| **`--archive`** | Package app for deployment | `<project_name>` | `python run.py --archive my-app` |
| **`deploy`** | Deploy to AgenticAI platform | `-c <env>`, `-f <kar_file>` | `python run.py -c dev deploy -f app.kar` |
| **`publish`** | Create app environment | `-c <env>`, `--app`, `--name` | `python run.py -c dev publish --app <id> --name dev` |
| **`status`** | Check environment status | `-c <env>`, `--app`, `--name` | `python run.py -c dev status --app <id> --name dev` |
| **`test`** | Run end-to-end tests | `-c <env>` | `python run.py -c dev test` |

## Command Details

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
python run.py start --host 0.0.0.0 --port 8080
```

### Archive Command

Package your application into a deployable KAR archive file.

```bash
python run.py --archive <project_name>
```

**Arguments:**

- `<project_name>` - Name for the archive (creates `bin/<project_name>/`)

**Output:**

- `bin/<project_name>/application.kar` - Deployable ZIP archive (<1MB target)
- `bin/<project_name>/application.config.json` - Application configuration

**Example:**
```bash
python run.py --archive banking-app
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
python run.py -c dev deploy -f bin/banking-app.kar
```

!!! warning "Save Deployment IDs"
    Save the `appId` and `streamId` from deployment output for environment creation and testing.

### Publish Environment Command

Create an environment for your deployed application.

```bash
python run.py -c <env> publish --app <appId> --name <envName> [OPTIONS]
```

**Required Options:**

- `-c <env>` - Environment configuration file
- `-a, --app` - Application ID (from deploy output)
- `-n, --name` - Environment name (e.g., `development`, `staging`, `production`)

**Optional:**

- `-d, --desc` - Environment description
- `-e, --env` - Path to .env file to override app variables

**Example:**
```bash
python run.py -c dev publish --app app_abc123xyz --name development --desc "Dev environment"
```

### Status Command

Check the status of a deployed application environment.

```bash
python run.py -c <env> status --app <appId> --name <envName>
```

**Required Options:**

- `-c <env>` - Environment configuration
- `-a, --app` - Application ID
- `-n, --name` - Environment name

**Example:**
```bash
python run.py -c dev status --app app_abc123xyz --name development
```

### Test Command

Run end-to-end tests on a deployed application.

```bash
python run.py -c <env> test
```

**Required Options:**

- `-c <env>` - Environment configuration

**Example:**
```bash
python run.py -c dev test
```

## Quick Reference

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
python run.py -c <env> publish --app <appId> --name <envName> [--desc "Description"]

# Examples
python run.py -c dev publish --app app_abc123xyz --name development
python run.py -c prod publish --app app_abc123xyz --name production --desc "Production env"

# Check environment status
python run.py -c <env> status --app <appId> --name <envName>

# Example
python run.py -c dev status --app app_abc123xyz --name development


# ============================================
# TESTING
# ============================================

# Test deployed application
python run.py -c <env> test

# Example
python run.py -c dev test
```

## Environment Configuration

Create `.env/<env>` files with required variables:

```bash
# .env/dev
KORE_HOST=platform_url
APP_API_KEY=your_dev_api_key_here
TRACING_ENABLED=True

# .env/staging
KORE_HOST=platform_url
APP_API_KEY=your_staging_api_key_here
TRACING_ENABLED=True

# .env/prod
KORE_HOST=platform_url
APP_API_KEY=your_prod_api_key_here
TRACING_ENABLED=False
```

Load configuration:
```bash
python run.py -c dev  # Uses .env/dev
```

## Application Lifecycle Workflow

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
python run.py -c dev publish --app app_abc123xyz --name development

# ============================================
# 4. TESTING PHASE
# ============================================
python run.py -c dev test

# ============================================
# 5. MONITORING PHASE
# ============================================
python run.py -c dev status --app app_abc123xyz --name development

# ============================================
# 6. PRODUCTION DEPLOYMENT (when ready)
# ============================================
python run.py -c prod deploy -f bin/my-banking-app.kar
python run.py -c prod publish --app <new_appId> --name production
python run.py -c prod test
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

<hr/>

**Related Resources**

- [Getting Started](../getting-started/quickstart.md) - Complete tutorial with CLI usage
- [Runtime APIs](../api/runtime/index.md) - Runtime context and services
- [Building Applications](../guide/building-apps.md) - Application development guide
