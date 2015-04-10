# Install ctags
_ctags_up() {
  sudo apt-get -qq install ctags > /dev/null
}

# Upgrade ctags
_ctags_upgrade() {
  sudo apt-get -qq install ctags > /dev/null
}

# Remove ctags
_ctags_down() {
  sudo apt-get -qq remove ctags > /dev/null
}
