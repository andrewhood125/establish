janus_deps=(vim curl ack ctags ruby)

_janus_installed() {
  [ -d "${HOME}/.vim/janus" ]
}

_janus_up() {
  eval "curl -Lo- https://bit.ly/janus-bootstrap | bash"
}
