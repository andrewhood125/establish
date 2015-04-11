# janus dependencies
janus_deps=(vim curl ctags ruby)

# Is janus installed?
_janus_installed() {
  [ -d "${HOME}/.vim/janus" ]
}

# Install janus
_janus_up() {
  curl -sSLo- https://bit.ly/janus-bootstrap | bash
}

# Upgrade janus
_janus_upgrade() {
  cd ~/.vim/janus && rake
}

# Remove janus
_janus_down() {
  rm -rf ~/.vim
}
