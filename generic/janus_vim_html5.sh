html5_dir="${HOME}/.janus/html5.vim"

# janus_vim_html5 dependencies
janus_vim_html5_deps=(janus)

# Is janus_vim_html5 installed?
_janus_vim_html5_installed() {
  [ -d "${html5_dir}" ]
}

# Install janus_vim_html5
_janus_vim_html5_up() {
  git clone --quiet https://github.com/othree/html5.vim.git ${html5_dir}
}

# Upgrade janus_vim_html5
_janus_vim_html5_upgrade() {
  cd ${html5_dir} && git pull --quiet > /dev/null
}

# Remove janus_vim_html5
_janus_vim_html5_down() {
  rm -rf ${html5_dir}
}
