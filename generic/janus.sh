janus_deps=(vim curl ack ctags ruby)

_janus_installed() {
  [ -d "${HOME}/.vim/janus" ]
}

_janus_up() {
  (curl -SsLo- https://bit.ly/janus-bootstrap | bash)>/dev/null 
}
