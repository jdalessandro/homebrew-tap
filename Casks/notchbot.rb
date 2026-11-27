# Template for the tap: Casks/notchbot.rb (the placeholders in quotes are filled in by release.yml).
cask "notchbot" do
  version "0.1.0"
  sha256 "d9a529fcb6541c7ea6540d4c360536409317e1fa1746d10790ddeb5a88f55ab7"

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
