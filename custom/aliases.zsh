alias vi="vim"

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -ahlF'
alias lg='ll | grep'
alias lh='du -sh * .* | sort -h'

alias rm="rm -I"
alias df='df -h'
alias pg='ps aux | grep'

alias tmux='tmux -2'
alias tmuxa='tmux attach -t L || tmux -2 new -s L'

alias rmds='find . -name ".DS_Store" -delete'
alias rmpyc='find . -name "*.pyc" -delete'

alias y='youtube-dl -c -f 137+172/137+140/best'
alias xld='xl download --continue --delete --tool aria2'
alias xll='xl list --speed --progress'

alias ce='cd ~/workspace/eleme'
alias cdele='cd ~/workspace/eleme/trunk;'
alias cdz='cd ~/workspace/eleme/zeus'
alias cdh='cd ~/workspace/eleme/hades'

alias mutt="proxychains mutt"
alias paclean="sudo pacman -R $(pacman -Qdtq)"

alias pc="proxychains"
