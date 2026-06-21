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

> **First time on Homebrew 6+:** third-party taps must be trusted once before their casks
> will load (otherwise you'll see `Refusing to load cask … from untrusted tap`):
>
> ```sh
> brew trust sadid/galley
> ```

> **Admin password required:** Galley ships as a signed `.pkg` that installs into
> `/Applications`, so install and upgrade need your macOS admin password (`sudo`). If you
> hit `sudo: a password is required`, your terminal didn't pass the password through —
> pre-authenticate, then re-run:
>
> ```sh
> sudo -v && brew install --cask galley
> ```
>
> Optional: to approve `sudo` with Touch ID instead of typing a password, add
> `auth sufficient pam_tid.so` to `/etc/pam.d/sudo_local`.

## Update

```sh
brew update            # refresh tap + cask definitions
brew upgrade --cask galley
```

The cask is bumped automatically whenever Munehiro Yamamoto publishes a new
[Galley release](https://github.com/munepi/Galley/releases) (see
[`update-cask.yml`](.github/workflows/update-cask.yml)), so `brew upgrade` pulls the latest
version once it lands here. Each upgrade re-runs the signed installer, so it will ask for your
admin password.

> **Sparkle:** GalleyPDF also bundles [Sparkle](https://sparkle-project.org/), its own in-app
> updater. This cask intentionally lets **Homebrew** drive updates (no `auto_updates` stanza),
> so `brew upgrade --cask galley` works without `--greedy` — just decline Sparkle's in-app
> prompts. Both fetch the same notarized releases from GitHub.

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
