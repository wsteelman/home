# add arm tools to path
SHELL=/bin/bash

PATH=$HOME/bin:/usr/local/bin:$PATH
PATH=~/install/gcc-arm-none-eabi-5_4-2016q3/bin/:$PATH
PATH=~/install/nrfjprog/nrfjprog:$PATH
#JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
#ES_HOME=~/code/elasticsearch/elasticsearch-1.4.0
#PATH=$ES_HOME/bin:$JAVA_HOME/bin:$PATH

source ~/bin/.git-prompt.sh
source ~/bin/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
PS1="\u:\w$(__git_ps1 " (%s)") > "
PROMPT_COMMAND='__git_ps1 "\u:\w" " > "'

alias ls='ls -G'
alias ll='ls -la'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagGxGx

export LS_COLORS="no=00:fi=00:di=00;36:ln=00;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=01;31:*.cpio=00;31:*.jpg=00;33:*.gif=00;33:*.bmp=00;33:*.xbm=00;33:*.xpm=00;33:*.png=00;33:*.tif=00;33:*.c=00;40:"


