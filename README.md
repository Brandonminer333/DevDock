# DevDock — The Base Image Hub

**DevDock** is an open-source repository showcasing how to design, build, and version **reusable Docker base layers** for Python and data science projects.  

Instead of just a “how-to run containers,” DevDock is a **living library of base images**, designed for:
- **Reproducibility**: exact environments anyone can pull and run  
- **Efficiency**: share common layers to save disk space  
- **Transparency**: see how each base layer is built and optimized  

All images are available on **[Docker Hub](https://hub.docker.com)** with semantic versioning, so you can pull exactly the environment you need.

---

## Repo Structure
```
DevDock/
├── base/
│ ├── python-base/ # Minimal Python environment
│ └── ds-base/ # Python + core data science packages (numpy, pandas, scikit-learn, jupyterlab)
│
├── templates/
│ └── project-template/ # Starter Dockerfile & Makefile for new projects
│
├── docs/
│ └── layer-diagrams/ # Visualizations of layer hierarchies
│
└── README.md # This file
```


- `base/` → foundational images you can build on  
- `templates/` → ready-to-use scaffolds for new projects  
- `docs/` → explanatory diagrams showing how layers stack and depend on each other  

---

## Base Images

| Image | Description | Docker Hub |
|-------|------------|------------|
| `python-base` | Minimal Python 3.11 environment with essential system tools | `yourusername/python-base:latest` |
| `ds-base`     | Extends `python-base` with NumPy, Pandas, scikit-learn, JupyterLab, Matplotlib, Seaborn | `yourusername/ds-base:latest` |

**Versioning Notes:**  
- Each image is tagged with a semantic version (e.g., `1.0`, `1.1`)  
- `latest` always points to the most stable recent release  
- Old versions remain available for reproducibility  

---

## Building Locally

You can build any base image locally before pushing or extending:

```bash
# Build python-base
cd base/python-base
make build

# Build ds-base (depends on python-base)
cd ../ds-base
make build
```

This will create local Docker images that you can use as bases for your projects.

## Using DevDock Bases in Your Projects

Example Dockerfile for a project extending ds-base:
```bash
FROM yourusername/ds-base:latest
COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /workspace
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
```

Then build and run:
```bash
make build
make run
```

All project-specific dependencies add just one layer on top of the shared base, saving space and build time.

## Philosophy: Layered, Transparent, Efficient

DevDock encourages:

Layer reuse: common dependencies exist in base images, reducing duplication

Traceable builds: each Dockerfile shows exactly what’s installed and why

Version control for environments: semantic tags ensure reproducibility

Educational transparency: you can see how base layers are constructed and extend them yourself

Think of DevDock as a meta-environment repository: each base image is a building block, and projects are constructed on top.

## Contributing

Propose new base layers (ML-base, NLP-base, etc.)

Add documentation or diagrams explaining layer structure

Suggest optimizations for smaller, faster builds

Note: All contributions should maintain reproducibility and clarity in layering.

## Get Started

Clone DevDock:
```bash
git clone https://github.com/yourusername/devdock.git
cd devdock
```

Build a base image (optional, local testing):
```bash
cd base/python-base
make build
```

Use the base images in your own projects or extend them via Docker Hub:
```
FROM yourusername/ds-base:latest
```

DevDock is more than a “how-to”: it’s a teaching tool, a repository of best practices, and a hub for reproducible, containerized Python environments.