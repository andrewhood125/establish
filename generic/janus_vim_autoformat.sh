autoformat_dir="${HOME}/.janus/vim-autoformat"
_janus_vim_autoformat_installed() {
  if [[ -d "${autoformat_dir}" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_vim_autoformat_up() {
  eval "git clone https://github.com/Chiel92/vim-autoformat.git ${autoformat_dir}"
}
