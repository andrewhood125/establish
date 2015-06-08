# Is htop installed?
_htop_installed() {
  return `hash htop 2>/dev/null`;
}

# Install htop
_htop_up() {
  brew install htop > /dev/null
}

# Upgrade htop
_htop_upgrade() {
  brew upgrade htop > /dev/null
}

# Remove htop
_htop_down() {
  brew remove htop > /dev/null
}
