_janus_vim_emmet_installed() {
  if [[ -d "~/.janus/emmet-vim" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_vim_emmet_up() {
  eval "git clone https://github.com/mattn/emmet-vim.git ~/.janus/emmet-vim"
}

_janus_vim_emmet() {
  if [[ _janus_vim_emmet_installed ]] ; then
    echo -e "\talready installed."
  else
    _janus_vim_emmet_up
  fi
}
