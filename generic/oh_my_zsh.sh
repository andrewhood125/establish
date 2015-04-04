oh_my_zsh_deps=(zsh curl)

_oh_my_zsh_installed() {
  [ -d "${HOME}/.oh-my-zsh" ]
}

_oh_my_zsh_up() {
  curl -SsL http://install.ohmyz.sh | sh
}
