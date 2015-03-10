#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
PS2='> '
PS3='> '
PS4='+ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

#####################################
## CLI/Lution specific stuff below ##
#####################################

alias lution='initialization'
alias wirelessinfo='less /usr/lib/wireless'
alias starttts='systemctl start espeakup'
alias stoptts='systemctl stop espeakup'
alias i1='cat /usr/lib/info1'
alias i2='cat /usr/lib/info2'
alias i3='cat /usr/lib/info3'
alias i4='cat /usr/lib/info4'
alias i5='cat /usr/lib/info5'
alias i6='cat /usr/lib/info6'
alias i7='cat /usr/lib/info7'
alias i8='cat /usr/lib/info8'
alias i9='cat /usr/lib/info9'
alias i10='cat /usr/lib/info10'
alias i11='cat /usr/lib/info11'

alias f1='setfont LatGrkCyr-12x22.psfu.gz'
alias f2='setfont ter-222b.psf.gz'
alias f3='setfont ter-224b.psf.gz'

alias l1='localectl set-locale LANG=en_US.utf8 && exit'
alias l2='localectl set-locale LANG=de_DE.utf8 && exit'
alias l3='localectl set-locale LANG=nl_NL.utf8 && exit'
alias l4='localectl set-locale LANG=el_GR.utf8 && exit'             
alias l5='localectl set-locale LANG=nn_NO.utf8 && exit'
alias l6='localectl set-locale LANG=it_IT.utf8 && exit'
alias l7='localectl set-locale LANG=es_ES.utf8 && exit'
alias l8='localectl set-locale LANG=ru_RU.utf8 && exit'
alias l9='localectl set-locale LANG=pl_PL.utf8 && sexit'
alias l10='localectl set-locale LANG=hu_HU.utf8 && exit'
alias l11='localectl set-locale LANG=pt_PT.utf8 && exit'


