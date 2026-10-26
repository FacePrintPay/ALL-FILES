# VideoCourts™ Justice Stack Monorepo

This repository contains the full architecture for the VideoCourts™ Hybrid Justice Platform:

## Structure

- **apps/**
  - videocourts-web        → Enterprise / investor / court-facing website
  - videocourts-api        → Core REST/JSON API (sessions, identity, evidence, agents)
- **packages/**
  - agents-bailiff         → Bailiff Agents™ (monitoring & security)
  - agents-clerk           → Clerk assistant & workflow automation
  - transcript-ai          → Transcript & summarization helper
  - totalrecall-client     → Client wrappers for TotalRecall™ engine
- **governance/**
  - AI governance charter, security controls, model registry
- **procurement/**
  - SOW, SLA, compliance matrix, pricing overview
- **docs/**
  - Business plan, George Henry White–style mission statement
- **demos/**
  - Biometric gateway demo, TotalRecall evidence demo
- **pitch/**
  - Investor one-pager, deck outline
- **infra/**
  - Docker / deployment scaffolds

## Purpose

This repo is intended as the **single source of truth** for:
- Federal & state court procurement discussions
- Investor diligence
- Technical integration
- Agent orchestration

## Quick Start

```bash
# View the enterprise site
open apps/videocourts-web/index.html

# Review governance framework
cat governance/ai_governance_policy.md

# Check procurement materials
ls -la procurement/
```

## Integration with Kre8tive Holdings

This VideoCourts Justice Stack integrates with:
- **AiKre8tive Compiler** - orchestration layer
- **LEGyC System** - archival and identity sealing
- **FacePrintPay** - biometric authentication
- **Planetary AI Agents** - Recon, Chronos, Echo
- **AI E-Filing Agent** - Tyler Technologies integration


# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=README.md
