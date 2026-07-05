# Homebrew Cask template for PomodoroBar.
#
# This file lives in the source repo with placeholder version and sha256
# fields below. The release workflow (.github/workflows/release.yml) renders
# the real values per published tag, attaches the filled cask to the GitHub
# Release, and pushes it straight to the valkens12/homebrew-tap repo so users
# can:
#
#   brew tap valkens12/tap
#   brew install --cask pomodorobar
#
# The app is ad-hoc signed and NOT notarized, so first launch needs a one-time
# Gatekeeper bypass (see caveats below).

cask "pomodorobar" do
  version "1.4.1"
  sha256 "9d73a3f6219983f1a1192e519bee04a3c921a3c86190be1e2fc69e28e97f69ac"

  url "https://github.com/valkens12/PomodoroBar/releases/download/v#{version}/PomodoroBar-#{version}.zip"
  name "PomodoroBar"
  desc "Quiet Pomodoro timer that lives in the menu bar"
  homepage "https://github.com/valkens12/PomodoroBar"
  depends_on macos: :sonoma

  app "PomodoroBar.app"

  zap trash: [
    "~/Library/Preferences/com.archiet4.pomodorobar.plist",
    "~/Library/Caches/com.archiet4.pomodorobar",
  ]

  caveats do
    <<~EOS
      PomodoroBar is ad-hoc signed and not notarized. On first launch macOS
      Gatekeeper will block it. This is a one-time step -- run:

          xattr -cr /Applications/PomodoroBar.app

      or right-click the app in /Applications -> Open -> Open Anyway.
    EOS
  end
end