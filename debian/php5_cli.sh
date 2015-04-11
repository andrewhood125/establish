# Install php5_cli
_php5_cli_up() {
  sudo apt-get -qq install php5-cli > /dev/null
}

# Upgrade php5_cli
_php5_cli_upgrade() {
  sudo apt-get -qq install php5-cli > /dev/null
}

# Remove php5_cli
_php5_cli_down() {
  sudo apt-get -qq remove php5-cli > /dev/null
}
