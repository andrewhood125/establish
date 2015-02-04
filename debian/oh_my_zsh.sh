oh_my_zsh_deps=(zsh curl)
load_books "${oh_my_zsh_deps[@]}"
deps=("${oh_my_zsh_deps[@]}" "${deps[@]}")

debian_oh_my_zsh() {
  eval "curl -L http://install.ohmyz.sh | sh"
}
