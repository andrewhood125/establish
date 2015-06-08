# Is git installed?
_git_installed() {
  return `hash git 2>/dev/null`;
}

# Install git
_git_up() {
  brew install git > /dev/null
}

# Upgrade git
_git_upgrade() {
  brew upgrade git > /dev/null
}

# Remove git
_git_down() {
  brew remove git > /dev/null
}
