# sovereign-gtp — C25 Sovereign Build

**Status:** LIVE
**Domain:** kre8tive.space/sovereign-gtp

---

## What It Does

The C25 public inference API. External developers query the sovereign model stack without cloud dependency.

---

## Skills & Capabilities

- Public REST inference API\n- Retrieval-augmented generation over 317k files\n- Local fine-tune serving\n- Sovereign inference

---

## Agent Integration

Exposed via STARG8 gateway agent. Rate-limited by LEDGER.

---

## MCP Connectivity

```
POST http://localhost:8989/search { "query": "..." }
POST http://localhost:8989/task   { "agent": "...", "task": "..." }
```

---

*Constellation25 · kre8tive.space · Sovereign AI*
