#  My dotfiles and system configuration

![](https://raw.githubusercontent.com/wiki/breiting/breiting/osx.png)

This repository contains all my setup scripts and dotfiles. It may not be 100% adjusted for your needs, but you can use
it as a guideance for your environment. Most credits go to Greg Hurrell (see below).

## Pre-requisite (tasks which have been done manually)

* Install Ansible with `easy_install install pip`
* Restore your data from your backup source (e.g. TimeMachine)

### MacOS only

* Make sure that you have installed Xcode (from App Store)
* After brewing, update your default shell by
```
$ sudo
# echo /usr/local/bin/zsh >> /etc/shell
$ // as normal user
$ chsh -s /usr/local/bin/zsh
```

## Features

### Dotfiles

Apply all my default dotfiles to the environment. Make sure to start the `vim.sh` script before for installing the VIM
base system.

### Homebrew

On macOS, [the `homebrew` role](https://github.com/breiting/breiting/tree/master/roles/homebrew) installs [a bunch of
useful software](https://github.com/breiting/breiting/blob/master/roles/homebrew/templates/Brewfile).

### Mac Defaults

Install all Mac defaults by calling `macos.sh`

### iTerm2

I added some schemes under `misc`. Currently my favorite is `Tomorrow Night` with Font `Source Code Pro for Powerline`
font size 14px.

## Installation

### Clone

```sh
git clone https://github.com/breiting/breiting.git
```

### Install

```sh
./macos.sh
./vim.sh              # Please see the notes in this script for installing all VIM plugins
./install.sh          # Installs everything on the local machine.
./install.sh dotfiles # Just install dotfiles.
```

### Troubleshooting

### License

Unless otherwise noted, the contents of this repo are in the public domain. See the [LICENSE](LICENSE.md) for details.

### Author(s)

The repo is written and maintained by Bernhard Reitinger &lt;[br@reecon.at](mailto:br@reecon.at)&gt;. This work got
heavily inspired by Greg Hurrell. Have a look at his repository (https://github.com/wincent/wincent).
