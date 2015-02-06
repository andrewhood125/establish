_ctags_installed() {
  return hash ctags 2>/dev/null;
}

_ctags_up() {
  eval "brew install ctags"
}

_ctags() {
  if [[ _ctags_installed ]] ; then
    echo -e "\talready installed."
  else
    _ctags_up
  fi
}
