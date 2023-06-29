# Helpfull Stuff

- 1 VSCode

## 1 VSCode

- 1.1 Copilot Autocomplete in Markdown files

### 1.1 Copilot Autocomplete in Markdown files

Open the file keybindings.json in Visual Studio Code. This can be done by pressing `Ctrl + Shift + P`, and typing `Open Keyboard Shortcuts (JSON)`.
In `keybindings.json`, add the following.

```json
[
  {
    "key": "tab",
    "command": "editor.action.inlineSuggest.commit",
    "when": "textInputFocus && inlineSuggestionHasIndentationLessThanTabSize && inlineSuggestionVisible && !editorTabMovesFocus"     
  }
]
```

## Tools

### General

- [`Notepad ++`](https://notepad-plus-plus.org/downloads/)
- [`Power Toys`](https://github.com/microsoft/PowerToys#installing-and-running-microsoft-powertoys)
- [`Windows Terminal`](https://github.com/microsoft/terminal#installing-and-running-windows-terminal)
- [`MinGW - many unix cli tools`](https://www.msys2.org/)
- [`7z / 7zip`](https://www.7-zip.org/)
- [`vscode`](https://code.visualstudio.com/download)
- [`Kleopatra/Gpg4win`](https://www.gpg4win.de/get-gpg4win-de.html)
- 

### Browser (chrome-based)

- [`Buster`](https://chrome.google.com/webstore/detail/buster-captcha-solver-for/mpbjkejclgfgadiemmefgebjfooflfhl)
- [`Dark Reader`](https://chrome.google.com/webstore/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh)
- [`GitHub Gloc`](https://chrome.google.com/webstore/detail/github-gloc/kaodcnpebhdbpaeeemkiobcokcnegdki)
- [`Grepper`](https://chrome.google.com/webstore/detail/grepper/amaaokahonnfjjemodnpmeenfpnnbkco)
- [`uBlock`](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)

### Powershell

- [`posh-git`](https://github.com/dahlbyk/posh-git#installation)
- [`npm-completion`](https://github.com/PowerShell-Completion/npm-completion#%EF%B8%8F-installation)
