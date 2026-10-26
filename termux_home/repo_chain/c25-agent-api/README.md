# C25 Monorepo - Constellation25 AI Ecosystem

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/Node.js-%3E%3D18.0.0-green.svg)](https://nodejs.org/)

## Overview

This monorepo contains the complete C25 (Constellation25) AI ecosystem by FacePrintPay, including:

- **C25 Agent Core** - Central agent orchestration system
- **C25 Agent API** - RESTful API services
- **C25 Agent Pipeline** - Data processing pipelines
- **C25 Agent Integrations** - Third-party integrations
- **PaThos AI** - Emotional intelligence platform
- **VeRseD AI** - Knowledge management system
- **Constellation25** - Distributed agent network

## Project Structure

```
c25-monorepo/
├── packages/
│   ├── c25-agent/
│   │   ├── backend/          # Core backend services
│   │   ├── api/              # API endpoints
│   │   ├── pipeline/         # Data pipelines
│   │   └── integrations/     # External integrations
│   ├── faceprintpay/
│   │   ├── pathos-ai/        # PaThos emotional AI
│   │   ├── versed-ai/        # VeRseD knowledge system
│   │   └── sovereign-genesis/# Sovereign Genesis module
│   └── constellation25/      # Constellation network
├── apps/
│   └── web/                  # Web application
├── .github/                  # GitHub Actions workflows
├── package.json              # Root workspace config
└── vercel.json               # Vercel deployment config
```

## Quick Start

### Prerequisites

- Node.js >= 18.0.0
- npm >= 9.0.0

### Installation

```bash
npm install
```

### Development

```bash
npm run dev
```

### Building

```bash
npm run build
```

## Available Scripts

| Script | Description |
|--------|-------------|
| `npm run build` | Build all workspaces |
| `npm run test` | Run tests across all workspaces |
| `npm run start` | Start all services |
| `npm run dev` | Run in development mode |
| `npm run lint` | Lint all source files |
| `npm run format` | Format code with Prettier |

## API Endpoints

### C25 Agent API

- `GET /api/c25/health` - Health check
- `POST /api/c25/auth/*` - Authentication routes
- `GET /api/c25/arxiv/*` - ArXiv search integration
- `GET /api/c25/weather/*` - Weather data service
- `POST /api/c25/upload/*` - File upload handling
- `GET /api/c25/search/*` - Search functionality
- `POST /api/c25/payment/*` - Payment processing
- `POST /api/c25/graphql` - GraphQL endpoint

### PaThos AI API

- `POST /api/pathos/auth/*` - Authentication
- `GET /api/pathos/sentiment` - Sentiment analysis
- `POST /api/pathos/license` - License validation

## Environment Variables

Create a `.env` file in each package directory:

```env
PORT=3000
NODE_ENV=development
JWT_SECRET=your-secret-key
DATABASE_URL=mongodb://localhost:27017/c25
C25_AGENT_DEPLOY=true
```

## Deployment

### Vercel

```bash
npm i -g vercel
vercel
```

## License

MIT License - see LICENSE file for details.

## Authors

- **Cygel White** - [FacePrintPay](https://github.com/FacePrintPay)

---

**Built with ❤️ by FacePrintPay**

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=README.md
