# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/well_well_well/.oh-my-zsh

prompt_anaconda() {
  # Depending on the conda version, either might be set. This
  # variant works even if both are set.
  local _path=$CONDA_ENV_PATH$CONDA_PREFIX
  local _env=$CONDA_DEFAULT_ENV
  if ! [ -z "$_path" ]; then
    # config - can be overwritten in users' zshrc file.
    set_default POWERLEVEL9K_ANACONDA_LEFT_DELIMITER "("
    set_default POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER ")"
    "$1_prompt_segment" "$0" "$2" "blue" "$DEFAULT_COLOR" "$POWERLEVEL9K_ANACONDA_LEFT_DELIMITER$(basename $_env)$POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER" 'PYTHON_ICON'
    py_version=$(python -c 'import sys; print(str(sys.version_info[0])+"."+str(sys.version_info[1]))')
    "$1_prompt_segment" "$0" "$2" "blue" "$DEFAULT_COLOR" "$py_version $POWERLEVEL9K_ANACONDA_LEFT_DELIMITER$(basename $_env)$POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER" 'PYTHON_ICON'
  fi
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/well_well_well/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/well_well_well/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/well_well_well/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/well_well_well/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



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
# ZSH_CUSTOM=/home/anshul/ZSH_CUSTOM

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
#
# export terminator as default terminal
 export TERMINAL=gnome-terminal

export PAGER=less


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export TERM="xterm-256color"

# Syntax highlighting and tab completion
 autoload -Uz compinit

# Colored man pages using less as pager
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Font mode for powerlevel9k
 POWERLEVEL9K_MODE="nerdfont-complete"

 
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Prompt settings
 POWERLEVEL9K_PROMPT_ON_NEWLINE=true
 POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
 POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{black}%k"
 POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%K{white}%F{161} \uf155%f%F{white} %k\ue0b0%f "
# # Separators
 POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
 POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue231'
 POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
 POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

# Context
 DEFAULT_USER="well_well_well"
 POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
 POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='green'
 POWERLEVEL9K_CONTEXT_TEMPLATE="%F{cyan}%n%f"
 POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'

# Dirs
 POWERLEVEL9K_DIR_HOME_BACKGROUND='yellow'
 POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
 POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='yellow'
 POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
 POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='red'
 POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
 POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
 POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# OS segment
 POWERLEVEL9K_OS_ICON_BACKGROUND='white'
 POWERLEVEL9K_LINUX_ICON='%F{black} \uf17c %F{green}Ubuntu %F{cyan}Xfce %F{red}\uf7b6 %f'

# VCS icons
 POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d3'
 POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113'
 POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
 POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf071'
 POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
 POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
 POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# VCS colours
 POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
 POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
 POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
 POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
 POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
 POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'


# VCS CONFIG
 POWERLEVEL9K_SHOW_CHANGESET=true

# Status
 POWERLEVEL9K_OK_ICON=$'\uf164'
 POWERLEVEL9K_FAIL_ICON=$'\uf165'
 POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf165'

# Battery
 POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
 POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='yellow'
 POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
 POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='cyan'

# Time
 POWERLEVEL9K_TIME_FORMAT="%F{red}\uf017 %D{%I:%M}%f"
 POWERLEVEL9K_TIME_BACKGROUND='white'

# Command auto-correction.
 ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
 HIST_STAMPS="mm/dd/yyyy"

 user_with_aum() {
  echo -n "%F{red}\u0950 %f"
}

POWERLEVEL9K_CUSTOM_USER="user_with_aum"


 zsh_wifi_signal(){
    local signal=$(nmcli device wifi | grep yes | awk '{print $8}')
    local color='%F{yellow}'
    [[ $signal -gt 75 ]] && color='%F{green}'
    [[ $signal -lt 50 ]] && color='%F{red}'
    echo -n "%{$color%}\uf1eb  $signal%{%f%}" # \uf230 is 
}

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"


# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenv  zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh



# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_user context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(anaconda time virtualenv background_jobs battery)



# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias open='xdg-open'
alias ssh-office='ssh -X anshul@ks09.icbm.uni-oldenburg.de'
alias ssh-cluster='ssh -X bute2005@carl.hpc.uni-oldenburg.de'
alias ssh-NAIL-Macpro='ssh admin@152.1.52.55'
alias ssh-NAIL-lamda='ssh anshu957@152.1.52.50'

fortune | cowsay | lolcat 
# Install Ruby Gems to ~/gems
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH


export PATH=/usr/local/bin:$PATH
