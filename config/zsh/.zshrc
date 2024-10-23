setopt HIST_SAVE_NO_DUPS

source $ZDOTDIR/aliases

# Plugins

[[ -r ~/Repo/zsh-plugins/znap/znap.zsh ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/Repo/zsh-plugins/znap
source ~/Repo/zsh-plugins/znap/znap.zsh

znap prompt sindresorhus/pure

znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-history-substring-search

bindkey '^I'   complete-word
bindkey '^[[Z' autosuggest-accept
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

eval "$(zoxide init zsh)"

function trash() {
  rm -rf ~/.local/share/Trash/*
}

function clone() {
  url="$1"

  if [ $# -eq 0 ]; then
    >&2 echo "No url provided"
    return 1
  fi

  gh repo clone $url
}

function commit() {
    msg="$1"

    if [ $# -eq 0 ]; then
      >&2 echo "No commit message provided"
      return 1
    fi

    git commit -m $1
}

function push() {
    branch="$1"

    if [ $# -eq 0 ]; then
      >&2 echo "No branch name provided"
      return 1
    fi

    git push -u origin $1
}

# function pkl() {
#   if [ $# -eq 0 ]; then
#     >&2 echo "No arguments provided"
#     return 1
#   fi

#   command="$1"
#   filename="$2"
#   outputfilename="''${filename%.pkl}.json"

#   case "$command" in
#     eval)
#       jpkl eval -f json -o "$outputfilename" "$filename"
#       ;;
#     *)
#       echo "Error: Unknown command '$command'"
#       return 1
#       ;;
#   esac
# }
