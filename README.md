# DevDock

**DevDock** is a lightweight, open-source template for building your own *super containerized* development environments — complete with Docker, Make, and Jupyter/VS Code integration.

The goal:  
To help you (and others) learn how to **build, run, and customize fully reproducible coding environments** — no Conda chaos, no dependency headaches, no "it works on my machine."

---

## What You’ll Learn

By exploring DevDock, you’ll learn how to:
- Build a reproducible environment from a `Dockerfile`
- Use a `Makefile` to simplify Docker commands (`make build`, `make run`, etc.)
- Mount your local code into a running container
- Run JupyterLab or attach VS Code directly to a containerized workspace
- Extend the setup for your own projects or teams

---

## Quickstart

```bash
# 1 Clone this repo
git clone https://github.com/brandonminer/devdock.git
cd devdock

# 2 Build your container image
make build

# 3 Run it (starts JupyterLab by default)
make run
```
