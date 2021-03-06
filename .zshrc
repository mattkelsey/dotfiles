# Path to your oh-my-zsh installation.
export ZSH=/home/matt/.oh-my-zsh
plugins=(adb archlinux git)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/matt/.gem/ruby/2.3.0/bin:/home/matt/.npm-global/bin"
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

#Enable autocompletion
autoload -U compinit promptinit
compinit
promptinit

autoload -U colors && colors

#Change shell colors 
#prompt redhat
# ALIASES 
alias pacS='sudo pacman -S'
alias up='sudo pacman -Syu --noconfirm'
alias jtu='echo "### Starting JobTracker... ###" && docker-compose up -d && WORKER_SIMULATION=1 grunt serve'
alias jtd='echo "### Stopping JobTracker... ###" && docker-compose down'
alias cyrus='cd /home/matt/Documents/Cyrus/JobTracker'
alias grs='grunt serve'
alias c='clear'
# alias cirrus='cd /home/matt/Documents/Programming/soundcirrus/ && node cirrus.js'
alias gs='git status'
alias gd='git diff'
alias add='git add'
alias commit='git commit -m'
alias push='git push'
alias compose='docker-compose'
export NODE_PATH=/home/matt/.npm-global/lib/node_modules
export TERM=xterm-256color
alias go='export GOPATH=$(pwd) && go'
alias dev='cd /home/matt/Documents/Programming/'
alias robot='cd /home/matt/Documents/robotics/2856 && git status'
alias screen='xrandr --output HDMI1 --mode 1920x1080'
# tabtab source for yo package
# uninstall by removing these lines or running `tabtab uninstall yo`
[[ -f /home/matt/.npm-global/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . /home/matt/.npm-global/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zshexport PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/matt/.gem/ruby/2.3.0/bin
