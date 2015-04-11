airline_dir="${HOME}/.janus/vim-airline"

# janus_vim_airline dependencies
janus_vim_airline_deps=(janus)

# Is janus_vim_airline installed?
_janus_vim_airline_installed() {
  [ -d "${airline_dir}" ]
}

# Install janus_vim_airline
_janus_vim_airline_up() {
  git clone --quiet https://github.com/bling/vim-airline.git ${airline_dir}
}

# Upgrade janus_vim_airline
_janus_vim_airline_upgrade() {
  cd ${airline_dir} && git pull --quiet
}

# Remove janus_vim_airline
_janus_vim_airline_down() {
  rm -rf ${airline_dir}
}
