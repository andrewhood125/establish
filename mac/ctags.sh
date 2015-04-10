# Install ctags
_ctags_up() {
  brew install ctags > /dev/null
}

# Upgrade ctags
_ctags_upgrade() {
  brew upgrade ctags > /dev/null
}

# Remove ctags
_ctags_down() {
  brew remove ctags > /dev/null
}
