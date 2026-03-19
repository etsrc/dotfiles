# tmux

### Session Management
| Action | Command |
|--------|---------|
| Exit/kill single session | `exit` |
| Switch session | `Ctrl+b` → `s` |
| Kill session | `Ctrl+b` → `x` |
| Detach session | `Ctrl+b` → `d` |

### Pane Management
| Action | Command |
|--------|---------|
| Split vertical | `Ctrl+b` → `%` |
| Split horizontal | `Ctrl+b` → `"` |

### Window Management
| Action | Command |
|--------|---------|
| Create new window | `Ctrl+b` → `c` |
| Rename current window | `Ctrl+b` → `,` |
| Kill current window | `Ctrl+b` → `&` |
| Next window | `Ctrl+b` → `n` |
| Previous window | `Ctrl+b` → `p` |
| Jump to window 0-9 | `Ctrl+b` → `0-9` |
| List all windows | `Ctrl+b` → `w` |
| Toggle to last window | `Ctrl+b` → `l` |
| Find window by name | `Ctrl+b` → `f` |

### Tmux Resurrect Plugin
| Action | Command |
|--------|---------|
| Save environment | `Prefix` → `Ctrl+s` |
| Restore environment | `Prefix` → `Ctrl+r` |

### Init

```shell
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux has-session -t main 2>/dev/null
    if [ $? != 0 ]; then
        tmux new-session -d -s main -n 'main'
        tmux split-window -h -t main:0
        tmux split-window -v -t main:0.1
        tmux resize-pane -t main:0.0 -x 67%
        tmux select-pane -t main:0.0
    fi
    # Attach to the session
    exec tmux attach-session -t main
fi
```

