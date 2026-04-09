# nvim-config-c

Neovim configuration based on LazyVim. for **Go**.
> idle-save (maybe 2718ms)

##  Installation (HTTPS)

> [!!] **Warning:** This will delete your existing Neovim config (`~/.config/nvim`). Back it up first if needed.

**What gets installed:**
- `git` — clone the config
- `neovim` — the editor
- `nodejs-lts` — required for LSP/plugins
- `ripgrep` & `fd` — for fuzzy finding
- `golang` — Go language support

**Run step by step:**

```bash
pkg install git neovim nodejs-lts ripgrep fd golang -y
```

```bash
rm -rf ~/.config/nvim
```

```bash
git clone https://github.com/riyadhossainczar/nvim-config-c ~/.config/nvim
```

```bash
nvim
```

> Plugins will auto-install on first launch. Wait for it to finish.
