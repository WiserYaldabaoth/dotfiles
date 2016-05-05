# Path to your oh-my-zsh installation.
 export ZSH="/home/${USER}/.oh-my-zsh"

 export ZSH_THEME="smt"
 export ZLE_PROMPT_INDENT=0

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# {{{
if [[ -f ~/antigen/antigen.zsh ]]; then #{{{
    source ~/antigen/antigen.zsh
    print "Loading antigen"

    antigen use oh-my-zsh

    antigen bundle git
    antigen bundle nyan
    antigen bundle tmux
    # antigen bundle vi-mode
    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle themes
    antigen bundle command-not-found

    UNAME=$(uname --all)
    if [[ "$UNAME" =~ "ARCH" ]] ; then
        antigen bundle archlinux
    elif [[ "$UNAME" =~ "Cygwin" ]] ; then
        ;
        # Cygwin stuff here
    else
        ;
        # Specifically NOT all of the above
    fi

    antigen bundle zsh-users/zsh-completions src
    antigen bundle zsh-users/zsh-history-substring-search

    antigen theme ys

    antigen apply
#}}}
else #{{{
    print "Not found: ~/antigen/antigen.zsh"
#}}}
fi
# }}}

# User configuration

  export PATH="/home/werty/pebble-dev/pebble-sdk-4.2-linux64/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/werty/pebble-dev/pebble-sdk-4.2-linux64/pebble-tool"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -alrt'                           # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
alias lsd='ls ./.* -alrt |grep "[^^]./\..*$"' # ls dotfiles

# tmux with 256-color support
alias tmux="tmux -2"

# eclimd
alias eclimd='~/.eclipse/org.eclipse.platform_4.5.2_155965261_linux_gtk_x86_64/eclimd'

alias th="theme smt"

export PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
#vim:fen:fdm=marker
