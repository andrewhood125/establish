_janus_vim_emmet_installed() {
  if [[ -d "${HOME}/.janus/emmet-vim" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_vim_emmet_up() {
  eval "git clone https://github.com/mattn/emmet-vim.git ${HOME}/.janus/emmet-vim"
}
