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

Then open the link printed in your terminal — typically something like:
`http://127.0.0.1:8888/lab`

Project Structure
```
DevDock/
├── Dockerfile        # Defines your environment
├── Makefile          # Shortcuts for building/running
└── requirements.txt  # Python dependencies (customize this)
```

**Customize It**

Add or remove packages in requirements.txt

Extend the Dockerfile to include your favorite tools (e.g. git, curl, node)

Swap out Jupyter for your framework of choice

Integrate with VS Code Dev Containers:

Install the Dev Containers extension

Use “Attach to Running Container” from the Command Palette

**Why “DevDock”?**

Because this is where your projects dock safely.
Each container is its own island — clean, consistent, and reproducible.
Turn it on, do your work, turn it off — no mess left behind.

I love conda for its isolation, but it is so heavy on disk, especially if you have close to 10 or more environments.


**Requirements**

Docker Desktop

VS Code

(Optional) VS Code Dev Containers extension

**Next Steps**

Experiment: modify the Dockerfile to suit your workflow

Share: fork this repo and make your own “Dock” template

Learn: explore multi-container setups with docker-compose

DevDock is meant to be a learning bridge — from “I use containers” → to “I build and share my own environments.”