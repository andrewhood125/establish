autoformat_dir="${HOME}/.janus/vim-autoformat"

# janus_vim_autoformat dependencies
janus_vim_autoformat_deps=(janus)

# Is janus_vim_autoformat installed?
_janus_vim_autoformat_installed() {
  [ -d "${autoformat_dir}" ]
}

# Install janus_vim_autoformat
_janus_vim_autoformat_up() {
  git clone --quiet https://github.com/Chiel92/vim-autoformat.git ${autoformat_dir}
}

# Upgrade janus_vim_autoformat
_janus_vim_autoformat_upgrade() {
  cd ${autoformat_dir} && git pull --quiet
}

# Remove janus_vim_autoformat
_janus_vim_autoformat_down() {
  rm -rf ${autoformat_dir}
}
