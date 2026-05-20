# Solana Circuit Board Screensaver

A visually striking screensaver featuring the Solana "S" logo rendered as three thick, beveled glass slabs with glowing circuit-board internals, floating over an animated PCB-trace background with traveling data pulses.

Built entirely with HTML5 Canvas - no dependencies, no build step, just open and go.

![Solana Screensaver](https://img.shields.io/badge/Solana-Screensaver-9945FF?style=for-the-badge&logo=solana)

## Features

- **Glass slab Solana S logo** with layered translucent fills, beveled edges, chrome highlights, and specular flares
- **Circuit-board internals** visible through the glass - traces, IC chips, and pulsing junction nodes
- **Animated PCB background** with L/Z-shaped traces and glowing data pulses traveling along them
- **Zero-G floating motion** using multi-frequency sine waves for smooth, never-repeating drift
- **Multi-monitor support** - auto-detects all displays and launches fullscreen on each
- **Press ESC to exit** all windows simultaneously via BroadcastChannel

## Quick Start

### Option 1: Just open it
Double-click `screensaver.html` in any browser. Press `F11` for fullscreen. Press `ESC` to exit.

### Option 2: Multi-monitor launcher (Windows)
Double-click `launch-screensaver.bat` - it detects all monitors and opens a fullscreen window on each using Edge or Chrome.

Press `ESC` in any window to close them all.

## Files

| File | Purpose |
|------|---------|
| `screensaver.html` | The screensaver (self-contained, zero dependencies) |
| `launch-screensaver.bat` | Windows launcher (double-click to run) |
| `_launch.ps1` | PowerShell helper for multi-monitor detection |

## Requirements

- Any modern browser (Edge, Chrome, Firefox, Safari)
- Multi-monitor launcher requires Windows + Edge or Chrome

## License

MIT - do whatever you want with it. Have fun.
