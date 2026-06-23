# dotfiles

Personal dotfiles managed with [mise](https://mise.jdx.dev/dotfiles.html).

## Setup

Clone this repo into your home directory and apply all dotfiles:

> **Note:** `mise dotfiles` is experimental. `cd` into the repo first so `mise` picks up its config, then `mise trust` to enable the experimental feature before applying.

```sh
git clone <repo-url> ~/.dotfiles
cd ~/.dotfiles/src
mise trust
mise dotfiles apply
```

## Structure

Files mirror their `$HOME` paths from the `src/` directory (`dotfiles.root = "~/.dotfiles/src"`):

| Repo path | Home path |
|-----------|-----------|
| `src/.gitconfig` | `~/.gitconfig` |
| `src/.zshrc` | `~/.zshrc` |
| `src/.config/mise/config.toml` | `~/.config/mise/config.toml` |

## Adding a new dotfile

```sh
mise dotfiles add ~/.config/foo/config
```

This moves the file into `~/.dotfiles/src/.config/foo/config`, registers it in the `[dotfiles]` section of `~/.config/mise/config.toml`, and symlinks it back.

## Checking status

```sh
mise dotfiles status
```
