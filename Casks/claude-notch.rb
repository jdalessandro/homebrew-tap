# Template for the tap: Casks/claude-notch.rb (placeholders are filled in by release-cask.yml).
cask "claude-notch" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/jdalessandro/claude-notch/releases/download/v#{version}/ClaudeNotch-#{version}.dmg"
  name "Claude Notch"
  desc "Dynamic-island style status for Claude Code sessions"
  homepage "https://github.com/jdalessandro/claude-notch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "ClaudeNotch.app"

  # Hooks live in ~/.claude/settings.json; remove them first via Settings > Integration > Uninstall.
  zap trash: [
    "~/Library/Preferences/dev.claudenotch.app.plist",
    "~/Library/Application Support/ClaudeNotch",
    "~/Library/Caches/dev.claudenotch.app",
  ]
end
