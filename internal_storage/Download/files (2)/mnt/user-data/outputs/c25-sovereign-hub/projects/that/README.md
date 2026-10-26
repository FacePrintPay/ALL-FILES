# that — C25 Sovereign Build

**Status:** LIVE
**Domain:** kre8tive.space/that

---

## What It Does

The Heuristic Agent Topology. The foundational C25 agent design pattern: perceive, decide, act, report.

---

## Skills & Capabilities

- Perceive: ingest MCP context and user input\n- Decide: Qwen2.5 inference with RAG\n- Act: execute task\n- Report: write output back to MCP and LEDGER\n- All 7 agents implement THAT

---

## Agent Integration

All agents implement THAT interface. Deviations flagged by LEDGER.

---

## MCP Connectivity

```
POST http://localhost:8989/search { "query": "..." }
POST http://localhost:8989/task   { "agent": "...", "task": "..." }
```

---

*Constellation25 · kre8tive.space · Sovereign AI*
