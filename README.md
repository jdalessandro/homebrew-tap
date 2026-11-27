# homebrew-tap

[Homebrew](https://brew.sh) tap for [jdalessandro](https://github.com/jdalessandro)'s Mac apps.

## Casks

| Cask | What it is |
| --- | --- |
| [`claude-notch`](https://github.com/jdalessandro/claude-notch) | Dynamic-island style status for Claude Code sessions. Requires macOS 27.3 or later. |

## Install

```bash
brew install --cask jdalessandro/tap/claude-notch
```

This taps the repo and installs in one step.

## Upgrade and uninstall

```bash
brew upgrade --cask claude-notch
```

```bash
brew uninstall --cask claude-notch
```

Claude Notch adds hooks to `~/.claude/settings.json`. Run *Settings ▸ Integration ▸ Uninstall* in the app before
uninstalling, because brew removes the app but not those hooks.

Cask files in this repo are updated automatically when a new release is published in the app's repo.
