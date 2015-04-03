oh_my_zsh_deps=(zsh curl)

_oh_my_zsh_installed() {
  if [[ -d "${HOME}/.oh-my-zsh" ]] ; then
    return 0;
  fi
  return 1;
}

_oh_my_zsh_up() {
  eval "curl -L http://install.ohmyz.sh | sh"
}
