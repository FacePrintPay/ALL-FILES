# 🎙️ RECORN - Conversation Recorder

**Version 1.0.0** - Record & Analyze ChatGPT Conversations

## Features

- 🔴 **Tap to Record** - One-button screen recording
- 📸 **Auto-Capture** - Takes screenshots every 3 seconds
- 🔍 **Analysis** - Automatic conversation analysis
- 📊 **Reports** - Generates detailed session reports
- 🏠 **Widget** - Launch from home screen

## Quick Start

### Method 1: Interactive Menu
```bash
cd ~/SovereignAI/recorn
./recorn.sh
```

### Method 2: Quick Record
```bash
cd ~/SovereignAI/recorn
./record_widget.sh
```

### Method 3: Home Screen Widget
1. Install **Termux:Widget** from F-Droid
2. Add widget to home screen
3. Tap "RECORN Record" to start recording

## How It Works

1. **Record** - Tap button or run script
2. **Capture** - Screenshots taken automatically
3. **Analyze** - Python script processes screenshots
4. **Report** - View session analysis and timeline

## Directory Structure

```
~/SovereignAI/recorn/
├── recordings/       # Raw recording data
├── screenshots/      # Captured screenshots
│   └── session_*/   # Individual session folders
├── analysis/         # Analysis reports (JSON)
├── logs/             # System logs
├── recorn.sh         # Main menu
├── capture.sh        # Interactive capture
├── record_widget.sh  # Quick record widget
└── analyzer.py       # Screenshot analyzer
```

## Recording Tips

- **Good Lighting** - Ensure screen is readable
- **Scroll Slowly** - Give time for screenshots
- **3-Second Intervals** - Default capture rate
- **Manual Mode** - Press Enter for each screenshot
- **Auto Mode** - Type 'auto' for continuous capture

## Analysis

After recording, the analyzer:
- Counts total screenshots
- Calculates session duration
- Estimates message count
- Generates timeline
- Creates JSON + text reports

## Privacy Note

All recordings stay on your device. No data uploaded.

## Built By

Cygel White (SovereignGTP)  
AIMetaverse - First Mover

---

**The Witness System** - Everything documented, timestamped, provable.
