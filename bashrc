[[ $- != *i* ]] && return

. "${HOME}/.cache/wal/colors.sh"

alias dmen='dmenu_run -nb "$color0" -fn "3270Medium Nerd Font:style=Medium:size=13" -nf "$color15" -sb "$color2" -sf "$color0" -i'

alias cp='cp -i'
alias rdesktop='rdesktop -K -P -g 100%'
alias ls='ls --color=auto'
alias ll='ls -lh'

function mega-put {
	mega-put "$@" Uploads/
}
