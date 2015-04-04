autoformat_dir="${HOME}/.janus/vim-autoformat"

_janus_vim_autoformat_installed() {
  [ -d "${autoformat_dir}" ]
}

_janus_vim_autoformat_up() {
  git clone --quiet https://github.com/Chiel92/vim-autoformat.git ${autoformat_dir}
}
