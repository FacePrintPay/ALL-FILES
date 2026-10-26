# Constellation25 · Sovereign AI Platform

## Overview
Constellation25 (C25) is a sovereign AI platform featuring 25 planetary agents organized into 6 clusters.

## Architecture

### Clusters
- **SCAFFOLD**: Core infrastructure (Mercury, Venus, Earth, Mars)
- **SECURITY**: Auth & encryption (Jupiter, Saturn, Uranus, Neptune)
- **RUNTIME**: LLM & API layer (Pluto, Ceres, Eris, Makemake)
- **ORCHESTR**: Intent parsing & execution (Haumea/Neo, Sedna/Morpheus, Quaoar/oRiKAL, Orcus)
- **DEPLOY**: Git & container management (Varuna, Ixion, Chaos, Huya)
- **MONITOR**: Health & logging (Salacia, Altjira, Varda, Gonggong, Deimos)

## Directory Structure
```
c25/
├── agents/          # Agent scripts (.sh)
├── config/          # Configuration files (.json, .md)
├── manifest/        # System manifests (.json)
├── logs/            # Log files
├── modules/         # Reusable modules (.go, .py, .fastapi)
├── deploy/          # Deployment configs
├── docs/            # Documentation (.md, .mht)
├── runtime/         # Runtime binaries
├── security/        # Security configs
└── orchestrator/    # oRiKAL validator
```

## Quick Start
```bash
./orchestrator/oRiKAL.sh status
./orchestrator/oRiKAL.sh validate
./orchestrator/oRiKAL.sh manifest
```

## Termux Integration
Designed for Termux with API support and boot widgets.
