_vim_installed() {
  return hash vim 2>/dev/null;
}

_vim_up() {
  eval "brew install vim"
}

_vim() {
  if [[ _vim_installed ]] ; then
    echo -e "\talready installed."
  else
    _vim_up
  fi
}
