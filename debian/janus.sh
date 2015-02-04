janus_deps=(vim curl ack ctags ruby)
load_books "${janus_deps[@]}"
deps=("${janus_deps[@]}" "${deps[@]}")

debian_janus() {
  eval "curl -Lo- https://bit.ly/janus-bootstrap | bash"
}
