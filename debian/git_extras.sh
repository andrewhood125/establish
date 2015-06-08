# Install git-extras
_git_extras_up() {
  sudo apt-get -qq install git-extras > /dev/null
}

# Upgrade git-extras
_git_extras_upgrade() {
  sudo apt-get -qq install git-extras > /dev/null
}

# Remove git-extras
_git_extras_down() {
  sudo apt-get -qq remove git-extras > /dev/null
}
