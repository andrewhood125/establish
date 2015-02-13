echo -e "\t${BASH_SOURCE}"
janus_deps=(vim curl ack ctags ruby)
deps=("${janus_deps[@]}" "${deps[@]}")
_load_books "janus" "${janus_deps[@]}"

_janus_installed() {
  if [[ -d "${HOME}/.vim/janus" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_up() {
  `curl -Lo- https://bit.ly/janus-bootstrap | bash`
}

_janus() {
  if _janus_installed ; then
    echo -e "\talready installed."
  else
    _janus_up
  fi
}
