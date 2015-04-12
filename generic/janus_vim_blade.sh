blade_dir="${HOME}/.janus/vim-blade"

# janus_vim_blade dependencies
janus_vim_blade_deps=(janus)

# Is janus_vim_blade installed?
_janus_vim_blade_installed() {
  [ -d "${blade_dir}" ]
}

# Install janus_vim_blade
_janus_vim_blade_up() {
  git clone --quiet https://github.com/xsbeats/vim-blade.git ${blade_dir}
}

# Upgrade janus_vim_blade
_janus_vim_blade_upgrade() {
  cd ${blade_dir} && git pull --quiet > /dev/null
}

# Remove janus_vim_blade
_janus_vim_blade_down() {
  rm -rf ${blade_dir}
}
