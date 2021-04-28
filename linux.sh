#!/bin/bash

## Linux Environment Initializer
##
## Purpose: Automate the configuration of new linux environments.
##
## NOTE: 
##   - Currently assumes Debian based distro with apt package manager installed.
##
## TODO: 
##   - Add full paths to binaries (eg wget) and verify their existence.
##   - Don't assume the home directory.
##


##
## Configuration
##

# Output Log Level
#
# Options: 
#   0 = No output
#   1 = Only errors
#   2 = Only warning and errors
#   3 = All output (info, warning, errors)
LOG_LEVEL=3

# Path configs
ROOT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
MODULE_PATH="$ROOT_PATH/modules/linux"
LIB_PATH="$ROOT_PATH/lib/linux"


##
## Initialize
##

# Start things up
init() {
    echo "Linux Environment Initializer Framework\n"

    # Must be loaded in this order
    . $LIB_PATH/date.sh
    . $LIB_PATH/log.sh
    . $LIB_PATH/array.sh
    . $LIB_PATH/file.sh

    echo "bootstrap: loaded libs: date, log, array, loader"
}


##
## Modules
## 
## A module is a directory in the ROOT_PATH that has an install.sh script in it.
##

# Modules to include
modules=(
    "vim"
)

# Load and install each module
for module in ${modules[@]}; do
    if dir_exists "$module"; then
        /bin/bash $module/install.sh
    fi
done





##
## Helpers
##



# Checks if directory exists
dir_exists() {
    ! [ -d "$1" ];
}









##
## Setup Text Editors
##
## TODO: Add emacs
##

# VIM
setup_vim() {

    sudo apt install -y vim

    # Install theme dependency
    # Docs: https://github.com/altercation/vim-colors-solarized
    mkdir -p ~/.vim/colors/
    wget -q -O ~/.vim/colors/solarized.vim https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim  

    # Create .vimrc symlink so config is recognized
    rm ~/.vimrc
    ln -s $THIS_DIR/.vimrc ~/

}


##
## Run Desired Setups
##

# setup_vim
