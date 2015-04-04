_janus_vim_surround_installed() {
  [ -d "${HOME}/.janus/vim-surround" ]
}

_janus_vim_surround_up() {
  git clone --quiet https://github.com/tpope/vim-surround.git ${HOME}/.janus/vim-surround
}
