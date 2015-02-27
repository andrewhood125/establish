echo -e "\t${BASH_SOURCE}"
npm_deps=(nodejs)
deps=("${npm_deps[@]}" "${deps[@]}")
_load_books "npm" "${npm_deps[@]}"

_npm_installed() {
  return `hash npm 2>/dev/null`;
}

_npm() {
  if _npm_installed; then
    echo -e "\talready installed."
  else
    _npm_up
  fi
}
