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
