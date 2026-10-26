# memoria — C25 Sovereign Build

**Status:** IN DEV
**Domain:** kre8tive.space/memoria

---

## What It Does

Long-term AI memory system. Stores, retrieves, and contextualizes user and agent histories across sessions using vector embeddings and graph indexing.

---

## Skills & Capabilities

- Vector embedding storage via ChromaDB\n- Cross-session context retrieval\n- User and agent history persistence\n- Graph-indexed relationships

---

## Agent Integration

Powers all agent context. Every C25 agent reads from Memoria before executing.

---

## MCP Connectivity

```
POST http://localhost:8989/search { "query": "..." }
POST http://localhost:8989/task   { "agent": "...", "task": "..." }
```

---

*Constellation25 · kre8tive.space · Sovereign AI*
