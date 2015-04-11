emmet_dir="${HOME}/.janus/emmet-vim"

# janus_vim_emmet dependencies
janus_vim_emmet_deps=(janus)

# Is janus_vim_emmet installed?
_janus_vim_emmet_installed() {
  [ -d "${emmet_dir}" ]
}

# Install janus_vim_emmet
_janus_vim_emmet_up() {
  git clone --quiet https://github.com/mattn/emmet-vim.git ${emmet_dir}
}

# Upgrade janus_vim_emmet
_janus_vim_emmet_upgrade() {
  cd ${emmet_dir} && git pull --quiet > /dev/null
}

# Remove janus_vim_emmet
_janus_vim_emmet_down() {
  rm -rf ${emmet_dir}
}
