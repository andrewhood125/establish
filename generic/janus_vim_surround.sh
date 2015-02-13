echo -e "\t${BASH_SOURCE}"
_janus_vim_surround_installed() {
  if [[ -d "${HOME}/.janus/vim-surround" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_vim_surround_up() {
  `git clone https://github.com/tpope/vim-surround.git ${HOME}/.janus/vim-surround`
}

_janus_vim_surround() {
  if _janus_vim_surround_installed ; then
    echo -e "\talready installed."
  else
    _janus_vim_surround_up
  fi
}
