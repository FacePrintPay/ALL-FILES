# VideoCourts™ - Enterprise Virtual Courtroom Platform

## Overview
VideoCourts™ is a sovereign, court-grade virtual courtroom platform providing secure video hearings, AI-assisted legal workflows, biometric identity verification (ID.me), and cryptographic e-filing. 

## Pilot Version
The current frontend pilot (`frontend/pilot-index.html`) is a fully interactive, single-page application demonstrating the complete user journey, including case lookup, bail bonding, mock trials, and courtroom interfaces.

## Tech Stack
- **Frontend**: HTML5, Tailwind CSS (via CDN for pilot), Vanilla JavaScript
- **Backend (Planned)**: Node.js (Express) or Python (FastAPI)
- **Database**: PostgreSQL (Relational data) + Redis (Caching/Sessions)
- **Video**: WebRTC (LiveKit or Agora) for interactive hearings; Video.js for broadcast playback
- **Authentication**: JWT + OAuth 2.0 (Google, ID.me integration)

## Getting Started (Frontend Pilot)
1. Clone the repository.
2. Open `frontend/pilot-index.html` in any modern web browser.
3. No build step is required for the pilot version.

## API Integration
See `docs/API_WIREFRAME.md` for the complete backend endpoint specifications required to make this frontend fully functional.

## Licensing
- Frontend Pilot: MIT License
- Core Backend & AI Logic: Proprietary Commercial License (Kre8tive Holdings)