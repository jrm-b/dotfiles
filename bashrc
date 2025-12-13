ps -ef | grep -v grep | grep ssh-agent > /dev/null && pkill ssh-agent
eval $(ssh-agent -s) > /dev/null

mkcd() {
  local target="${1}"
  mkdir -p "${target}" && cd "${target}"
}

alias -- ls="ls --color"
alias -- l="ls --group-directories-first -lh"
alias -- la="ls --group-directories-first -lhAv"
alias -- grep="grep --color"
alias -- ll="eza -lg --group-directories-first --tree --level 1 --icons"
alias -- lla="eza -lA --group-directories-first --tree --level 1 --icons"
alias -- lg="lazygit"

alias -- gs="git status"
alias -- gl="git log --oneline"
alias -- glg="git log --oneline --graph"
alias -- tree="tree -C"
alias -- treeg="tree -C --gitignore"

alias -- dcd="docker compose down -v"
alias -- dcu="docker compose up -d"
alias -- dps="docker ps"
alias -- dpsa="docker ps --all"
alias -- dsp="docker system prune --all"
alias -- dcl="docker compose logs"

eval "$(starship init bash)"
