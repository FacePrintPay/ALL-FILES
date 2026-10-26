# c25-fdroid-repo — Constellation25
Overview
The C25 Sovereign Path Mesh is a distributed system for managing autonomous AI agents across multiple repositories and platforms. It provides a unified interface for agent discovery, communication, and orchestration.
## 🏗️ Architecture
- **MCP Server**: Model Context Protocol server for semantic search across 317,941 files
- **Agent Registry**: Dynamic registry of all available agents and their capabilities
- **Mesh Router**: Intelligent routing of requests to appropriate agents
- **Persistent Storage**: SQLite-backed storage for agent state and message history
## 📦 Components
- `c25-mesh-core/` - Core mesh orchestration logic
- `agents/` - Autonomous agent implementations
- `registry/` - Agent registry and discovery service
- `scripts/` - Utility scripts for deployment and management
## 🛠️ Installation
```bash
# Install dependencies
npm install
# Set up environment
cp .env.example .env
# Run the mesh
python run_mesh.py
```
## 📖 Documentation
- [Architecture](./docs/ARCHITECTURE.md)
- [Agent Development](./docs/AGENTS.md)
- [API Reference](./docs/API.md)
## 🤝 Contributing
See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.
## 📄 License
MIT License - see [LICENSE](./LICENSE) for details.` did not appear verbatim in /workspace/README.md.