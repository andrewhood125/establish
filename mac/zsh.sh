_zsh_up() {
  brew install zsh >/dev/null
}

_zsh_down() {
  brew remove zsh &> /dev/null
}
