# valkens12/homebrew-tap

A Homebrew tap for [PomodoroBar](https://github.com/valkens12/PomodoroBar).

## Install

```sh
brew tap valkens12/tap
brew trust valkens12/tap
brew install --cask pomodorobar
```

`brew trust` is required once per tap on Homebrew 6+.

PomodoroBar is ad-hoc signed and **not** notarized, so on first launch macOS
Gatekeeper may block it. If it does, run:

```sh
xattr -cr /Applications/PomodoroBar.app
```

…or right-click the app in `/Applications` → *Open* → *Open Anyway*.

## Update

This tap is updated on each PomodoroBar release. To upgrade:

```sh
brew update
brew upgrade --cask pomodorobar
```