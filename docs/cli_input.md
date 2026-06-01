# CLI Input Editing: Ctrl & Alt Key Combinations

Most Unix-like shells (bash, zsh) use **readline** key bindings for editing the command line.

---

## Ctrl + Key — Core Shortcuts

| Shortcut | Action |
|---|---|
| `Ctrl + A` | Move cursor to **beginning** of line |
| `Ctrl + E` | Move cursor to **end** of line |
| `Ctrl + B` | Move cursor **back** one character |
| `Ctrl + F` | Move cursor **forward** one character |
| `Ctrl + H` | Delete character **before** cursor (like Backspace) |
| `Ctrl + D` | Delete character **under** cursor (like Delete) |
| `Ctrl + K` | **Kill** (cut) from cursor to end of line |
| `Ctrl + U` | Kill from cursor to **beginning** of line |
| `Ctrl + W` | Kill the **word** before the cursor |
| `Ctrl + Y` | **Yank** (paste) last killed text |
| `Ctrl + T` | **Transpose** (swap) two characters around cursor |
| `Ctrl + L` | **Clear** the screen (keeps current line) |
| `Ctrl + C` | **Cancel** current input / interrupt process |
| `Ctrl + Z` | **Suspend** current process to background |
| `Ctrl + R` | **Reverse search** through command history |
| `Ctrl + G` | **Abort** current search / editing |
| `Ctrl + P` | Previous command in history (like ↑) |
| `Ctrl + N` | Next command in history (like ↓) |

---

## Alt + Key — Word-Level Shortcuts

> **Note:** On macOS, Alt is the `Option` key. In some terminals (e.g. iTerm2, GNOME Terminal), you may need to enable "Use Option as Meta key" in preferences.

| Shortcut | Action |
|---|---|
| `Alt + B` | Move cursor **back** one word |
| `Alt + F` | Move cursor **forward** one word |
| `Alt + D` | Delete (kill) **word after** cursor |
| `Alt + Backspace` | Delete **word before** cursor |
| `Alt + T` | **Transpose** (swap) two words around cursor |
| `Alt + U` | **Uppercase** the word from cursor forward |
| `Alt + L` | **Lowercase** the word from cursor forward |
| `Alt + C` | **Capitalize** the word from cursor forward |
| `Alt + .` | Insert the **last argument** of the previous command |
| `Alt + R` | **Revert** all changes to the current line (restore from history) |

---

## Quick Examples

```bash
# You typed a long command and want to fix the beginning:
# Press Ctrl+A to jump to the start, edit, then Ctrl+E to jump back to end.

# Delete a whole word you just typed:
# Press Alt+Backspace.

# Reuse the last argument (e.g. a filename) from the previous command:
# Press Alt+.

# Search for a previously typed command:
# Press Ctrl+R, then start typing part of the command.
```

---

## Tips

- **Kill ring:** `Ctrl+K`, `Ctrl+U`, and `Ctrl+W` all send text to a kill ring buffer. `Ctrl+Y` pastes the most recent entry; pressing `Alt+Y` afterwards cycles through older entries.
- **Vi mode:** If you prefer vi-style editing, add `set -o vi` to your `.bashrc` / `.zshrc`. The shortcuts above apply to the default **emacs mode**.
- **Check your bindings:** Run `bind -P` (bash) or `bindkey` (zsh) to list all active key bindings.
