# Hammerspoon Homebrew tap

[Homebrew](https://brew.sh) casks for [Hammerspoon 2](https://github.com/Hammerspoon/Hammerspoon2).

```bash
brew install --cask hammerspoon/tap/hammerspoon2
```

Hammerspoon 2 needs macOS 27 or later. It updates itself, betas included, so `brew upgrade` leaves it alone unless you pass `--greedy`.

The original, Lua-based Hammerspoon is in Homebrew's own casks: `brew install --cask hammerspoon`.

## Maintenance

Hammerspoon 2's release script (`scripts/release/release.sh execute`) commits the new `version` and `sha256` here when it publishes a release, so the cask shouldn't need editing by hand.
