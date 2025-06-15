# 🤖 Ash AI Assistant

**A powerful, privacy-focused AI assistant that runs entirely on your local machine - no API keys required!**

Ash is a conversational AI assistant that can control your computer, manage files, play music, browse the web, and much more. It uses local LLM (Large Language Model) technology via Ollama, ensuring your conversations stay private and secure.

## ✨ Key Features

### 🔒 **100% Local & Private**
- No API keys required - everything runs on your machine
- Your conversations never leave your computer
- Works offline once set up

### 🎯 **Smart Conversational Interface**
- Natural conversation flow - talk to Ash like a human
- Automatically decides when to use tools vs. have conversations
- Context-aware responses and actions

### 🎵 **Music Control**
- Control Spotify, YouTube Music, or any media player
- Smart "previous track" logic (restart vs. go back)
- Volume control, play/pause, skip tracks
- Works with keyboard media keys - no Spotify API needed

### 🌐 **Web & App Control**
- Open websites, launch applications
- Search and manage files
- Create notes and documents
- Kill processes and manage system

### 🎤 **Voice Activation**
- Wake word activation: "Hey Ash" (customizable)
- Single-phrase commands: "Hey Ash open Google"
- Text-to-speech responses
- Offline voice recognition with Vosk

### 🛠️ **Extensible Architecture**
- Easy to add new commands and integrations
- Modular design with clean separation
- Comprehensive logging and debugging

## 🚀 Quick Start

### Prerequisites

1. **Install Ollama** (Local LLM):
   ```bash
   # Download from https://ollama.ai/
   # Or use package manager:
   winget install Ollama.Ollama  # Windows
   brew install ollama           # macOS
   ```

2. **Install a Language Model**:
   ```bash
   ollama pull llama2           # Recommended for most users
   # or
   ollama pull mistral          # Alternative option
   # or
   ollama pull codellama        # For coding tasks
   ```

3. **Start Ollama**:
   ```bash
   ollama serve
   ```

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/ash-ai-assistant.git
   cd ash-ai-assistant
   ```

2. **Install Python dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

3. **Download Voice Model** (for voice mode):
   ```bash
   # The Vosk model will be downloaded automatically on first run
   # Or manually download from: https://alphacephei.com/vosk/models
   ```

4. **Configure Ash** (optional):
   ```bash
   # Edit config.json to customize wake word, voice settings, etc.
   ```

### Running Ash

**Text Mode** (type to chat):
```bash
python -m kyra.assistant
# or use the batch file:
start_kyra_text.bat
```

**Voice Mode** (speak to interact):
```bash
python -m kyra.assistant --voice
# or use the batch file:
start_kyra_voice.bat
```

## 💬 How to Use

### Text Mode
Simply type your requests:
```
You: Hey, can you open YouTube?
Ash: Opening YouTube
```

### Voice Mode
Use the wake word followed by your command:
```
You: "Hey Ash open Google"
Ash: "Opening Google"

You: "Hey Ash play music"
Ash: "Toggling play/pause"

You: "Hey Ash what's the weather like?"
Ash: "I can help you open a weather website. Would you like me to open weather.com?"
```

## 🎛️ Available Commands

### 🌐 Web & Applications
- `open [website]` - Open websites (Google, YouTube, Facebook, etc.)
- `launch [app]` - Launch applications (Chrome, Notepad, Calculator, etc.)
- `kill [process]` - Terminate running processes

### 🎵 Music Control
- `play music` / `pause music` - Control playback
- `next song` / `previous song` - Skip tracks
- `restart song` - Restart current track
- `volume up` / `volume down` - Adjust volume

### 📁 File Management
- `open file [name]` - Find and open files
- `search files [query]` - Search for files
- `list files` - Show files in current directory
- `create note [content]` - Create text files
- `open explorer` - Open file explorer

### 💻 System Control
- `help` - Show available commands
- `exit` / `quit` - Close Ash

### 🗣️ Conversation
- Ask questions, have conversations
- Request explanations or help
- Get suggestions for tasks

*For a complete list with examples, see [COMMANDS.md](COMMANDS.md)*

## ⚙️ Configuration

Ash uses a single `config.json` file for all settings:

```json
{
  "wake_word": "Hey Ash",
  "wake_word_aliases": ["ash", "hey ash"],
  "model_name": "llama2",
  "voice_enabled": true,
  "tts_enabled": true,
  "conversation_mode": true,
  "debug": false
}
```

### Key Settings:
- **wake_word**: Change the activation phrase
- **model_name**: Switch between Ollama models
- **voice_enabled**: Enable/disable voice recognition
- **tts_enabled**: Enable/disable text-to-speech
- **conversation_mode**: Allow natural conversations vs. command-only mode

## 🏗️ Architecture

```
ash-ai-assistant/
├── kyra/                    # Modern AI system (legacy folder name)
│   ├── assistant.py         # Main assistant interface
│   ├── dispatcher.py        # Command routing & LLM integration
│   ├── local_spotify.py     # Local music control
│   └── integrations/        # External service integrations
├── core/                    # Core functionality
│   ├── tools.py            # System tools & commands
│   ├── config.py           # Configuration management
│   └── intent_router.py    # LLM-based intent classification
├── app/                     # Legacy system (backward compatibility)
├── tests/                   # Test suite
├── config.json             # Main configuration file
└── requirements.txt        # Python dependencies
```

## 📊 Visual Architecture Overview

### Tool Router System
![Tool Router](tool%20router.png)

The tool router is the central hub that processes your commands and decides which tools to use. When you say "Hey Ash, open Google", the router analyzes your intent and routes it to the appropriate web browser tool.

### Local LLM Integration
![Local LLM](local%20llm.png)

Ash uses Ollama to run large language models locally on your machine. This diagram shows how your conversations are processed entirely offline, ensuring complete privacy while providing intelligent responses.

### Entity Mapper
![Entity Mapper](entity%20mapper.png)

The entity mapper identifies and categorizes different parts of your commands. It recognizes websites, applications, file names, and other entities to ensure accurate command execution.

## 🔧 Advanced Usage

### Custom Wake Word
Edit `config.json`:
```json
{
  "wake_word": "Hey Jarvis",
  "wake_word_aliases": ["jarvis", "hey jarvis"]
}
```

### Different LLM Models
```bash
# Install different models
ollama pull mistral
ollama pull codellama
ollama pull neural-chat

# Update config.json
{
  "model_name": "mistral"
}
```

### System Installation
For system-wide access, use the installer scripts:
```bash
install_to_system.bat    # Install to Program Files
install_to_cmd.bat       # Add to PATH for command line access
```

## 🐛 Troubleshooting

### Common Issues

**"Could not connect to local LLM"**
- Ensure Ollama is running: `ollama serve`
- Check if model is installed: `ollama list`
- Verify model name in config.json matches installed model

**Voice recognition not working**
- Check microphone permissions
- Install PyAudio: `pip install pyaudio`
- Verify Vosk model downloaded correctly

**Music control not working**
- Ensure Spotify/media player is running
- Install keyboard module: `pip install keyboard`
- Run as administrator on Windows if needed

**File operations failing**
- Check file permissions
- Verify paths in config.json
- Run with appropriate user privileges

### Debug Mode
Enable detailed logging:
```json
{
  "debug": true,
  "log_level": "DEBUG"
}
```

## 🤝 Contributing

We welcome contributions! Here's how to get started:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes and test thoroughly
4. Submit a pull request with a clear description

### Development Setup
```bash
# Install development dependencies
pip install -r requirements.txt
pip install pytest pytest-asyncio coverage

# Run tests
pytest tests/

# Run with coverage
coverage run -m pytest tests/
coverage report
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Ollama** - For providing excellent local LLM infrastructure
- **Vosk** - For offline speech recognition
- **OpenAI** - For pioneering conversational AI concepts
- **Spotify** - For music streaming integration concepts

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/yourusername/ash-ai-assistant/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/ash-ai-assistant/discussions)
- **Documentation**: [Wiki](https://github.com/yourusername/ash-ai-assistant/wiki)

---

**Made with ❤️ for privacy-conscious users who want powerful AI without compromising their data.**
