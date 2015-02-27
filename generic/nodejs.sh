echo -e "\t${BASH_SOURCE}"
. "${OS}/nodejs.sh"

_nodejs_installed() {
  return `hash node 2>/dev/null`;
}

_nodejs() {
  if _nodejs_installed; then
    echo -e "\talready installed."
  else
    _nodejs_up
  fi
}
