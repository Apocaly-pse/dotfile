# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fox" # set by `omz`

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

autoload -Uz compinit
compinit

fpath+=$ZSH_CUSTOM/plugins/conda-zsh-completion
compinit conda

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source ~/powerlevel10k/powerlevel10k.zsh-theme


export PATH="/usr/bin/:$PATH"
export PATH="/usr/local/texlive/2022/bin/universal-darwin:$PATH"
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
# export PATH="/usr/local/bin:$PATH"
alias ibrew='arch -x86_64 /usr/local/bin/brew'

autoload -Uz compinit && compinit


export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"


# zsh config:
export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche
autoload -U colors && colors
#PROMPT="%{$fg_bold[cyan]%}%n%{$reset_color%}@%{$fg_bold[cyan]%}%m %{$fg_bold[green]%}%1~ %{$reset_color%}%#"
#PROMPT="%{$fg_bold[cyan]%}%{$reset_color%}%{$fg_bold[cyan]%}%~ %{$fg_bold[green]%}%{$reset_color%}→ "


alias ll='ls -alh'
alias cl=clear
alias h=history

# alias py='/usr/local/bin/python3'
alias ipy='ipython'

alias vim='nvim'
alias vi='vim'
alias vz='vim ~/.zshrc'
alias sz='source ~/.zshrc'

export PATH="/usr/local/share/zsh/site-functions:$PATH"


alias em='/opt/homebrew/Cellar/emacs-plus@27/27.2/bin/emacs'

alias batinfo="ioreg -w 0 -f -r -c AppleSmartBattery | grep -E 'AppleRawMaxCapacity|AppleRawCurrentCapacity'"
alias archs='lipo -archs'

export PATH="$PATH:/Users/hep/Library/Python/3.9/bin"

alias tid="sudo sed -i ".bak" '2s/^/auth       sufficient     pam_tid.so\'$'\n/g' /etc/pam.d/sudo"

alias mac='ifconfig -a | awk "{print $2}" | grep "18" | tr ":" "-"'
alias i='arch -x86_64 '
alias jn='jupyter-notebook'
alias diskinfo='smartctl -a disk0'
alias tf24='conda activate tf24'
alias tf26='conda activate tf26'
# alias pt='conda activate pt18'
alias de='conda deactivate'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


alias tx-u='sudo tlmgr update --self --all'
alias tx-reu='sudo tlmgr update --reinstall-forcibly-removed --all'

alias vipy='vim /Users/hep/.ipython/profile_default/ipython_config.py'

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.1.0/bin:$PATH"

# alias ga='git add .'
# alias gc='echo $1|git commit -m $1'
# alias gp='git push'
alias xc='xcode-select --install'

#alias cc='func() {g++ -o main $1&&./main;};func'
#alias g++='g++ -std=c++11'
alias vv="vim ~/.config/nvim/lua/"
alias anywhere='sudo spctl --master-disable'

export CPLUS_INCLUDE_PATH=/opt/homebrew/include/freetype2/

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1089" 
alias v1='open -a /Applications/ClashX.app'
alias v2='export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890'
alias v='v1 && v2'

alias uv="unset ALL_PROXY"


export PATH="/opt/homebrew/sbin:$PATH"
alias test_tex='cd /Users/hep/code/LaTeX_Proj/latex-test/'

alias brewclean='brew cleanup --prune 0'
export PATH=/Users/hep/bin:$PATH
alias td='texdoc'
alias lst="td lshort-zh"
alias pgf="td pgf"

alias gt='func() {git add .&&git commit -m "$1"&& git push;};func'   

alias ac='cd ~/code/markdown/Combinatorics/ac-notes'
alias aa='cd ~/code/markdown/algebra-notes'

# figlet xxx 输出艺术字，lolcat 使输出内容有颜色渐变
#figlet AnishHui | lolcat 

# fortune 输出一句话、名言 cowsay 牛说
#fortune | cowsay  

# 配置brew 自动补全
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
# -----自动补全

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#alias rm='rm -i'
alias vm='multipass'

# alias stop-ubuntu='multipass stop primary'
alias pdf2png='fun1() {gs -sDEVICE=png16m -sBATCH -sOutputFile=$2 -dNOPAUSE -r1600 $1;}; fun1'
alias gcl='git clone'

export PATH="$PATH:/Users/hep/go/bin"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# export PATH="/opt/homebrew/Caskroom/miniforge/base/envs/tf26/bin/python:$PATH"
export GNUTERM="qt font \"MicrosoftYaHei\""

alias blg='cd ~/code/frontend-tools/Apocaly-pse.github.io'
alias bjs='bundle exec jekyll serve'
alias js='jekyll server'
export PATH="$PATH:/opt/metasploit-framework/bin"
# export QT_QPA_PLATFORM_PLUGIN_PATH="/opt/homebrew/Caskroom/miniforge/base/envs/tf26/lib/python3.9/site-packages/PySide6/Qt/plugins/platforms"
# export QT_PLUGIN_PATH="/opt/homebrew/Caskroom/miniforge/base/envs/tf26/lib/python3.9/site-packages/PySide6/Qt/plugins"
alias py3x='conda activate py3x'
alias sql='mysql -uroot -p'
alias refreshlaunch='defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock'
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/hep/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias py="/opt/homebrew/Caskroom/miniforge/base/envs/tf26/bin/python3"
export PATH="/Users/hep/Library/Python/3.8/bin/:$PATH"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

# 下载m3u8视频
# alias download-m3u8="down1() {ffmpeg -i $1 -threads 3 $2}; down1"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

#java_home
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export CLASS_PATH=$JAVA_HOME/lib

alias brewbak='brew bundle dump --describe --force --file="~/code/dotfile/Brewfile"'

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
test -e /Users/hep/.iterm2_shell_integration.zsh && source /Users/hep/.iterm2_shell_integration.zsh || true
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
alias td1="open ~/Documents/tex_doc/latex入门-刘海洋.pdf"

export C_INCLUDE_PATH="/opt/homebrew/include"
export CPLUS_INCLUDE_PATH="/opt/homebrew/include"

export LIBRARY_PATH="/opt/homebrew/lib"

alias rmexe='find . -perm +100 -type f -delete'
alias mc="open -a /opt/homebrew/Cellar/minetest/5.5.1_2/minetest.app"

#unalias run-help
autoload run-help
HELPDIR=/usr/share/zsh/"${ZSH_VERSION}"/help
alias help=run-help
export PATH="/opt/homebrew/opt/ncurses/bin:$PATH"

alias tnew='tmux new -s'
export PATH="/opt/X11/bin/:$PATH"

alias calc="open -a calculator.app"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
