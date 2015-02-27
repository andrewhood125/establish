npm_deps=(nodejs curl)
deps=("${npm_deps[@]}" "${deps[@]}")
_load_books "npm" "${npm_deps[@]}"

_npm_installed() {
  return `hash npm 2>/dev/null`;
}

_npm_up() {
  eval "curl -Lo- https://npmjs.org/install.sh | sudo sh"
}

_npm() {
  if _npm_installed; then
    echo -e "\talready installed."
  else
    _npm_up
  fi
}
