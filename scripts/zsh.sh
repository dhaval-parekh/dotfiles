##################################################################################################
## Copy all config files which start with . (hidden file)

##################################################################################################
## Install oh-my-zsh
# bash -C "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


echo "-- Installing Oh My ZSH...";
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
rm -rf ~/ohmyzsh
git clone git@github.com:ohmyzsh/ohmyzsh.git ~/ohmyzsh
bash -C ~/ohmyzsh/tools/install.sh

echo "-- Installing NVM...";
rm -rf ~/nvm
git clone git@github.com:nvm-sh/nvm.git ~/nvm
bash -C ~/nvm/install.sh

rm ~/.zshrc
ln -s ~/dotfiles/config/.* ~