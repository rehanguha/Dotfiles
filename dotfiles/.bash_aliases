alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CFh'
alias la='ls -Ah'
alias ll='ls -alhF'
alias ls='ls --color=auto'
alias docker_jupyter_tensorflow='docker run --rm -it -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes --name jupyter_tensorflow --user=root -e NB_UID=`id -u` -v "${PWD}":/home/jovyan/work jupyter/tensorflow-notebook:latest'
alias docker_jupyter_datascience='docker run --rm -it -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes --user=root --name jupyter_datascience -e NB_UID=`id -u` -v "${PWD}":/home/jovyan/work jupyter/datascience-notebook:latest'
alias docker_tensorflow_gpu='docker run -it --rm --gpus all --name tensorflow_gpu v-v "${PWD}":/tf/notebooks -p 8888:8888 tensorflow/tensorflow:latest-gpu-jupyter'
alias python=python3
alias docker_blog='docker run --rm --volume="$PWD:/srv/jekyll" -e JEKYLL_UID=1001 -e JEKYLL_GID=116 -p 4000:4000 rehanguha/jekyll:blog-v1.0 jekyll serve'