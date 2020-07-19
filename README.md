## Debian setup

```bash
$ sudo apt-get install vim-nox python3.8-dev
```

## Requirements

* Recent vim
* [Powerline](https://powerline.readthedocs.org/en/latest/installation.html)
    * add `~/.local/bin` to path in `.bashrc`
    * `pip3 install powerline-status`

## Installation

```bash
$ git clone git@github.com:ricardochimal/vim-dotfiles.git .vim
$ ln -s .vim/vimrc .vimrc
$ cd .vim; git submodule init; git submodule update
```
