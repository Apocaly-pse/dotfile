export PATH="/usr/local/texlive/2022/bin/x86_64-darwin:$PATH"
#export PATH="/Library/TeX/texbin/:PATH"
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
# export PATH="/usr/local/bin:$PATH"
alias ibrew='arch -x86_64 /usr/local/bin/brew'

#autoload -Uz compinit && compinit

# export PATH=/usr/bin/:$PATH
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# zsh config:
export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche
#autoload -U colors && colors
#PROMPT="%{$fg_bold[cyan]%}%n%{$reset_color%}@%{$fg_bold[cyan]%}%m %{$fg_bold[green]%}%1~ %{$reset_color%}%#"
PROMPT="%{$fg_bold[cyan]%}%{$reset_color%}%{$fg_bold[cyan]%}·%~ %{$fg_bold[green]%}%{$reset_color%}🔧"


alias ll='ls -alh'
alias c=clear
alias h=history
export PATH=/Users/hep/Library/Python/3.8/bin:$PATH

#alias python='/opt/homebrew/bin/python3.9'
#alias py='/opt/homebrew/bin/python3.9'
#alias pip='/opt/homebrew/Cellar/python@3.9/3.9.1_8/bin/pip3.9'
#alias ipy='/opt/homebrew/Cellar/ipython/7.19.0/bin/ipython'

alias vz='vim ~/.bashrc'
alias sz='source ~/.bashrc'

#export PATH="/usr/local/share/zsh/site-functions:$PATH"


#alias em='/opt/homebrew/Cellar/emacs-plus@27/27.1/bin/emacs'

alias batinfo="ioreg -w 0 -f -r -c AppleSmartBattery | grep -E 'AppleRawMaxCapacity|AppleRawCurrentCapacity'"
alias archs='lipo -archs'

export PATH=$PATH:~/bin
. "$HOME/.cargo/env"
