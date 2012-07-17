## Homebrew setup

This is how to setup vim with modern ruby and python support.

```bash
$ brew install ruby
$ brew install python --framework
# edit ./homebrew/vim.rb and make sure the python config dir is correct
$ brew install ./homebrew/vim.rb
```

## Debian setup

```bash
$ sudo apt-get install vim-gtk python2.7
```

## Installation

```bash
$ git clone git@github.com:ricardochimal/vim-dotfiles.git .vim
$ ln -s .vim/vimrc .vimrc
$ cd .vim; git submodule init; git submodule update
```


