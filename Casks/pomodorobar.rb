cask "pomodorobar" do
  version "1.1.0"
  sha256 "5fd8ffc2b26950150f743571fb160230f3e8d97a580b9110608660440c96b22e"

  url "https://github.com/valkens12/PomodoroBar/releases/download/v#{version}/PomodoroBar-#{version}.zip"
  name "PomodoroBar"
  desc "Quiet Pomodoro timer that lives in the menu bar"
  homepage "https://github.com/valkens12/PomodoroBar"
  depends_on macos: :tahoe

  app "PomodoroBar.app"

  zap trash: [
    "~/Library/Preferences/com.archiet4.pomodorobar.plist",
    "~/Library/Caches/com.archiet4.pomodorobar",
  ]

  caveats do
    <<~EOS
      PomodoroBar is ad-hoc signed and not notarized. On first launch macOS
      Gatekeeper may block it. If so, run:

          xattr -cr /Applications/PomodoroBar.app

      or right-click the app in /Applications -> Open -> Open Anyway.
    EOS
  end
end