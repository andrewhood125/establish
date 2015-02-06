janus_deps=(vim curl ack ctags ruby)
_load_books "janus" "${janus_deps[@]}"
deps=("${janus_deps[@]}" "${deps[@]}")

_janus() {
  eval "curl -Lo- https://bit.ly/janus-bootstrap | bash"
}
