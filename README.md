dotfiles
========

Opinionated garbage for my dotfiles setup. Uses [yadm] to manage them in your home.

Used daily by a few people at this point. Lord Zulu help them.

I've been trying to at least put the most useful pieces into gists or their own repos, on an as time allots kind of
deal.

A lot of what's here is pure hackery at best, but a lot took some time too.
Due to this, I don't promise that everything is exactly documented, but I do promise good things to those who read.
If something sucks, tell me why! I don't mind strong opinions; especially so if they have backing data.

Yolo swag.


News
----

We've been doing a mass non-opinionation as others have started to utilize these as well.
This is being done on pure best effort, and PRs are welcome for just about anything.


Goals
-----

* [OSX] or [Linux].
* Relatively easy to understand, with bells and whistles galore.
* Attempts to adhere to [XDG] spec (for the important tidbits at least).
* Everything should be a plugin (batteries included, but removable).
* Obviously opinionated portions should not be enabled by default.
* Plugins should check for requirements and disable themselves automagically if not available.

Features
--------

* Vigorous [Zsh] setup [dotfiles-zsh]
  * `SSH`: If you're remote, prefix prompt with `$HOSTNAME` and auto-spawn `tmux`.
  * `Linux`: [libtrash] used if available for `rm`, otherwise supports such things as [gomi], [safe-rm], etc
  * `colorcat` is a `cat` drop-in wrapper that automatically applies highlighting to the output without breaking usage.
    - Breakage is avoided by paying attention to if you have a tty, have stdin, are interactive, etc etc
    - If used on multiple files, it will even prefix each file with it's name (to stderr only just in case)
  * [antibody] as a lightweight shim for parallel plugin loads/updates.
    - Note: I currently use my fork because I have breaking changes that still haven't integrated
  * [airline]/[promptline] based prompts (but totally configurable to whatever you want)

  * A zillion other tools, mostly that I've written, some modified.

  * Nearly everything supports local extension via `~/.local/zsh/`; analogous to `~/.config/zsh` here,
    but local to your machine. This of course includes plugins, functions, and completions.
    Same idea goes for a lot of this, eg user bin (`~/.local/{s,}bin` take precedence over `~/{s,bin}`), manpath's, etc.

  * Lots of development environment support.
  * Defaults aim to work for most, but all paths should be overridable to taste via env vars.
  * Plugins don't load if their requirements are not met.

  * Smart completion caching for slow-to-export completion functions.

    This is for applications that have this _god awful_ idea that I want to **execute** them _each time_ I load my shell.

    If the binary has updated since the cache was created however, the cache is busted.

    By avoiding this, shell startup is lightning quick, but your bells and whistles still intact, even on extremely low powered embedded devices, which I use these on all the time ;)

    Shame list includes `pip*` and nearly every app written in golang.

  Paths to browse:
    - `bin/`
      - `bin/3p`: Mostly automagic source code compilation and installation.
      - `bin/up`: Update everything, yo.
    - `.config/zsh/{zprofile,zshenv,zshrc}`: Primary entrypoints. Sets up environment and loads plugins.
    - `.config/zsh/zshplugins`: States what plugins should load.
    - `.config/zsh/plugins*/`: Isolated zsh plugin bundles.

* Semi-organized [NeoVim]/[Vim]/[MacVim] configuration [dotfiles-vim]
  * [vim-plug] for plugin management; check `.config/nvim/plugins.d/`

  Paths to browse:
    - `.config/nvim/`: Neovim configuration, but also is used in vim8.

* [tmux] (with plugins via `tpm`) [dotfiles-tmux]
  * [tpm] for plugins

  Paths to browse:
    - `.config/tmux/`: Tmux configuration

Usage
-----

Install [yadm]:

```sh
# Linux
sudo apt install yadm
# OSX
brew install yadm
```

Clone via [yadm]:

```sh
yadm clone git@github.com:akatrevorjay/dotfiles.git
yadm submodule update --init
```

Original repos
--------------

Old repos that this will be split back into once better support for submodules are built into yadm:

  * [https://github.com/akatrevorjay/dotfiles-shell.git|dotfiles-shell]
  * [https://github.com/akatrevorjay/dotfiles-vim.git|dotfiles-vim]
  * [https://github.com/akatrevorjay/dotfiles-tmux.git|dotfiles-tmux]

Related
-------

[yadm]: https://github.com/TheLocehiliosan/yadm
[dotfiles-zsh]: https://github.com/akatrevorjay/dotfiles/tree/develop/.config/zsh
[dotfiles-vim]: https://github.com/akatrevorjay/dotfiles/tree/develop/.config/nvim
[dotfiles-tmux]: https://github.com/akatrevorjay/dotfiles/tree/develop/.config/tmux

