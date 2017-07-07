#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

if [ $(id -u) -eq 0 ];
then	#root
	PS1='\[\e[1;34m\][\[\e[1;31m\]\u\[\e[1;34m\]@\[\e[1;32m\]\H \[\e[1;33m\]\w\[\e[1;34m\]]\[\e[1;31m\]\$\[\e[1;34m\]:\[\e[0m\]'
else	#こっちが一般
	PS1='\[\e[1;34m\][\[\e[1;32m\]\u\[\e[1;34m\]@\[\e[1;31m\]\H \[\e[1;33m\]\w\[\e[1;34m\]]\[\e[1;32m\]\$\[\e[1;34m\]:\[\e[0m\]'

fi
