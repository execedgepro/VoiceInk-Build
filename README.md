<div align="center">
  <img src="VoiceInk/Assets.xcassets/AppIcon.appiconset/256-mac.png" width="180" height="180" />
  <h1>EliteWrite</h1>
  <p>Voice to text for macOS — built for knowledge workers who produce at an elite level</p>

  [![License](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
  ![Platform](https://img.shields.io/badge/platform-macOS%2014.0%2B-brightgreen)
  [![GitHub release (latest by date)](https://img.shields.io/github/v/release/execedgepro/VoiceInk-Build)](https://github.com/execedgepro/VoiceInk-Build/releases)
  ![GitHub stars](https://img.shields.io/github/stars/execedgepro/VoiceInk-Build?style=social)
  <p>
    <a href="https://execedgepro.com/elitewrite">Website</a> •
    <a href="https://execedgepro.com">ExecEdgePro</a>
  </p>

  <a href="https://execedgepro.com/elitewrite">
    <img src="https://img.shields.io/badge/Get%20EliteWrite-Early%20Access-blue?style=for-the-badge&logo=apple" alt="Get EliteWrite" width="250"/>
  </a>
</div>

---

EliteWrite is a native macOS application that transcribes your voice to text almost instantly — 100% on-device, nothing sent to the internet. Built for executives, knowledge workers, and professionals who need to produce at an elite level without friction.

*Read the system. Use the tool. Live the transformation.*

EliteWrite is the voice layer of the **Elite Focus Operating System (EFOS)** — a productivity framework for knowledge workers. Learn more at [execedgepro.com](https://execedgepro.com).

## Features

- 🎙️ **Accurate Transcription**: Local AI models that transcribe your voice to text with 99% accuracy, almost instantly — no internet required
- 🔒 **Privacy First**: 100% offline processing ensures your data never leaves your device
- ⚡ **Power Mode**: Intelligent app detection automatically applies your perfect pre-configured settings based on the app or URL you're on
- 🧠 **Context Aware**: Smart AI that understands your screen content and adapts to the context
- 🎯 **Global Shortcuts**: Configurable keyboard shortcuts for quick recording and push-to-talk functionality
- 📝 **Personal Dictionary**: Train the AI to understand your unique terminology with custom words, industry terms, and smart text replacements
- 🔄 **Smart Modes**: Instantly switch between AI-powered modes optimised for different writing styles and contexts
- 🏆 **Elite Focus Sessions**: Track your focus blocks with a real-time Focus Score — TIME, PAUSES, and OUTPUT measured in every session
- 📊 **Session History**: Full transcript history with word count, WPM, and Focus Score for every session

## Get EliteWrite

EliteWrite is currently in **early access**. Download from [execedgepro.com/elitewrite](https://execedgepro.com/elitewrite).

Early access users receive EliteWrite free, forever — no action required when paid tiers launch.

### Build from Source

As an open-source project (GPL v3.0), you can build EliteWrite yourself:

1. Clone this repository
2. Install dependencies — `whisper.xcframework` required (see [BUILDING.md](BUILDING.md))
3. Run `make local` to build and install to `/Applications`

After every build, reset Accessibility and Input Monitoring permissions in System Settings → Privacy & Security.

## Requirements

- macOS Sonoma (14) or later
- Optimised for macOS Sequoia (15)
- Apple Silicon (M1) tested and confirmed
- Intel Mac — testing in progress

## Documentation

- [Building from Source](BUILDING.md) — Detailed instructions for building the project
- [Contributing Guidelines](CONTRIBUTING.md) — How to contribute
- [Code of Conduct](CODE_OF_CONDUCT.md) — Community standards

## Contributing

This repository is the **build source** for EliteWrite by ExecEdgePro. Pull requests are not accepted at this time.

You can contribute by:
- Reporting bugs via [issues](https://github.com/execedgepro/VoiceInk-Build/issues)
- Suggesting features or enhancements
- Improving documentation via issues

## License

This project is licensed under the GNU General Public License v3.0 — see the [LICENSE](LICENSE) file for details.

EliteWrite is built on [VoiceInk](https://github.com/Beingpax/VoiceInk) by Pax, used under GPL v3.0. Full source attribution is maintained in accordance with the license.

## Support

For questions or issues:
1. Check existing issues in this repository
2. Create a new issue with your environment details and problem description
3. Visit [execedgepro.com/elitewrite](https://execedgepro.com/elitewrite) for product information and support

## Acknowledgments

### Original Project
- [VoiceInk](https://github.com/Beingpax/VoiceInk) by Pax — the open-source foundation this project is built on (GPL v3.0)

### Core Technology
- [whisper.cpp](https://github.com/ggerganov/whisper.cpp) — High-performance inference of OpenAI's Whisper model
- [FluidAudio](https://github.com/FluidInference/FluidAudio) — Used for Parakeet model implementation

### Essential Dependencies
- [Sparkle](https://github.com/sparkle-project/Sparkle) — App update framework
- [KeyboardShortcuts](https://github.com/sindresorhus/KeyboardShortcuts) — User-customisable keyboard shortcuts
- [LaunchAtLogin](https://github.com/sindresorhus/LaunchAtLogin) — Launch at login functionality
- [MediaRemoteAdapter](https://github.com/ejbills/mediaremote-adapter) — Media playback control during recording
- [Zip](https://github.com/marmelroy/Zip) — File compression and decompression utilities
- [SelectedTextKit](https://github.com/tisfeng/SelectedTextKit) — Selected text retrieval for macOS
- [Swift Atomics](https://github.com/apple/swift-atomics) — Low-level atomic operations for thread-safe concurrent programming

---

Built by [ExecEdgePro](https://execedgepro.com) · *Mastering Elite Focus At Work*
