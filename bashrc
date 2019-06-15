[[ $- != *i* ]] && return

alias cp='cp -i'
alias rdesktop='rdesktop -K -P -g 100%'
alias ls='ls --color=auto'
alias ll='ls -lh'

function mega-put {
	mega-put "$@" Uploads/
}
