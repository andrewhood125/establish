zsh_syntax_highlighting_deps=(oh_my_zsh)

_zsh_syntax_highlighting_installed() {
  if [[ -d "${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]] ; then
    return 0;
  fi
  return 1;
}

_zsh_syntax_highlighting_up() {
  eval "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
}
