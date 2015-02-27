echo -e "\t${BASH_SOURCE}"
_load_remote_book "${OS}/vim.sh"

_vim_installed() {
  return `hash vim 2>/dev/null`;
}

_vim() {
  if _vim_installed ; then
    echo -e "\talready installed."
  else
    _vim_up
  fi
}
