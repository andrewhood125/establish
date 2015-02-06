janus_deps=(vim curl ack ctags ruby)
_load_books "janus" "${janus_deps[@]}"
deps=("${janus_deps[@]}" "${deps[@]}")

_janus_installed() {
  if [[ -d "~/.vim/janus" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_up() {
  eval "curl -Lo- https://bit.ly/janus-bootstrap | bash"
}

_janus() {
  if [[ _janus_installed ]] ; then
    echo -e "\talready installed."
  else
    _janus_up
  fi
}
