_janus_vim_blade_installed() {
  [ -d "${HOME}/.janus/vim-blade" ]
}

_janus_vim_blade_up() {
  git clone --quiet https://github.com/xsbeats/vim-blade.git ${HOME}/.janus/vim-blade
}
