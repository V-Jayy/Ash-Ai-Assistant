# Kyra AI Assistant - Commands Reference

## 🎵 Spotify/Music Commands

### Playback Control
- **Play/Pause**: `play`, `pause`, `stop`, `spotify pause`
- **Next Track**: `next`, `skip`, `next track`, `next song`, `⏭️`
- **Previous Track**: `previous`, `prev`, `back`, `previous track`, `go back`, `⏮️`
  - *Note: First "previous" restarts current track, say it again quickly to go to actual previous track*
- **Restart Track**: `restart`, `restart track`, `replay`

### Volume Control
- **Set Volume**: `volume 50`, `vol 75%`
- **Volume Up**: `turn up`, `volume up`, `louder`, `increase volume`
- **Volume Down**: `turn down`, `volume down`, `quieter`, `decrease volume`

### Track Information
- **Current Track**: `what's playing`, `current track`, `now playing`

## 📁 File Operations

### File Search & Open
- **Search Files**: `find file config.py`, `search files *.txt`, `locate file readme`
- **Open File**: `open file.txt`, `launch script.py`, `run program.exe`
- **Open Directory**: `open folder Documents`, `explore directory`, `show folder Music`

### File Management
- **List Files**: `list files`, `show contents in Downloads`, `list files in .`
- **Create Note**: `create note Meeting notes`, `make file todo.txt`

## 🌐 Web & Applications

### Web Browsing
- **Open Website**: `open google.com`, `go to youtube.com`, `browse reddit.com`
- **Search Web**: `search for python tutorials`, `google machine learning`

### Application Control
- **Launch App**: `launch notepad`, `open calculator`, `run chrome`
- **Kill Process**: `kill chrome`, `terminate notepad`, `stop spotify`

## 💬 Conversation & Memory

### Memory Management
- **Clear Memory**: `clear memory`, `forget conversation`, `reset context`
- **Show Memory**: `show memory`, `conversation history`, `what do you remember`

### Conversational
- Just talk naturally! Kyra will respond conversationally when no specific command is detected.

## 🔧 System Commands

### Installation
- **Install System Command**: `install cmd` - Creates global `Kyra` command
- **Uninstall**: `uninstall cmd` - Removes global command

### Configuration
- **Show Settings**: Settings are displayed in the welcome panel
- **Edit Config**: Modify `config.json` to customize all behavior and settings

## 📝 Command Prefixes

Use these prefixes to ensure command recognition:
- `/` - Forward slash prefix: `/play music`
- `!` - Exclamation prefix: `!skip song`
- `.` - Dot prefix: `.open file`

## 🎯 Tips for Better Recognition

1. **Be Specific**: Use clear, direct commands
2. **Use Prefixes**: When in doubt, use `/`, `!`, or `.` prefixes
3. **Natural Language**: "Skip the song" works better than just "skip"
4. **Context Matters**: Kyra remembers recent conversation context
5. **File Paths**: Use relative paths from current directory

## 🔄 Mode-Specific Features

### Console Mode
- Rich colored output with panels
- Real-time command feedback
- Conversation context display

### Voice Mode
- Natural speech recognition
- Female voice responses (Microsoft Zira)
- Hands-free operation

### CLI Mode
- Quick command execution
- Scriptable interface
- Minimal output

## 🚀 Advanced Usage

### Chaining Commands
While not directly supported, you can use conversational context:
```
You: "Open my music folder"
Kyra: [Opens folder]
You: "Now play something from there"
```

### Smart Spotify Control
- **Double-Back Logic**: Say "previous" twice quickly to go to actual previous track
- **Volume Intelligence**: Volume commands work with system media keys
- **Context Awareness**: "Skip this song" vs "play next song"

### File Intelligence
- **Smart Search**: Searches current directory and subdirectories
- **Extension Matching**: Finds files by partial name or extension
- **Recent Files**: Kyra can remember recently accessed files

## 🛠️ Troubleshooting

### Common Issues
1. **Command Not Recognized**: Try using a prefix (`/`, `!`, `.`)
2. **Spotify Not Working**: Ensure Spotify is running and active
3. **File Not Found**: Check file path and spelling
4. **Voice Issues**: Check microphone permissions and settings

### Getting Help
- Ask Kyra: "What can you do?" or "Help me with commands"
- Check logs in the console for detailed error information
- Modify `kyra_config.json` for custom settings

---

*Last updated: v2.0 - Enhanced with local Spotify control, improved file operations, and conversational AI* 