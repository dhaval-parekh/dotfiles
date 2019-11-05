## Usage: bash brew.sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


##################################################################################################
## Create work directory.
mkdir ~/work

##################################################################################################
## Setup vagrant

# Clone repo
git clone https://github.com/Varying-Vagrant-Vagrants/VVV.git ~/work/vagrant

# Add config.yml
ln -s ~/dotfiles/vagrant/config.yml ~/work/vagrant/config/config.yml

# Install vagrant plugin
vagrant plugin install vagrant-hostsupdater

# Go to vagrant directory.
cd ~/work/vagrant

# Power ON.
vagrant up

# Provising
vagrant provision
