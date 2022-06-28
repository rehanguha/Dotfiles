#!/bin/bash

dest=$(pwd)
dateStr=$(date +%Y-%m-%d-%H%M)


backupDotfile () {

    if [ -f ~/${1} ]; then
        if [ -f ${dest}/dotfiles/${1} ]; then
            rm -f ${dest}/dotfiles/${1}
        fi
        cp ~/${1} ${dest}/dotfiles/${1}
        echo "File copied at path: ${dest}/dotflies/${1}"

    elif [ -d ~/${1} ]; then
        if [ -d ${dest}/dotfiles/${1} ]; then
            rm -rf ${dest}/dotfiles/${1}
        fi
        cp -r ~/${1} ${dest}/dotfiles/${1}
        echo "Folder copied at path: ${dest}/dotfiles/${1}"

    else
        echo "File not present"
    fi

}

# Folders
backupDotfile .themes 
backupDotfile .tmux
backupDotfile .docker
backupDotfile .vim


# Files
backupDotfile .bashrc
backupDotfile .bash_aliases
backupDotfile .vimrc