# homebrew-notchbot

[Homebrew](https://brew.sh) tap for [Notchbot](https://github.com/jdalessandro/notchbot), an unofficial notch
companion for Claude Code. Not affiliated with or endorsed by Anthropic.

## Install

```bash
brew install --cask jdalessandro/notchbot/notchbot
```

This taps the repo and installs in one step. Requires macOS 27.3 or later.

## Upgrade and uninstall

```bash
brew upgrade --cask notchbot
```

```bash
brew uninstall --cask notchbot
```

Notchbot adds hooks to `~/.claude/settings.json`. Run *Settings ▸ Integration ▸ Uninstall* in the app before
uninstalling, because brew removes the app but not those hooks.

The cask is updated automatically when a new release is published in the app's repo.
