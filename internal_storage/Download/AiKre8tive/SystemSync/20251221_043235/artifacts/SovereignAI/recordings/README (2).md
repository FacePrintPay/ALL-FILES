# 📱 Android Screen Recorder

Records your entire Android screen including ChatGPT conversations.

## Quick Start

### Method 1: ADB Recording (Best Quality)
```bash
cd ~/SovereignAI/recordings
./recorder.sh
```

### Method 2: Quick Record (60 seconds)
```bash
cd ~/SovereignAI/recordings
./quick_record.sh
```

### Method 3: Native Screen Recorder
1. Swipe down from top → Quick Settings
2. Tap "Screen Record"
3. Record your ChatGPT conversation
4. Stop from notification
5. Move video: `cp ~/storage/dcim/*.mp4 ~/SovereignAI/recordings/videos/`

## Requirements

- USB Debugging enabled (Settings → Developer Options)
- ADB installed (automatic via script)
- Android 5.0+ (for screen recording)

## Videos Location

All recordings saved to:
`~/SovereignAI/recordings/videos/`

## Built By

Cygel White (SovereignGTP)
AIMetaverse - First Mover
