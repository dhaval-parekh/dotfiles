## Usage: bash brew.sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Homebrew Setup started.";

##################################################################################################
## Install Homebrew.
echo "-- Installing Homebrew...";
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
rm -rf ~/homebrew-install
git clone git@github.com:Homebrew/install.git ~/homebrew-install
bash -C ~/homebrew-install/install.sh

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/dhavalparekh/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

##################################################################################################
## Update Homebrew packages.
echo "-- Homebrew packages update.";
brew update

##################################################################################################
## Upgrade Homebrew packages.
echo "-- Homebrew upgrade.";
brew upgrade
brew upgrade --cask

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
brew install zsh
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
brew install termius
brew install composer


## Tools
# brew  install vlc --cask
# brew  install skype --cask
# brew  install teamviewer --cask
# brew  install dropbox --cask
# brew  install appcleaner --cask
# brew  install ccleaner --cask
# brew  install the-unarchiver --cask
# brew  install android-file-transfer --cask
# brew  install cyberduck --cask
# brew  install mysqlworkbench --cask
brew  install sequel-pro --cask
brew  install diffmerge --cask
brew  install jumpcut --cask
# brew  install smcfancontrol # Not working
# brew  install skitch --cask

## Development Apps.
brew  install docker --cask
brew  install gas-mask --cask
brew  install google-chrome --cask
brew  install firefox --cask
brew  install tunnelbear --cask
brew  install sublime-text --cask
# brew  install visual-studio-code --cask
# brew  install vagrant --cask
# brew  install virtualbox --cask


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
# brew  install qlcolorcode
# brew  install qlimagesize
# brew  install qlmarkdown
# brew  install qlprettypatch
# brew  install qlstephen
# brew  install quicklook-csv
# brew  install quicklook-json


##################################################################################################
## Brew cleanup.
echo "-- Brew cleanup.";
brew cleanup
brew  cleanup --cask

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