#!/bin/bash

#!/bin/bash

dest=$(pwd)
dateStr=$(date +%Y-%m-%d-%H%M)

restoreDotfile () {

    if [ -f ${dest}/dotfiles/${1} ]; then
        if [ -f ~/${1} ]; then
            mkdir -p ~/.backup_dotfiles
            mkdir -p ~/.backup_dotfiles/"${dateStr}"
            mv  ~/${1} ~/.backup_dotfiles/"${dateStr}"
        fi
        cp ${dest}/dotfiles/${1} ~/${1}
        echo "File copied at path: ~/${1}"

    elif [ -d ${dest}/dotfiles/${1} ]; then
        if [ -d ~/${1} ]; then
            mkdir -p ~/.backup_dotfiles
            mkdir -p ~/.backup_dotfiles/"${dateStr}"
            mv  ~/${1} ~/.backup_dotfiles/"${dateStr}"
        fi
        cp -r ${dest}/dotfiles/${1} ~/${1}
        echo "Folder copied at path: ~/${1}"

    else
        echo "File not present"
    fi

}

# Folders
restoreDotfile .themes 
restoreDotfile .tmux
restoreDotfile .docker
restoreDotfile .vim


# Files
restoreDotfile .bashrc
restoreDotfile .bash_aliases
restoreDotfile .vimrc
