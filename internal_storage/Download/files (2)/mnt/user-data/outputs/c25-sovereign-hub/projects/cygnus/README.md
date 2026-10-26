# cygnus — C25 Sovereign Build

**Status:** IN DEV
**Domain:** kre8tive.space/cygnus

---

## What It Does

Sovereign inference engine. Local LLM routing layer managing model selection, context compression, and response caching across C25 agents.

---

## Skills & Capabilities

- Ollama model routing\n- Context window compression\n- Response caching\n- Model selection logic

---

## Agent Integration

Routes inference requests. All agents call Cygnus before hitting Ollama directly.

---

## MCP Connectivity

```
POST http://localhost:8989/search { "query": "..." }
POST http://localhost:8989/task   { "agent": "...", "task": "..." }
```

---

*Constellation25 · kre8tive.space · Sovereign AI*
