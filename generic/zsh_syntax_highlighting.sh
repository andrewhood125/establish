zsh_syntax_highlighting_deps=(oh_my_zsh)

_zsh_syntax_highlighting_installed() {
  [ -d "${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]
}

_zsh_syntax_highlighting_up() {
  git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
}
