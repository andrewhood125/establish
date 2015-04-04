_janus_vim_html5_installed() {
  [ -d "${HOME}/.janus/html5.vim" ]
}

_janus_vim_html5_up() {
  git clone --quiet https://github.com/othree/html5.vim.git ${HOME}/.janus/html5.vim
}
