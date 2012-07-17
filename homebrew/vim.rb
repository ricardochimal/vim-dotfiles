require 'formula'

class Vim < Formula
  homepage 'http://www.vim.org/'
  # Get stable versions from hg repo instead of downloading an increasing
  # number of separate patches.
  url 'https://vim.googlecode.com/hg/', :tag => 'v7-3-548'
  version '7.3.548'

  head 'https://vim.googlecode.com/hg/'

  def install
    # Why are we specifying HOMEBREW_PREFIX as the prefix?
    #
    # To make vim look for the system vimscript files in the
    # right place, we need to tell it about HOMEBREW_PREFIX.
    # The actual install location will still be in the Cellar.
    #
    # This way, user can create /usr/local/share/vim/vimrc
    # or /usr/local/share/vim/vimfiles and they won't end up
    # in the Cellar, and be removed when vim is upgraded.

    system "./configure", "--prefix=#{HOMEBREW_PREFIX}",
                          "--mandir=#{man}",
                          "--enable-gui=no",
                          "--without-x",
                          "--disable-nls",
                          "--enable-multibyte",
                          "--with-tlib=ncurses",
                          "--enable-pythoninterp=dynamic",
                          "--enable-rubyinterp",
                          "--enable-cscope",
                          "--with-ruby-command=/usr/local/bin/ruby",
                          "--with-python-config-dir=/usr/local/Cellar/python/2.7.2/Frameworks/Python.framework/Versions/2.7/lib/python2.7/config",
                          "--with-features=huge"
    system "make"

    # Even though we specified HOMEBREW_PREFIX for configure,
    # we still want to install it in the Cellar location.
    system "make", "install", "prefix=#{prefix}"

    system "cp -f src/vim #{prefix}/bin/vim"
  end
end
