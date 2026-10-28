#!/data/data/com.termux/files/usr/bin/bash
echo "🌟 ALL-FILES"
curl -s http://localhost:3000/api/proxy > /dev/null && echo "✅ PATHOS"
echo "[ALL-FILES] $(date)" >> "/data/data/com.termux/files/home/sovereign_gtp/logs/ALL-FILES.log"

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=run.sh
