janus_deps=(vim curl ack ctags ruby)

_janus_installed() {
  if [[ -d "${HOME}/.vim/janus" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_up() {
  eval "curl -Lo- https://bit.ly/janus-bootstrap | bash"
}
