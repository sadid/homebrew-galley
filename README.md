# homebrew-galley

A [Homebrew](https://brew.sh) tap for **[Galley](https://github.com/munepi/Galley)** — a
lightweight, minimalist PDF previewer for macOS built for TeX/LaTeX authors, with SyncTeX
forward/inverse search, auto-reload, and character/measurement inspection.

This tap packages the official notarized `GalleyPDF.dmg` releases as a Homebrew **cask** so
you can install and keep Galley up to date with `brew`.

## Install

```sh
brew tap sadid/galley
brew install --cask galley
```

Or in one line, without tapping first:

```sh
brew install --cask sadid/galley/galley
```

## Update

```sh
brew update            # refresh tap + formula/cask definitions
brew upgrade --cask galley
```

The cask definition in this tap is bumped automatically whenever Munehiro Yamamoto publishes
a new [Galley release](https://github.com/munepi/Galley/releases) (see
[`update-cask.yml`](.github/workflows/update-cask.yml)), so `brew upgrade` will pull the
latest version once it lands here.

> **Note on auto-updates:** GalleyPDF also bundles [Sparkle](https://sparkle-project.org/),
> its own in-app updater. If you want Homebrew to be the single source of truth, you can let
> `brew upgrade` manage updates and decline Sparkle's prompts (or vice-versa) — both pull the
> same notarized releases from GitHub.

## Uninstall

```sh
brew uninstall --cask galley         # remove the app
brew uninstall --zap --cask galley   # also remove caches/preferences
brew untap sadid/galley
```

## What this installs

- `GalleyPDF.app` into `/Applications` (via the signed, notarized `GalleyPDF.pkg`)
- Universal binary — Apple Silicon + Intel
- Requires macOS 11 (Big Sur) or later

## Maintenance

- [`Casks/galley.rb`](Casks/galley.rb) — the cask definition.
- Version bumps are automated daily. To force a check now, run the
  **"Update Galley cask"** workflow from the repo's **Actions** tab.
- Every push is validated with `brew style` + `brew audit` via
  [`tests.yml`](.github/workflows/tests.yml).

## Credits

Galley is created and maintained by [Munehiro Yamamoto (@munepi)](https://github.com/munepi).
This repository only provides Homebrew packaging metadata; it does not redistribute modified
binaries.
