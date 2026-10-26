# AiKre8tive-
Ai for Real Creators 
# AiKre8tive Planetary Agent Grid

## Overview

The AiKre8tive Planetary Agent Grid is a fully autonomous, modular, reasoning DevOps and NLP planetary swarm. It orchestrates 25 specialized FastAPI-based microservices, each running independently on designated ports, forming an intelligent, self-healing, secure distributed system. The platform is designed for multi-cloud, edge, or Termux-based deployment with pm2 orchestration, supporting real-time mission operations.

---

## Core Features

- 25 planetary microservices, each with a specialized role
- Fully asynchronous FastAPI endpoints
- Integrated Groq API support (LLaMA models)
- Local fallback using transformers (LLaMA 2)
- Snowflake connector for structured/unstructured data pipelines
- Coral Studio heartbeat monitoring
- Fetch AI Agentverse registration
- PM2-based process control
- Secure .env-based credential handling
- Ready for Netlify static frontend dashboard
- Discord mission control channel integration (via webhooks)

---

## Planetary Agents

| Planet     | Function                             | Port   |
|------------|--------------------------------------|--------|
| Mercury    | Session Manager                      | 8001   |
| Venus      | NLP Prompt Router                    | 8002   |
| Earth      | Data Cleaner                         | 8003   |
| Mars       | Vectorizer                           | 8004   |
| Jupiter    | Hyperparameter Tuner                 | 8005   |
| Saturn     | Vector Store                         | 8006   |
| Uranus     | A2A Broker                           | 8007   |
| Neptune    | Snowflake Ingest & Transform         | 8008   |
| Pluto      | Retry Queue                          | 8009   |
| Ceres      | Performance Metrics                  | 8010   |
| Pallas     | Sentiment Analysis                   | 8011   |
| Hygiea     | Responsible AI / Bias Auditor        | 8012   |
| Vesta      | Token Manager                        | 8013   |
| Eris       | Threat Detection                     | 8014   |
| Haumea     | Summarizer                           | 8015   |
| Makemake   | Model Retraining Trigger             | 8016   |
| Sedna      | Compliance Logger                    | 8017   |
| Quaoar     | Scaling Strategy Manager             | 8018   |
| Orcus      | QA Harness                           | 8019   |
| Ixion      | DevOps Finalizer                     | 8020   |
| Varuna     | API Documentation                    | 8021   |
| Triton     | Streaming Adapter                    | 8022   |
| Titania    | UI Health Check                      | 8023   |
| Oberon     | Audit Recorder                       | 8024   |
| Ariel      | Reporting & Visualization            | 8025   |

---

## Deployment

1. Clone this repo:
    ```bash
    git clone https://github.com/TheKre8tive/aikre8tive-planetary-grid.git
    ```
2. Change into the directory:
    ```bash
    cd aikre8tive-planetary-grid
    ```
3. Install Python dependencies:
    ```bash
    pip install -r requirements.txt
    ```
4. Install PM2:
    ```bash
    npm install -g pm2
    ```
5. Start the planetary grid:
    ```bash
    pm2 start ecosystem.config.js
    ```
6. To keep pm2 alive:
    ```bash
    pm2 startup
    pm2 save
    ```

For Termux:
```bash
chmod +x scripts/termux-deploy.sh
./scripts/termux-deploy.sh
module.exports = {
  apps: [
    {
      name: "mercury",
      script: "./agents/mercury/mercury.py",
      interpreter: "python3",
      env: { PORT: 8001, TRACK: "General" }
    },
    {
      name: "venus",
      script: "./agents/venus/venus.py",
      interpreter: "python3",
      env: { PORT: 8002, TRACK: "Qualcomm NLP" }
    },
    {
      name: "earth",
      script: "./agents/earth/earth.py",
      interpreter: "python3",
      env: { PORT: 8003, TRACK: "Data" }
    },
    {
      name: "mars",
      script: "./agents/mars/mars.py",
      interpreter: "python3",
      env: { PORT: 8004, TRACK: "Vector" }
    },
    {
      name: "jupiter",
      script: "./agents/jupiter/jupiter.py",
      interpreter: "python3",
      env: { PORT: 8005, TRACK: "Hyperparameter" }
    },
    {
      name: "saturn",
      script: "./agents/saturn/saturn.py",
      interpreter: "python3",
      env: { PORT: 8006, TRACK: "Vector Store" }
    },
    {
      name: "uranus",
      script: "./agents/uranus/uranus.py",
      interpreter: "python3",
      env: { PORT: 8007, TRACK: "Agent Broker" }
    },
    {
      name: "neptune",
      script: "./agents/neptune/neptune.py",
      interpreter: "python3",
      env: { PORT: 8008, TRACK: "Snowflake" }
    },
    {
      name: "pluto",
      script: "./agents/pluto/pluto.py",
      interpreter: "python3",
      env: { PORT: 8009, TRACK: "Retry" }
    },
    {
      name: "ceres",
      script: "./agents/ceres/ceres.py",
      interpreter: "python3",
      env: { PORT: 8010, TRACK: "Performance Metrics" }
    },
    {
      name: "pallas",
      script: "./agents/pallas/pallas.py",
      interpreter: "python3",
      env: { PORT: 8011, TRACK: "Sentiment" }
    },
    {
      name: "hygiea",
      script: "./agents/hygiea/hygiea.py",
      interpreter: "python3",
      env: { PORT: 8012, TRACK: "Bias Audit" }
    },
    {
      name: "vesta",
      script: "./agents/vesta/vesta.py",
      interpreter: "python3",
      env: { PORT: 8013, TRACK: "Token" }
    },
    {
      name: "eris",
      script: "./agents/eris/eris.py",
      interpreter: "python3",
      env: { PORT: 8014, TRACK: "Threat Detection" }
    },
    {
      name: "haumea",
      script: "./agents/haumea/haumea.py",
      interpreter: "python3",
      env: { PORT: 8015, TRACK: "Summarizer" }
    },
    {
      name: "makemake",
      script: "./agents/makemake/makemake.py",
      interpreter: "python3",
      env: { PORT: 8016, TRACK: "Retraining" }
    },
    {
      name: "sedna",
      script: "./agents/sedna/sedna.py",
      interpreter: "python3",
      env: { PORT: 8017, TRACK: "Compliance" }
    },
    {
      name: "quaoar",
      script: "./agents/quaoar/quaoar.py",
      interpreter: "python3",
      env: { PORT: 8018, TRACK: "Scaling" }
    },
    {
      name: "orcus",
      script: "./agents/orcus/orcus.py",
      interpreter: "python3",
      env: { PORT: 8019, TRACK: "QA" }
    },
    {
      name: "ixion",
      script: "./agents/ixion/ixion.py",
      interpreter: "python3",
      env: { PORT: 8020, TRACK: "DevOps Finalizer" }
    },
    {
      name: "varuna",
      script: "./agents/varuna/varuna.py",
      interpreter: "python3",
      env: { PORT: 8021, TRACK: "API Docs" }
    },
    {
      name: "triton",
      script: "./agents/triton/triton.py",
      interpreter: "python3",
      env: { PORT: 8022, TRACK: "Streaming" }
    },
    {
      name: "titania",
      script: "./agents/titania/titania.py",
      interpreter: "python3",
      env: { PORT: 8023, TRACK: "UI Health" }
    },
    {
      name: "oberon",
      script: "./agents/oberon/oberon.py",
      interpreter: "python3",
      env: { PORT: 8024, TRACK: "Audit Recorder" }
    },
    {
      name: "ariel",
      script: "./agents/ariel/ariel.py",
      interpreter: "python3",
      env: { PORT: 8025, TRACK: "Reporting" }
    }
  ]
};
# Aikre8tive Planetary Grid

This project launches 26 planetary AI agents as independent FastAPI microservices, managed via PM2, each running on its own port.

---

## 🌌 Agents & Ports

| Agent     | Port |
|-----------|------|
| Mercury   | 8001 |
| Venus     | 8002 |
| Earth     | 8003 |
| Mars      | 8004 |
| Jupiter   | 8005 |
| Saturn    | 8006 |
| Uranus    | 8007 |
| Neptune   | 8008 |
| Pluto     | 8009 |
| Ceres     | 8010 |
| Pallas    | 8011 |
| Hygiea    | 8012 |
| Vesta     | 8013 |
| Eris      | 8014 |
| Haumea    | 8015 |
| Makemake  | 8016 |
| Sedna     | 8017 |
| Quaoar    | 8018 |
| Orcus     | 8019 |
| Ixion     | 8020 |
| Varuna    | 8021 |
| Triton    | 8022 |
| Titania   | 8023 |
| Oberon    | 8024 |
| Ariel     | 8025 |
| Alfai     | 8026 |

---

## 🚀 How to Restart Agents

After changes or a reboot, run:

```bash
pm2 restart all


