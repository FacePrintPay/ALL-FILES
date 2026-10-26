# C25 Sovereign Path Mesh - Production Deployment

## Architecture Overview

The C25 Sovereign Path Mesh creates a vertically integrated AI ecosystem where **all 317,941 files** are indexed and accessible by autonomous agents with global awareness.

### Components

```
┌─────────────────────────────────────────────────────────────┐
│              Termux MCP Server (Port 8989)                  │
│  - SQLite-backed file index (317,941 files)                 │
│  - Semantic search endpoints                                │
│  - Task dispatch system                                     │
└─────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────┐
│           C25 Mesh Core (mesh_orchestrator.py)              │
│  - Node registry & caching                                  │
│  - Endpoint discovery                                       │
│  - Dependency graph building                                │
│  - Task routing                                             │
└─────────────────────────────────────────────────────────────┘
                            │
                            ▼
┌─────────────────────────────────────────────────────────────┐
│          Autonomous Agent Swarm (autonomous_agents.py)      │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐      │
│  │ CodeAnalyzer │  │EndpointRouter│  │   DataSync   │      │
│  └──────────────┘  └──────────────┘  └──────────────┘      │
│                                                             │
│  All agents have:                                           │
│  ✓ Global awareness of all 317,941 files                   │
│  ✓ Ability to call any endpoint in the ecosystem           │
│  ✓ Inter-agent communication                               │
│  ✓ Self-registration with mesh                             │
└─────────────────────────────────────────────────────────────┘
```

## Quick Start

### Prerequisites

```bash
# On Termux (Android)
pkg update && pkg upgrade -y
pkg install python nodejs rust build-essential git tur-repo sqlite -y
pip install ollama chromadb fastapi uvicorn pydantic requests
```

### Start MCP Server (Termux)

```bash
cd $HOME
python3 c25_unified_mcp_fixed.py
# Server runs on http://0.0.0.0:8989
```

### Run Mesh Core (Any Environment)

```bash
cd /workspace
export C25_MCP_URL="http://<termux-ip>:8989"
python3 run_mesh.py
```

### Run with Demo

```bash
python3 run_mesh.py --demo
```

## API Endpoints

### MCP Server (Termux)

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/stats` | GET | Get ecosystem statistics |
| `/search?query=<q>&limit=<n>` | GET | Search indexed files |
| `/task` | POST | Dispatch task to ecosystem |

### Mesh Core

| Class | Method | Description |
|-------|--------|-------------|
| `C25MeshCore` | `get_ecosystem_stats()` | Fetch global stats |
| `C25MeshCore` | `search_nodes(query, limit)` | Search for nodes |
| `C25MeshCore` | `discover_endpoints(path)` | Extract API endpoints from file |
| `C25MeshCore` | `route_task(task, agent)` | Route task through mesh |
| `AutonomousAgent` | `get_global_awareness(query)` | Query entire ecosystem |
| `AutonomousAgent` | `execute_task(task)` | Execute task with full context |
| `AutonomousAgent` | `call_any_node(path, action)` | Direct node access |
| `AutonomousAgent` | `broadcast_to_all_agents(msg)` | Inter-agent communication |

## File Structure

```
/workspace/
├── c25-mesh-core/
│   └── mesh_orchestrator.py    # Core mesh engine
├── agents/
│   └── autonomous_agents.py    # Agent framework
├── registry/
│   ├── node_registry.json      # Cached node information
│   └── MASTER_INVENTORY.txt    # System inventory
├── run_mesh.py                 # Unified entry point
└── .c25_mesh.env               # Environment configuration
```

## Agent Capabilities

### CodeAnalyzer
- Analyzes import dependencies across all files
- Finds function definitions ecosystem-wide
- Identifies code patterns and structures

### EndpointRouter
- Discovers all API endpoints in the ecosystem
- Builds comprehensive routing tables
- Calculates optimal routes between nodes

### DataSync
- Synchronizes state across all nodes
- Ensures data consistency
- Monitors ecosystem health

### GeneralPurpose
- Handles general tasks
- Routes to specialized agents
- Coordinates multi-agent workflows

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `C25_MCP_URL` | `http://127.0.0.1:8989` | MCP server URL |
| `C25_MCP_PORT` | `3000` | Local mesh port |

## Scaling Considerations

For 300,000+ files:

1. **Chunked Processing**: Files are indexed in batches of 1000
2. **Disk-Backed Storage**: Uses SQLite/LanceDB for vector storage
3. **Memory Mapping**: Avoids loading all files into RAM
4. **Lazy Loading**: Node details fetched on-demand
5. **Caching**: Frequently accessed nodes cached locally

## Integration with Ollama/Qwen

```python
# Add to autonomous_agents.py for AI-powered tasks
import ollama

def ai_enhanced_task(self, task: str):
    # Get context from mesh
    context = self.get_global_awareness(task)
    
    # Query local LLM
    response = ollama.chat(model='qwen2.5-coder', messages=[
        {'role': 'system', 'content': f'Context: {context}'},
        {'role': 'user', 'content': task}
    ])
    
    return response['message']['content']
```

## Status

- ✅ MCP Server indexing 317,941 files
- ✅ Mesh Core operational
- ✅ 4 Autonomous Agents deployed
- ✅ Global awareness enabled
- ✅ Inter-agent communication ready
- ✅ Endpoint discovery functional

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=C25_MESH_README.md
