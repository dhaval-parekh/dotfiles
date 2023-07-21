## Usage: bash brew.sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Homebrew Setup started.";

##################################################################################################
## Install Homebrew.
echo "-- Installing Homebrew...";
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

##################################################################################################
## Update Homebrew packages.
echo "-- Homebrew packages update.";
brew update

##################################################################################################
## Upgrade Homebrew packages.
echo "-- Homebrew upgrade.";
brew upgrade
brew cask upgrade

##################################################################################################
## Install Packages
echo "-- Installing homebrew packages.";

## Install git
brew install git

## Install SVN
brew install svn

## Replace default OSX language interpreters with brew alternatives.
## This gives latest lanuage versions.
brew install python
brew install python@2

brew install ruby
brew install php
brew install nginx
brew install dnsmasq
brew install mysql
brew install composer
brew install go
brew install node
brew install nvm

## Replace OSX tools with brew alternatives.
brew install curl
brew install git
brew install bash
brew install rsync

## Additional utils.
brew install tree
brew install ffmpeg
brew install wget
brew install wp-cli
brew install youtube-dl
brew install mas
brew install openssl


## Tools
brew cask install vlc
brew cask install skype
brew cask install teamviewer
brew cask install dropbox
brew cask install appcleaner
brew cask install ccleaner
brew cask install the-unarchiver
brew cask install android-file-transfer
brew cask install cyberduck
brew cask install mysqlworkbench
brew cask install sequel-pro
brew cask install diffmerge
brew cask install jumpcut
# brew cask install smcfancontrol # Not working
# brew cask install skitch

## Development Apps.
brew cask install docker
brew cask install gas-mask
brew cask install google-chrome
brew cask install firefox
brew cask install tunnelbear
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install vagrant
brew cask install virtualbox


# brew install coreutils
# brew install moreutils
# brew install findutils
# brew install android-platform-tools
# brew install git-flow
# brew install gnutls
# brew install imagemagick
# brew install lame
# brew install homebrew/dupes/grep
# brew install homebrew/dupes/openssh
# brew install homebrew/dupes/screen
# brew install parallel
# brew install pv
# brew install ssh-copy-id
# brew install swaks
# brew install tmux
# brew install mariadbc

# brew install gnu-sed --with-default-names
# brew install nmap
# brew install dos2unix
# brew install dsh
# brew install jq
# brew install kubernetes-cli
# brew install mcrypt
# brew install qt

# QuickLook plugins for finder
# brew cask install qlcolorcode
# brew cask install qlimagesize
# brew cask install qlmarkdown
# brew cask install qlprettypatch
# brew cask install qlstephen
# brew cask install quicklook-csv
# brew cask install quicklook-json


##################################################################################################
## Brew cleanup.
echo "-- Brew cleanup.";
brew cleanup
brew cask cleanup

echo "Homebrew setup complated.";


##################################################################################################
## Installing additional application from App store.
echo "Installing Applications from App store.";

mas install 497799835   #Xcode
mas install 488709442   #VisualJSON
mas install 409183694   #Keynote
mas install 803453959   #Slack
mas install 1147396723  #WhatsApp
mas install 1012930195  #HandShaker
mas install 1094748271  #FullContact
mas install 1333542190  #1Password 7
mas install 957734279   #Toggle Desktop
mas install 405399194   #Kindle

echo "All Application installed";