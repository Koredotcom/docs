# Installation

Get started with the AgenticAI Workspace and set up your development environment.

!!!note 

    The SDK repository is private and is shared on request. [Contact Support for access to the repo.](https://support.kore.ai)

## Requirements

- Python 3.10 or higher
- pip package manager
- Git (for cloning repositories)

## Workspace Setup

The AgenticAI Workspace is a complete development environment for building multi-agent AI applications. The `agenticai-core` library is included in the workspace under `lib/`.

### 1. Clone the Workspace Repository

```bash
# Clone the workspace repository
git clone <workspace-repository-url>
cd workspace

# Make setup script executable
chmod +x .setup.sh

# Run setup (creates .venv and installs dependencies)
./.setup.sh
```

The setup script will:

- Create a `.venv` virtual environment
- Install `agenticai-core` from `lib/agenticai_core-0.1.0-py3-none-any.whl`
- Install all dependencies from `requirements.txt`

!!! warning "Virtual Environment Naming"
    The setup script creates `.venv` automatically. If you create a virtual environment manually, always use `.venv`. Other names will be included in deployment archives, causing size issues.

### 2. Manual Setup (Alternative)

If you prefer manual setup:

```bash
# Create virtual environment (IMPORTANT: use .venv)
python3.10 -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate

# Install dependencies (includes agenticai-core from lib/)
pip install -r requirements.txt
```

<!--
### 3. Using agenticai-core Standalone (Future)

!!! info "PyPI Availability"
    The `agenticai-core` library is not yet publicly available on PyPI. When released, you'll be able to install it directly:
    
    ```bash
    pip install agenticai-core
    ```
    
    For now, use the workspace which includes the library in `lib/`.

-->

### 3. Install from Local Wheel

If you need to install the library separately:

```bash
pip install ./lib/agenticai_core-0.1.0-py3-none-any.whl
```

## Platform Setup

Before building applications, configure access to the AgenticAI platform.

### 1. Access the Platform

Visit [AgenticAI Platform](https://agent-platform.kore.ai/) to:

1. **Configure LLM Models** - Set up your preferred models (GPT-4, Claude, etc.)
2. **Create Application** - Create a new app on the platform
3. **Generate API Key** - Create an API key for deployment and testing

### 2. Configure Environment Variables

Create environment configuration files in `.env/` directory:

```bash
# .env/dev
KORE_HOST=https://agent-platform.kore.ai
APP_API_KEY=your_generated_api_key_here

# Optional: Enable distributed tracing
TRACING_ENABLED=True
```

Create separate configs for different environments:

- `.env/dev` - Development configuration
- `.env/staging` - Staging configuration
- `.env/prod` - Production configuration

### 3. Environment Variable Details

| Variable | Description | Required |
|----------|-------------|----------|
| `KORE_HOST` | Platform API endpoint URL | Yes (for deploy/test) |
| `APP_API_KEY` | Authentication key for platform API | Yes (for deploy/test) |
| `TRACING_ENABLED` | Enable distributed tracing | No (default: False) |

## Verify Installation

```python
# Activate your virtual environment first
# source .venv/bin/activate

import agenticai_core
from agenticai_core.designtime.models import App, Agent

print("AgenticAI Core installed successfully!")
print(f"Version: 0.1.0")
```

## Workspace Structure

After setup, your workspace should look like:

```
workspace/
├── .venv/                    # Virtual environment (created by setup)
├── .env/                     # Environment configurations (you create)
│   ├── dev
│   ├── staging
│   └── prod
├── lib/                      # Pre-installed libraries
│   ├── agenticai_core-0.1.0-py3-none-any.whl
│   └── kore_api-1.0.0-py3-none-any.whl
├── src/
│   ├── tools/                # Your custom tools
│   ├── orchestrator/         # Your custom orchestrators
│   └── app.py                # Your application definition
├── bin/                      # Generated archives (created on archive)
├── examples/                 # Example applications
├── .scripts/                 # Utility scripts
├── requirements.txt          # Dependency list
├── run.py                    # CLI entry point
├── .setup.sh                 # Setup script
└── README.md                 # Workspace documentation
```

## Dependencies

The workspace `requirements.txt` includes:

### Pre-installed Libraries

Located in `lib/`:

- `agenticai_core-0.1.0-py3-none-any.whl` - AgenticAI Core SDK
- `kore_api-1.0.0-py3-none-any.whl` - Platform API client

### Additional Dependencies

Installed from PyPI:

- `numpy` - Numerical computing
- `langchain-core` - LangChain framework
- `langchain-openai` - OpenAI integration
- `openai-agents==0.2.3` - OpenAI agents framework

### Adding Your Dependencies

Edit `requirements.txt` to add your project dependencies:

```txt
# Workspace dependencies (keep these)
./lib/agenticai_core-0.1.0-py3-none-any.whl
./lib/kore_api-1.0.0-py3-none-any.whl

# Add your dependencies here
requests
pandas
your-package==1.0.0
```

Then reinstall:

```bash
pip install -r requirements.txt
```

## Troubleshooting

### Virtual Environment Issues

!!! error "Archive too large (>1MB)"
    If your archives are too large, check if you're using `.venv`. Other virtual environment names will be included in archives.

### Import Errors

```bash
# Make sure you're in the virtual environment
source .venv/bin/activate  # Linux/Mac
.venv\Scripts\activate     # Windows

# Reinstall in editable mode
pip install -e .
```

### Platform Connection Issues

```bash
# Verify environment variables are loaded
python -c "import os; print(os.getenv('KORE_HOST'))"

# Check if .env file exists
ls -la .env/
```

## Next Steps

- [:octicons-arrow-right-24: Quick Start](quickstart.md) - Build your first app
- [:octicons-arrow-right-24: Core Concepts](concepts.md) - Understand the framework
- [:octicons-arrow-right-24: API Reference](../api/index.md) - Explore the API
