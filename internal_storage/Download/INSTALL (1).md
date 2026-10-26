# Gateway Fix — Install Instructions

These files make `gateway/main.js` in Constillation25/constellation25 actually
runnable (previously it required 4 files that didn't exist).

## Where each file goes (relative to repo root)
- core/bioauth.js
- core/ledger.js
- retail/pos-engine.js
- online/checkout-engine.js
- test_gateway.js  (place inside the gateway/ folder, next to main.js)

## Install
```bash
cd ~/github-repos/constellation25/gateway   # adjust to your actual local path
# copy the 4 files + test into place as listed above
node test_gateway.js
```

You should see two successful receipts, a ledger chain check
(`valid: true`), and a correctly rejected bad-auth attempt.

## Push it
```bash
git add core/bioauth.js core/ledger.js retail/pos-engine.js online/checkout-engine.js test_gateway.js
git commit -m "Implement working BioAuth, Ledger, retail/online engines for gateway"
git push origin main
```

## What's still needed for real money to move
This authorizes and records transactions locally (`AUTHORIZED_LOCAL`).
To actually charge cards/accounts, integrate a licensed payment processor
(Stripe, Square, etc.) inside pos-engine.js / checkout-engine.js using
their SDK and your merchant credentials.
