surround_dir="${HOME}/.janus/vim-surround"

# janus_vim_surround dependencies
janus_vim_surround_deps=(janus)

# Is janus_vim_surround installed?
_janus_vim_surround_installed() {
  [ -d "${surround_dir}" ]
}

# Install janus_vim_surround
_janus_vim_surround_up() {
  git clone --quiet https://github.com/tpope/vim-surround.git ${surround_dir}
}

# Upgrade janus_vim_surround
_janus_vim_surround_upgrade() {
  cd ${surround_dir} && git pull --quiet > /dev/null
}

# Remove janus_vim_surround
_janus_vim_surround_down() {
  rm -rf ${surround_dir}
}
