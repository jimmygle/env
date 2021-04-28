#!/bin/bash

# Install & Configure VIM
#
# NOTE: Currently assumes Debian based distro with apt package manager installed.
#

vim_install() {
    log_info "Installing and configuring VIM..."
    sudo apt install -y vim

    # Install theme dependency
    # Docs: https://github.com/altercation/vim-colors-solarized
    log_info "Downloading solarized theme for VIM..."
    mkdir -p ~/.vim/colors/
    wget -q -O ~/.vim/colors/solarized.vim https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim

    # Create .vimrc symlink so config is recognized
    log_info "Replacing .vimrc file..."
    rm ~/.vimrc
    ln -s $THIS_DIR/.vimrc ~/
}
