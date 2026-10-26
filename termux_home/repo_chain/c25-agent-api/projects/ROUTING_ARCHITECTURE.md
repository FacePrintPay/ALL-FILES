# C25 Sovereign Path Mesh - Unified Routing System

## 🌐 Overview

This document defines the unified routing architecture that enables all 11 projects within the C25 ecosystem to communicate seamlessly, share context, and coordinate end-to-end customer workflows.

---

## Architecture Diagram

```
┌─────────────────────────────────────────────────────────────────┐
│                    kre8tivez.space (Vercel Edge)                │
│                         Landing / Auth                          │
└─────────────────────────┬───────────────────────────────────────┘
                          │
┌─────────────────────────▼───────────────────────────────────────┐
│                    API Gateway (Kong/Traefik)                   │
│              Rate Limiting | Auth | Routing                     │
└─────────────────────────┬───────────────────────────────────────┘
                          │
    ┌─────────────────────┼─────────────────────┐
    │                     │                     │
┌───▼────┐         ┌─────▼─────┐        ┌──────▼──────┐
│Aimetaverse│       │Planetary  │        │   PaThos    │
│  :3001   │◄─────►│ Agents:3002│◄──────►│   :3003     │
└──────────┘       └───────────┘        └─────────────┘
       │                  │                     │
       │            ┌─────▼─────┐              │
       │            │  Cygnus   │◄─────────────┘
       │            │  :3004    │
       │            └─────┬─────┘
       │                  │
┌──────▼──────┐    ┌──────▼──────┐
│   Legyc     │    │  Agentik    │
│ AIRecords   │    │   :3006     │
│   :3005     │    └──────┬──────┘
└─────────────┘           │
                          │
    ┌─────────────────────┼─────────────────────┐
    │                     │                     │
┌───▼────┐         ┌─────▼─────┐        ┌──────▼──────┐
│Yesquidpro│       │Sovereign- │        │  Parosol    │
│  :3007   │       │   GTP     │        │ Insurance   │
└──────────┘       │  :3008    │        │   :3009     │
                   └───────────┘        └─────────────┘
                          │                     │
    ┌─────────────────────┼─────────────────────┐
    │                     │                     │
┌───▼────┐         ┌─────▼─────┐        ┌──────▼──────┐
│ Memoria │         │   THAT    │        │   MCP       │
│ :3010   │         │Framework  │        │ Server:8989 │
└──────────┘         │  :3011    │        └─────────────┘
                     └───────────┘
```

---

## Service Registry

| Service | Port | Protocol | Health Endpoint |
|---------|------|----------|-----------------|
| Aimetaverse | 3001 | HTTP/WS | `/health` |
| Planetary Agents | 3002 | HTTP/WS | `/agents/status` |
| PaThos | 3003 | HTTP | `/pathos/health` |
| Cygnus | 3004 | HTTP/gRPC | `/cygnus/metrics` |
| Legyc AIRecords | 3005 | HTTP | `/airecords/health` |
| Agentik | 3006 | HTTP | `/agentik/health` |
| Yesquidpro | 3007 | HTTP | `/yesquidpro/health` |
| SovereignGTP | 3008 | HTTP/gRPC | `/gtp/health` |
| Parosol Insurance | 3009 | HTTP | `/insurance/health` |
| Memoria | 3010 | HTTP/gRPC | `/memoria/health` |
| THAT Framework | 3011 | HTTP | `/that/health` |
| MCP Server (Termux) | 8989 | HTTP | `/stats` |

---

## Cross-Service Communication Patterns

### 1. Request/Response (Synchronous)
```typescript
// Example: PaThos calling Memoria for context
const context = await fetch('http://memoria:3010/memoria/recall', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({ sessionId: 'sess_123', limit: 5 })
});
```

### 2. Event-Driven (Asynchronous via Cygnus)
```typescript
// Example: Agentik publishing deployment event
await cygnus.publish('agent.deployed', {
  agentId: 'ag_456',
  version: '1.2.0',
  timestamp: Date.now()
});

// Planetary Agents subscribes
cygnus.subscribe('agent.deployed', async (event) => {
  await registerAgent(event.agentId);
});
```

### 3. Streaming (WebSocket)
```typescript
// Example: Aimetaverse real-time updates
const ws = new WebSocket('ws://aimetaverse:3001/aimetaverse/stream');
ws.onmessage = (event) => handleWorldUpdate(JSON.parse(event.data));
```

---

## Unified Customer Onboarding Flow

### Step-by-Step Journey

```
1. Landing (kre8tivez.space)
   │
   ▼
2. Authentication (DID + Parosol verification)
   │
   ▼
3. Project Selection (Agentik templates)
   │
   ▼
4. Configuration Wizard
   ├── Aimetaverse: World settings
   ├── Planetary: Agent requirements
   ├── PaThos: Emotion thresholds
   └── Parosol: Insurance options
   │
   ▼
5. Resource Provisioning
   ├── SovereignGTP: Compute allocation
   ├── Memoria: Memory initialization
   └── Cygnus: Stream setup
   │
   ▼
6. Validation (THAT Framework)
   │
   ▼
7. Deployment
   ├── Vercel: Frontend
   ├── Kubernetes: Services
   └── DNS: Subdomain config
   │
   ▼
8. Audit Logging (Legyc AIRecords)
   │
   ▼
9. Go Live + Monitoring
```

---

## API Gateway Configuration

### Kong Route Example
```yaml
routes:
  - name: aimetaverse-route
    paths: ["/aimetaverse"]
    services: aimetaverse-svc
    
  - name: agents-route
    paths: ["/agents"]
    services: planetary-agents-svc
    
  - name: pathos-route
    paths: ["/pathos"]
    services: pathos-svc

plugins:
  - rate-limiting:
      minute: 1000
      policy: redis
  - jwt:
      key_claim_name: sub
  - cors:
      origins: ["*.kre8tivez.space"]
```

---

## Subdomain Routing Rules

| Pattern | Target Service | Purpose |
|---------|---------------|---------|
| `{project}.kre8tivez.space` | Aimetaverse | Main world |
| `{project}-admin.kre8tivez.space` | Agentik | Dashboard |
| `{project}-api.kre8tivez.space` | API Gateway | Unified API |
| `{project}-agents.kre8tivez.space` | Planetary | Agent mesh |
| `{project}-events.kre8tivez.space` | Cygnus | Event stream |
| `{project}-memory.kre8tivez.space` | Memoria | Context API |
| `{project}-audit.kre8tivez.space` | Legyc | Compliance |
| `{project}-metrics.kre8tivez.space` | THAT | Analytics |

---

## Environment Variables Template

```bash
# Shared Configuration
C25_MESH_VERSION=1.0.0
C25_MCP_ENDPOINT=http://localhost:8989
C25_SECRET_KEY=${GENERATED_SECRET}

# Service Discovery
CONSUL_HTTP_ADDR=consul.service.consul:8500
ETCD_ENDPOINTS=etcd-1:2379,etcd-2:2379,etcd-3:2379

# Database Connections
REDIS_URL=redis://redis-cluster:6379
POSTGRES_URL=postgresql://user:pass@postgres:5432/c25_main

# Message Bus
KAFKA_BROKERS=kafka-1:9092,kafka-2:9092,kafka-3:9092
NATS_URL=nats://nats-cluster:4222

# Observability
JAEGER_ENDPOINT=http://jaeger:14268/api/traces
PROMETHEUS_URL=http://prometheus:9090
GRAFANA_URL=http://grafana:3000

# Feature Flags
ENABLE_AI_METAVERSE=true
ENABLE_PATHOS_EMOTIONS=true
ENABLE_BLOCKCHAIN_ANCHOR=false
```

---

## Health Check Aggregation

```typescript
// Unified health endpoint
GET /health/all

Response:
{
  "status": "healthy",
  "timestamp": "2026-06-26T10:30:00Z",
  "services": {
    "aimetaverse": { "status": "up", "latency": 12 },
    "planetary-agents": { "status": "up", "latency": 8 },
    "pathos": { "status": "up", "latency": 15 },
    "cygnus": { "status": "up", "latency": 5 },
    "legyc-airecords": { "status": "up", "latency": 10 },
    "agentik": { "status": "up", "latency": 18 },
    "yesquidpro": { "status": "up", "latency": 22 },
    "sovereign-gtp": { "status": "up", "latency": 30 },
    "parosol-insurance": { "status": "up", "latency": 25 },
    "memoria": { "status": "up", "latency": 7 },
    "that-framework": { "status": "up", "latency": 20 },
    "mcp-server": { "status": "up", "latency": 45 }
  },
  "overallHealth": "100%"
}
```

---

## Deployment Commands

```bash
# Deploy entire ecosystem
npm run c25:deploy:all

# Deploy individual service
npm run deploy:aimetaverse
npm run deploy:planetary-agents
npm run deploy:pathos
npm run deploy:cygnus
npm run deploy:legyc-airecords
npm run deploy:agentik
npm run deploy:yesquidpro
npm run deploy:sovereign-gtp
npm run deploy:parosol-insurance
npm run deploy:memoria
npm run deploy:that-framework

# Local development
npm run dev:mesh          # Start all services
npm run dev:service-name  # Start specific service

# Monitoring
npm run logs:all          # Aggregate logs
npm run metrics:dashboard # Open Grafana
npm run trace:view        # Open Jaeger
```

---

*Part of the C25 Sovereign Path Mesh Ecosystem*  
*Last Updated: 2026-06-26*

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=ROUTING_ARCHITECTURE.md
