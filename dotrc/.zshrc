export PATH="/usr/local/texlive/2022/bin/universal-darwin:$PATH"
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
# export PATH="/usr/local/bin:$PATH"
# export PATH="/usr/bin/:$PATH"

export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"


# zsh config:
export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche
autoload -U colors && colors
#PROMPT="%{$fg_bold[cyan]%}%{$reset_color%}%{$fg_bold[cyan]%}%~ %{$fg_bold[green]%}%{$reset_color%}→ "

export PATH="/usr/local/share/zsh/site-functions:$PATH"


export PATH="$PATH:/Users/hep/Library/Python/3.9/bin"

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



export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/3.1.0/bin:$PATH"

export CPLUS_INCLUDE_PATH=/opt/homebrew/include/freetype2/

export PATH="/opt/homebrew/sbin:$PATH"
export PATH=/Users/hep/bin:$PATH

# 配置brew 自动补全
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
# -----自动补全

export PATH="$PATH:/Users/hep/go/bin"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
# export PATH="/opt/homebrew/Caskroom/miniforge/base/envs/tf26/bin/python:$PATH"
export GNUTERM="qt font \"MicrosoftYaHei\""
export PATH="$PATH:/opt/metasploit-framework/bin"
# export QT_QPA_PLATFORM_PLUGIN_PATH="/opt/homebrew/Caskroom/miniforge/base/envs/tf26/lib/python3.9/site-packages/PySide6/Qt/plugins/platforms"
# export QT_PLUGIN_PATH="/opt/homebrew/Caskroom/miniforge/base/envs/tf26/lib/python3.9/site-packages/PySide6/Qt/plugins"

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/hep/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="/Users/hep/Library/Python/3.8/bin/:$PATH"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

# 下载m3u8视频
# alias download-m3u8="down1() {ffmpeg -i $1 -threads 3 $2}; down1"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

#java_home
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH
export CLASS_PATH=$JAVA_HOME/lib


[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
test -e /Users/hep/.iterm2_shell_integration.zsh && source /Users/hep/.iterm2_shell_integration.zsh || true


export C_INCLUDE_PATH="/opt/homebrew/include"
export CPLUS_INCLUDE_PATH="/opt/homebrew/include"

export LIBRARY_PATH="/opt/homebrew/lib"


#unalias run-help
autoload run-help
HELPDIR=/usr/share/zsh/"${ZSH_VERSION}"/help
export PATH="/opt/homebrew/opt/ncurses/bin:$PATH"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

NEWLINE=$'\n'
PROMPT="%(?.%F{green}√.%F{red}?%?)%f  %B%F{69}%~ ${NEWLINE} %F{35}==>%f%b "
#RPROMPT="%F{50}[%*]"

### ZSH HOME
export ZSH=$HOME/.zsh

### ---- history config -------------------------------------
export HISTFILE=$ZSH/.zsh_history

# How many commands zsh will load to memory.
export HISTSIZE=10000

# How maney commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fpath=($ZSH/plugins/zsh-completions/src $fpath)

# zsh-autosuggestions:config
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
# end config

export PATH="/opt/X11/bin/:$PATH"
export PATH="/opt/homebrew/Cellar/riscv-gnu-toolchain/main/bin/:$PATH"

autoload -U compinit && compinit; zstyle ':completion:*' menu select

################### alias here #####################
alias vi=nvim
alias vim='nvim'
# alias vrc='vi ~/.vimrc'
alias vv='cd ~/.config/nvim/lua/'
alias vz='vim ~/.zshrc'
alias sz='source ~/.zshrc'

########################## MacOS ##############
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias brewbak='brew bundle dump --describe --force --file="~/code/dotfile/Brewfile"'
alias brewclean='brew cleanup --prune 0'
alias calc="open -a calculator.app"
alias tid="sudo sed -i ".bak" '2s/^/auth       sufficient     pam_tid.so\'$'\n/g' /etc/pam.d/sudo"
alias batinfo="ioreg -w 0 -f -r -c AppleSmartBattery | grep -E 'AppleRawMaxCapacity|AppleRawCurrentCapacity'"
alias archs='lipo -archs'
alias refreshlaunch='defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock'
alias diskinfo='smartctl -a disk0'
alias xc='xcode-select --install'
alias anywhere='sudo spctl --master-disable'
# alias frpc="frpc -c /opt/homebrew/etc/frp/frpc.ini"
alias re_launchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

# ################  cc  ASM #######################
alias gcc=gcc-12
alias g++=g++-12
alias lc="cd ~/code/dsa/lc/"
alias asm="cd ~/code/asm/Learning_ASM/CODE/"
alias rmexe='find . -perm +100 -type f -delete'


# ########### TeX #####################
alias tx-u='sudo tlmgr update --self --all'
alias tx-reu='sudo tlmgr update --reinstall-forcibly-removed --all'
alias pdf2png='fun1() {gs -sDEVICE=png16m -sBATCH -sOutputFile=$2 -dNOPAUSE -r1600 $1;}; fun1'
alias td='texdoc'
alias lst="td lshort-zh"
alias pgf="td pgf"
alias tt='cd /Users/hep/code/LaTeX_Proj/latex-test/'


# ############## proxy #####################
alias v1='open -a /Applications/ClashX.app'
alias v2='export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890'
alias v='v1 && v2'
alias uv="unset ALL_PROXY"
alias ssc='shadowsocksr-cli'


############## Python ##############################
alias ipy='ipython'
alias jn='jupyter-notebook'
alias tf24='conda activate tf24'
alias tf26='conda activate tf26'
alias py3x='conda activate py3x'
alias de='conda deactivate'
alias vipy='vim /Users/hep/.ipython/profile_default/ipython_config.py'
alias py="/opt/homebrew/Caskroom/miniforge/base/envs/tf26/bin/python3"
alias t_py="cd ~/code/py_Proj/rest_Code/"


# ################### git #####################
# alias ga='git add .'
# alias gc='echo $1|git commit -m $1'
# alias gp='git push'
alias gt='func() {git add .&&git commit -m "$1"&& git push;};func'
alias gcl='git clone'


alias help=run-help



# ################### frontend-tools #####################
alias blg='cd ~/code/frontend-tools/Apocaly-pse.github.io'
alias md='cd ~/code/frontend-tools/Apocaly-pse.github.io/_post/'
alias bjs='bundle exec jekyll serve'
alias js='jekyll server'
alias sql='mysql -uroot -p0000'
#alias rm='rm -i'

#######################  Linux VM Ubuntu ##################
alias vm='multipass'
alias ubt='ssh -i /Users/hep/.ssh/ssh1.pem root@59.110.48.22'
alias mac='ifconfig -a | awk "{print $2}" | grep "18" | tr ":" "-"'
alias i='arch -x86_64 '
alias tn='tmux new -s'
alias ll='ls -alh'
alias cl=clear
alias h=history
