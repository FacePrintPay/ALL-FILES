# CONSTELLATION25 — Sovereign AI Platform
> kre8tive.space · Built in Termux · Powered by Qwen2.5 + MCP

---

## What This Is

Constellation25 (C25) is a vertically integrated AI ecosystem running entirely on a sovereign Android device via Termux. It indexes 317,941 files, runs local inference via Ollama/Qwen2.5-Coder, orchestrates 7 named agents via a FastAPI MCP server, and deploys 12+ builds to Vercel under the `kre8tive.space` domain.

No cloud inference. No data leaving the device. Full stack. Full ownership.

---

## Builds

| Build | Path | Status | Domain |
|---|---|---|---|
| Aimetaverse | `/aimetaverse` | LIVE | kre8tive.space/aimetaverse |
| Planetary Agents | `/planetary-agents` | LIVE | kre8tive.space/planetary-agents |
| PaThos | `/pathos` | LIVE | kre8tive.space/pathos |
| Cygnus | `/cygnus` | IN DEV | kre8tive.space/cygnus |
| Legyc AiRecords | `/legyc-airecords` | LIVE | kre8tive.space/legyc-airecords |
| YesQuidPro | `/yesquidpro` | BUILDING | kre8tive.space/yesquidpro |
| SovereignGTP | `/sovereign-gtp` | LIVE | kre8tive.space/sovereign-gtp |
| Agentik | `/agentik` | IN DEV | kre8tive.space/agentik |
| Parosol Insurance | `/parosol` | BUILDING | kre8tive.space/parosol |
| Memoria | `/memoria` | IN DEV | kre8tive.space/memoria |
| THAT Framework | `/that` | LIVE | kre8tive.space/that |
| FacePrintPay | `/faceprintpay` | LIVE | kre8tive.space/faceprintpay |

---

## Agents

| Agent | Role | MCP Endpoint |
|---|---|---|
| SCAF | Scaffolding & Build Orchestration | POST /task { agent: "scaf" } |
| LEDGER | Sovereign Record & Transaction Audit | POST /task { agent: "ledger" } |
| STARG8 | Gateway Routing & API Mesh | POST /task { agent: "starg8" } |
| MORPHIOUS | Data Transform & Format Mutation | POST /task { agent: "morphious" } |
| NEO | New Build Init & Code Generation | POST /task { agent: "neo" } |
| oRiKAL | Oracle — External Data & Verification | POST /task { agent: "orikal" } |
| CyGeL | Coordination — System Coherence | POST /task { agent: "cygel" } |

---

## Architecture

```
TERMUX (Android)
├── Ollama: qwen2.5-coder:1.5b + nomic-embed-text
├── MCP Server: port 8989
│   ├── GET  /stats   → 317,941 files indexed
│   ├── POST /search  → semantic search across all files
│   └── POST /task    → agent dispatch
└── Git: constellation25-mono, c25-agent-api, coral-server, dist-canonical

VERCEL (kre8tive.space)
└── Routed via vercel.json → 12 build subpages
```

---

## Customer Onboarding Flow

1. **Land** — kre8tive.space served from Vercel edge
2. **Identify** — FacePrintPay biometric / wallet auth → sovereign ledger
3. **Choose Build** — select platform relevant to user need
4. **Agent Assist** — CyGeL routes, PaThos tunes tone, appropriate agent activates
5. **Activate** — user config committed to Memoria
6. **Deploy** — first output goes live

---

## THAT Framework (The Heuristic Agent Topology)

Every C25 agent follows the same four-step pattern:

1. **Perceive** — ingest context from MCP index and user input
2. **Decide** — Qwen2.5 inference with RAG over 317,941 file index
3. **Act** — execute task (generate, transform, route, record)
4. **Report** — output written back to MCP, logged to LEDGER agent

---

## Deploy

```bash
# From workspace root
vercel deploy --prod --scope faceprintpays-projects
vercel alias set [deployment-url] kre8tive.space
```

---

## Bootstrap (Termux sync)

Run `c25_bootstrap.sh` on device to pull latest from all repos and restart MCP server.

---

*Constellation25 — Sovereign AI Platform. Built by CyGeL.*
