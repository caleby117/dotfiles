# some more ls aliases
alias ll='ls -l'
alias la='ls -la'
alias l='ls -CF'

# other fun aliases
alias sd="sudo"
alias pls='sd $(fc -ln -1)'
alias cls="clear"
alias cs="printf '\033[s\033[1A\033[1J\033[u';"
alias gs="git status"

# for esp-idf
alias idf=". $HOME/esp/v5.2/export.sh"

# for fabrica work
alias ros="cd ~/ros_ws/"
alias embedded="cd ~/ros_ws/src/embedded/"
alias actuation="cd ~/ros_ws/src/embedded/actuation_controller"
alias safety="cd ~/ros_ws/src/embedded/safety_controller"
