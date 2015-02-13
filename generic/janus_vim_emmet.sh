echo -e "\t${BASH_SOURCE}"
_janus_vim_emmet_installed() {
  if [[ -d "${HOME}/.janus/emmet-vim" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_vim_emmet_up() {
  `git clone https://github.com/mattn/emmet-vim.git ${HOME}/.janus/emmet-vim`
}

_janus_vim_emmet() {
  if _janus_vim_emmet_installed ; then
    echo -e "\talready installed."
  else
    _janus_vim_emmet_up
  fi
}
