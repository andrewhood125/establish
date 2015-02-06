_zsh_installed() {
  return hash zsh 2>/dev/null;
}
_zsh_up() {
  eval "brew install zsh"
}

_zsh() {
  if [[ _zsh_installed ]] ; then
    echo -e "\talready installed."
  else
    _zsh_up
  fi
}
