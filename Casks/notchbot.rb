# Template for the tap: Casks/notchbot.rb (the placeholders in quotes are filled in by release.yml).
cask "notchbot" do
  version "0.2.0"
  sha256 "8f5097b90a4ce4ce22a60e87e1b98decca1d9d8dba82fc8134f6e371c9bd162a"

  url "https://github.com/jdalessandro/notchbot/releases/download/v#{version}/Notchbot-#{version}.dmg"
  name "NotchBot"
  desc "Unofficial notch companion for Claude Code: agent status, approvals and plan limits"
  homepage "https://github.com/jdalessandro/notchbot"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Notchbot.app"

  # Hooks live in ~/.claude/settings.json; remove them first via Settings > Integration > Uninstall.
  zap trash: [
    "~/Library/Preferences/dev.notchbot.app.plist",
    "~/Library/Application Support/Notchbot",
    "~/Library/Caches/dev.notchbot.app",
  ]
end
