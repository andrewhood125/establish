oh_my_zsh_deps=(zsh curl)
_load_books "${oh_my_zsh_deps[@]}"
deps=("${oh_my_zsh_deps[@]}" "${deps[@]}")

_oh_my_zsh() {
  eval "curl -L http://install.ohmyz.sh | sh"
}
