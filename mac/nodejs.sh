# Install nodejs
_nodejs_up() {
  brew install node &> /dev/null
}

# Upgrade nodejs
_nodejs_upgrade() {
  brew upgrade node > /dev/null
}

# Remove nodejs
_nodejs_down() {
  brew remove node > /dev/null
}
