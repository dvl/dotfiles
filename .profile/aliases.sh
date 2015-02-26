alias ls='ls -F --color'
alias la='ls -alF --color'
alias h='history'
alias c='clear'
alias ..='cd ..'

alias apt-get='sudo apt-get'

alias py='ipython'

alias top='atop'
alias vi='vim'
alias svi='sudo vi'

alias nginxreload='sudo nginx -s reload'
alias nginxtest='sudo nginx -t'

alias ports='netstat -tulanp'

alias wget='wget -c'

alias df='df -H'
alias du='du -ch'

alias rs='python manage.py runserver'
alias fs='foreman start'
alias shell='python manage.py shell_plus'
alias m='python manage.py'

alias sublimefuck="kill $(ps aux | grep '[s]ubl' | awk '{print $2}')"

function gi() { curl -s http://www.gitignore.io/api/$@ ;}
