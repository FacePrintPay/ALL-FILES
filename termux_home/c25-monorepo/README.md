# Constellation25 (compiled from recovered builds)

Each module in apps/ is a standalone package: entry page, assets, server entry (c25-serve.cjs), deploy configs, manifest.json and README. modules.json is the root manifest.

| module | entry | pages | routes | recovered versions | copy |
|---|---|---|---|---|---|
| agentik | generated | 6 | 0 | 3 | full |
| aikre8tive | generated | 8 | 12 | 13 | full |
| aimetaverse | generated | 3 | 10 | 4 | full |
| arcai | generated | 2 | 0 | 7 | full |
| constellation25 | recovered 2026-08-29 | 1 | 0 | 25 | partial |
| cygnus | generated | 10 | 0 | 1 | full |
| digital-dollar | generated | 0 | 0 | 0 | full |
| faceprintpay | recovered 2026-09-03 | 3 | 4 | 5 | full |
| kre8tive-space | generated | 1 | 0 | 1 | full |
| linked2 | generated | 1 | 0 | 1 | full |
| mybuyo-foodlion | recovered 2026-09-03 | 5 | 2 | 1 | full |
| parasol | generated | 2 | 0 | 1 | full |
| pathos | recovered 2026-08-21 | 6 | 6 | 3 | full |
| sovereign-gtp | generated | 11 | 0 | 3 | full |
| totalrecall | generated | 60 | 0 | 3 | full |
| videocourts | generated | 0 | 14 | 3 | full |
| yesquid | original | 3 | 0 | 5 | full |

## Entry types

- original: a real entry page existed
- recovered DATE: restored from the oldest-overwrite backup copy found on the device
- generated: scaffold built from facts in the code (description, pages, routes); replace with the real design

## Run

    npm start     # or ./serve.sh

## Deploy

    npx vercel --prod
    npx wrangler pages deploy . --project-name constellation25
    npx netlify deploy --prod --dir=.
    # GitHub Pages: add a remote and push; .github/workflows/pages.yml publishes
    # GoDaddy hosting: upload this folder by SFTP or file manager

## Integrity

MANIFEST.sha256 lists a SHA-256 for every file; ROOT.sha256 is the hash of that list. Verify: cd this folder and run sha256sum -c MANIFEST.sha256 --quiet
