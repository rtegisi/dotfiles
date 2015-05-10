#!/bin/sh

utils=(
  bash-completion
  git
  ctags
  macvim
  the_silver_searcher
  httpie
  reattach-to-user-namespace
  wemux
  hub
  rbenv
  ruby-build
)

brew install ${utils[@]}
brew install caskroom/cask/brew-cask
# Jared's Apps
# apps=(
#   alfred
#   dropbox
#   google-chrome
#   qlcolorcode
#   screenflick
#   slack
#   transmit
#   appcleaner
#   firefox
#   hazel
#   qlmarkdown
#   seil
#   spotify
#   vagrant
#   arq
#   flash
#   iterm2
#   qlprettypatch
#   shiori
#   sublime-text3
#   virtualbox
#   atom
#   flux
#   mailbox
#   qlstephen
#   sketch
#   tower
#   vlc
#   cloudup
#   nvalt
#   quicklook-json
#   skype
#   transmission
# )
apps=(
  quicksilver
  dropbox
  google-chrome
  slack
  firefox
  seil
  karabiner
  iterm2
  flux
  nvalt
  quicklook-json
  viscosity
  limechat
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Let's get rbenv set up
mkdir -p ~/.rbenv/plugins/
cd ~/.rbenv/plugins/
git clone https://github.com/sstephenson/ruby-build.git
git clone https://github.com/ianheggie/rbenv-binstubs.git
git clone https://github.com/sstephenson/rbenv-gem-rehash.git
git clone https://github.com/sstephenson/rbenv-default-gems.git
ln -s ~/dotfiles/default-gems ~/.rbenv/default-gems
