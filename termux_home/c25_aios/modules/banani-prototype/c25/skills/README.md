# C25 SYSTEM.SKILLS - Master Skill Registry

## Overview

The C25 Constellation25 Skills System provides a unified framework for:
- **Discovering** all agent.sh scripts across the platform
- **Reading** Termux bash history for command patterns
- **Scanning** filesystem with ranger-compatible file discovery
- **Creating** missing agent files automatically via oRiKAL
- **Registering** skills for each agent
- **Executing** commands through agent-specific skill functions

## Directory Structure

```
c25/
├── skills/
│   ├── system.skills        # Master skill registry scanner
│   ├── agent_runner.sh      # Agent skill executor
│   └── README.md            # This documentation
├── orchestrator/
│   ├── oRiKAL.sh            # Base validator agent
│   └── oRiKAL-skills.sh     # Skills-enabled oRiKAL
├── agents/                  # All 25 planetary agent scripts
├── cache/                   # oRiKAL runtime cache
├── runtime/                 # Runtime state storage
└── config/                  # Platform configuration
```

## File Types Supported

| Extension | Purpose | Example |
|-----------|---------|---------|
| `.sh` | Bash agent scripts | `mercury-agent.sh` |
| `.md` | Documentation | `README.md` |
| `.json` | Configuration/Manifest | `registry.json` |
| `.go` | Go modules (MCP) | `c25_mcp.go` |
| `.fastapi` | Python API definitions | `api_server.fastapi` |
| `.mht` | Archived documents | `platform_spec.mht` |

## Core Skills

Every agent in C25 has these core skills:

| Skill | Function | Description |
|-------|----------|-------------|
| `file_read` | `skill_file_read()` | Read contents of any file |
| `file_write` | `skill_file_write()` | Write content to file |
| `command_exec` | `skill_command_exec()` | Execute shell commands |
| `status_check` | `skill_status_check()` | Report agent status |
| `list_directory` | `skill_list_directory()` | List directory contents |
| `hash_file` | `skill_hash_file()` | Generate SHA256/MD5 hash |

## Usage

### 1. Initialize Skills Registry

```bash
# Run the master scanner
./skills/system.skills
```

This will:
- Scan Termux bash history
- Discover all files via ranger/find
- Run oRiKAL to read/create agent files
- Generate the skills manifest

### 2. Run oRiKAL Scanner

```bash
# Scan and update all agents
./orchestrator/oRiKAL-skills.sh scan

# Read or create a specific file
./orchestrator/oRiKAL-skills.sh read /path/to/file.sh

# Route command to specific agent
./orchestrator/oRiKAL-skills.sh route mercury status_check

# Generate manifest only
./orchestrator/oRiKAL-skills.sh manifest
```

### 3. Execute Agent Skills

```bash
# List all agents and their skills
./skills/agent_runner.sh --list

# Execute a skill on an agent
./skills/agent_runner.sh earth file_read /etc/hosts
./skills/agent_runner.sh jupiter status_check
./skills/agent_runner.sh mars command_exec "ls -la"
```

### 4. Direct Agent Execution

Each agent can also be run directly:

```bash
# Source and execute
source agents/mercury-agent.sh
execute status_check

# Or run directly
./agents/venus-agent.sh file_write /tmp/test.txt "Hello C25"
```

## Agent Clusters

| Cluster | Agents | Purpose |
|---------|--------|---------|
| SCAFFOLD | Mercury, Venus, Earth, Mars | Core infrastructure |
| SECURITY | Jupiter, Saturn, Uranus, Neptune | Auth, encryption, firewall |
| RUNTIME | Pluto, Ceres, Eris, Makemake | LLM, API, DB, cache |
| ORCHESTR | Haumea, Sedna, Quaoar, Orcus | Intent parsing & coordination |
| DEPLOY | Varuna, Ixion, Chaos, Huya | Git, containers, DNS, CDN |
| MONITOR | Salacia, Altjira, Varda, Gonggong, Deimos | Health, logs, uptime |

## Skill Execution Flow

```
User Intent
    ↓
Haumea (Neo) - Parse intent
    ↓
Sedna (Morpheus) - Translate to bash
    ↓
Quaoar (oRiKAL) - Validate & route
    ↓
Orcus - Coordinate swarm
    ↓
Target Agent - Execute skill
    ↓
Result returned
```

## Generated Files

After running `system.skills`, you'll find:

- `skills/registry.json` - JSON skill registry
- `skills/history_commands.txt` - Extracted Termux history
- `skills/ranger_files.txt` - Discovered files list
- `skills/agent_skills.ndjson` - Per-agent skill data
- `skills/system.skills.manifest` - Human-readable manifest
- `skills/orikal_manifest.json` - oRiKAL-generated manifest

## Termux Integration

The system integrates with Termux API:

```bash
# Battery monitoring
termux-battery-status

# Notifications
termux-notification --title "C25 Alert" --content "Task complete"

# Location services
termux-location

# Sensor data
termux-sensor -l
```

## Error Handling

All scripts use `set -euo pipefail` for strict error handling:
- Exit on error (`-e`)
- Undefined variables are errors (`-u`)
- Pipeline failures propagate (`-o pipefail`)

## License

C25 Constellation25 - Sovereign AI Platform
CyGeL Co © 2025
