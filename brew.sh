#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

brew tap caskroom/cask
brew tap homebrew/bundle
brew tap homebrew/core
brew tap homebrew/services
brew tap homebrew/dupes
brew tap homebrew/php
brew tap homebrew/apache


# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
# brew install ringojs
# brew install narwhal

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# brew install httpd24 --with-privileged-ports --with-http2ss
# brew install homebrew/php/php70 --with-gmp --with-httpd24

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# dev binaries and such
brew install ack
brew install autoconf
brew install autojump
brew install automake
brew install colordiff
brew install coreutils
brew install dark-mode
brew install freetype
brew install git
brew install git-flow
brew install git-lfs
brew install go
brew install grc
brew install hub
brew install icoutils
brew install imagemagick --with-webp
brew install jp2a
brew install jpeg
brew install jq
# brew install libcaca, args: ['with-imlib2']
brew install libgit2
brew install libpng
brew install libtool
brew install libtiff
brew install imagemagick
brew install libevent
brew install libmemcached
brew install libxml2
brew install mas
brew install memcached
brew install mysql
brew install n
brew install node
brew install openssl
brew install ossp-uuid
brew install p7zip
brew install pigz
brew install postgresql
brew install pow
brew install puma/puma/puma-dev
brew install pv
brew install ruby-build
brew install rbenv
brew install readline
brew install rename
brew install roundup
brew install spaceman-diff
brew install spark
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tmux
brew install tree
brew install unrar
brew install vbindiff
brew install webkit2png
brew install wget
brew install xz
brew install yarn
brew install youtube-dl
brew install zopfli

# apps
brew cask install adobe-creative-cloud
brew cask install anvil
brew cask install applepi-baker
brew cask install atom
brew cask install docker-toolbox
brew cask install dropbox
brew cask install firefox
brew cask install github-desktop
brew cask install google-chrome
brew cask install grandperspective
brew cask install iterm2
brew cask install java
brew cask install joinme
brew cask install livereload
brew cask install ngrok
brew cask install opera
brew cask install rescuetime
brew cask install sidestep
brew cask install skitch
brew cask install skype
brew cask install sonos
brew cask install spotify
brew cask install steam
brew cask install sublime-text
brew cask install transmit
brew cask install vagrant
brew cask install vagrant-manager
brew cask install visual-studio-code

# Remove outdated versions from the cellar.
brew cleanup
