_janus_vim_emmet_installed() {
  [ -d "${HOME}/.janus/emmet-vim" ]
}

_janus_vim_emmet_up() {
  git clone --quiet https://github.com/mattn/emmet-vim.git ${HOME}/.janus/emmet-vim
}
