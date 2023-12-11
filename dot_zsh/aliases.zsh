#### ALIASES ####

alias dotfiles="cd ~/dotfiles"
# alias j=/snap/bin/just

# if exa exist, alias to ls
if (( ${+commands[exa]} )); then
    alias ls='exa'
    alias l='ls'
    alias ll='exa -l'
    alias lll='exa -l | less'
    alias lla='exa -la'
    alias llt='exa -T'
    alias llfu='exa -bghHliS --git'
else
    alias l='ls -1A'         # Lists in one column, hidden files.
    alias ll='ls -lh'        # Lists human readable sizes.
    alias lr='ll -R'         # Lists human readable sizes, recursively.
    alias la='ll -A'         # Lists human readable sizes, hidden files.
    alias lm='la | "$PAGER"' # Lists human readable sizes, hidden files through pager.
    alias lx='ll -XB'        # Lists sorted by extension (GNU only).
    alias lk='ll -Sr'        # Lists sorted by size, largest last.
    alias lt='ll -tr'        # Lists sorted by date, most recent last.
    alias lc='lt -c'         # Lists sorted by date, most recent last, shows change time.
    alias lu='lt -u'         # Lists sorted by date, most recent last, shows access time.
fi

alias sl='ls' # :__)

# Django
alias djrs="python manage.py runserver"
alias drsp="python manage.py runserver_plus"
alias dshp="python manage.py shell_plus"
alias dmk="python manage.py makemigrations"
alias dmg="python manage.py migrate"

if (( $+commands[ggrep] )); then
    export GREP_OPTIONS='-i --color'
    alias ggrep="ggrep $GREP_OPTIONS"
fi

alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

# chezmoi
if (( $+commands[chezmoi] )); then
    alias cza="chezmoi apply -v"
    alias czadd="chezmoi add -v"
    alias czd="chezmoi diff"
    alias czl="chezmoi git log"
fi
