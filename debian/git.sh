# Is git installed?
_git_installed() {
  return `hash git 2>/dev/null`;
}

# Install git
_git_up() {
  sudo apt-get -qq install git > /dev/null
}

# Upgrade git
_git_upgrade() {
  sudo apt-get -qq install git > /dev/null
}

# Remove git
_git_down() {
  sudo apt-get -qq remove git > /dev/null
}
