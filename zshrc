source /usr/share/zsh/site-contrib/powerline.zsh
alias ls='ls --color=auto'
zstyle ':completion:*' menu select
# Incluir la carpeta Plataforma en el PATH
path+=('/home/corsino/Plataforma')
export PATH
# Start vim as a command server
alias vim='vim --servername VIM'

