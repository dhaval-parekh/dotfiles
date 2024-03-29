###  Setup a new machine

##################################################################################################
## XCode Command Line Tools
## thx https://github.com/alrra/dotfiles/blob/ff123ca9b9b/os/os_x/installs/install_xcode.sh
## TODO :: install xcode command line only

if ! xcode-select --print-path &> /dev/null; then

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until the XCode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? 'Install XCode Command Line Tools'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Point the `xcode-select` developer directory to
    # the appropriate directory from within `Xcode.app`
    # https://github.com/alrra/dotfiles/issues/13

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
    print_result $? 'Make "xcode-select" developer directory point to Xcode'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'

fi


##################################################################################################
## Setup Homebrew
bash ./scripts/brew.sh

## Setup OS Preference.
bash ./scripts/osx.sh

##################################################################################################
## Copy all config files which start with . (hidden file)
ln -s ~/dotfiles/config/.* ~

##################################################################################################
## Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

##################################################################################################
## Git Configuration.
git config --global user.email "dmparekh007@gmail.com"
git config --global user.name "Dhaval Parekh"

##################################################################################################
## Install WP CLI package
wp package install git@github.com:aaemnnosttv/wp-cli-valet-command.git

## Install wp-completion.bash
cd ~
curl -O https://raw.githubusercontent.com/wp-cli/wp-cli/v2.3.0/utils/wp-completion.bash

echo "Please restart your system.";
exit 0;