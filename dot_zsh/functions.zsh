# fzf improvement
function fzf-lovely(){

	if [ "$1" = "h" ]; then
		fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
 	                echo {} is a binary file ||
	                 (bat --style=numbers --color=always {} ||
	                  highlight -O ansi -l {} ||
	                  coderay {} ||
	                  rougify {} ||
	                  cat {}) 2> /dev/null | head -500'

	else
	        fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
	                         echo {} is a binary file ||
	                         (bat --style=numbers --color=always {} ||
	                          highlight -O ansi -l {} ||
	                          coderay {} ||
	                          rougify {} ||
	                          cat {}) 2> /dev/null | head -500'
	fi
}


function genuuid() {
    echo $1-`uuidgen | cut -b 1-6`
}

function touch_slugify() {
    touch `slugify $1`.txt
}

function ssr() {
    sleep $1 && xdotool key ctrl+r
}

function convert2seconds() {
  local horas=$1
  local minutos=$2
  local segundos=$3
  echo "$((horas * 3600 + minutos * 60 + segundos))"
}

function loadenv() {
  source `just venv_location`
}

function pyclean() {
    find . -type f -name '*.py[co]' -delete -o -type d -name __pycache__ -delete
}



#function slugify() {
#    echo $1 | iconv -t ascii//TRANSLIT | sed -r s/[^a-zA-Z0-9]+/-/g | sed -r s/^-+\|-+$//g | tr A-Z a-z
#}
