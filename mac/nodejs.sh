# nodejs dependencies
nodejs_deps=()

# Is nodejs installed?
_nodejs_installed() {
  return `hash node 2>/dev/null`;
}

# Install nodejs
_nodejs_up() {
  brew install node > /dev/null
}

# Upgrade nodejs
_nodejs_upgrade() {
  brew upgrade node > /dev/null
}

# Remove nodejs
_nodejs_down() {
  brew remove node > /dev/null
}
