# .bash_aliases
# Contains useful aliases for bash.

# Enable alias expansion
shopt -s expand_aliases

# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -alrt'                           # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias lsd='ls ./.* -alrt |grep "[^^]./\..*$"' # ls dotfiles


# Immediate access to JUnit everywhere

alias junit='java org.junit.runner.JUnitCore'


# Spin commands; to be run with a filename
alias spin-run='spin -g -l -p -r -s'

# Other things
alias why="echo \"Because.\""
alias when="date +\"%c\""
alias what="echo $1"

alias stevejobs="jobs"

# tmux with 256-color support
alias tmux="tmux -2"

