# Building the Documentation

This directory contains the source files for the AgenticAI Core SDK documentation built with MkDocs and Material theme.

## Setup

Install documentation dependencies:

```bash
pip install -r docs-requirements.txt
```

Or install with the package:

```bash
pip install -e ".[docs]"
```

## Build and Serve Locally

To preview the documentation locally:

```bash
mkdocs serve
```

Then open your browser to `http://127.0.0.1:8000`

## Build for Production

To build the static site:

```bash
mkdocs build
```

The built site will be in the `site/` directory.

## Deploy to GitHub Pages

```bash
mkdocs gh-deploy
```

## Documentation Structure

```
docs/
├── index.md                    # Home page
├── getting-started/            # Getting started guides
│   ├── installation.md
│   ├── quickstart.md
│   └── concepts.md
├── guide/                      # User guides
│   ├── building-apps.md
│   ├── creating-agents.md
│   ├── working-with-tools.md
│   └── ...
├── api/                        # API reference (auto-generated)
│   ├── index.md
│   ├── designtime/
│   │   ├── app.md
│   │   ├── agent.md
│   │   └── ...
│   └── runtime/
└── examples/                   # Example applications
```

## MkDocs Configuration

The `mkdocs.yml` file contains:

- **Theme**: Material theme with dark/light mode
- **Plugins**: 
  - mkdocstrings for API documentation
  - search for full-text search
- **Extensions**: Code highlighting, admonitions, tabs, etc.

## API Documentation

API documentation is auto-generated from docstrings using mkdocstrings. The `::: module.Class` syntax in markdown files automatically pulls in docstrings from the source code.

Example:
```markdown
# Agent

::: agenticai_core.designtime.models.agent.Agent
    options:
      show_root_heading: true
      show_source: true
```

## Contributing

When adding new classes or modules:

1. Add comprehensive docstrings in Google/NumPy style
2. Create a corresponding `.md` file in `docs/api/`
3. Update the navigation in `mkdocs.yml`
4. Add usage examples in the API docs

