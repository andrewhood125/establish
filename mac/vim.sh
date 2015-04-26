# Install vim
_vim_up() {
  brew install vim > /dev/null
}

# Upgrade vim
_vim_upgrade() {
  brew upgrade vim
}

# Remove vim
_vim_down() {
  brew remove vim &> /dev/null
}
