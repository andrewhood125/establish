# Install ack
_ack_up() {
  sudo apt-get -qq install ack > /dev/null
}

# Upgrade ack
_ack_upgrade() {
  sudo apt-get -qq install ack > /dev/null
}

# Remove ack
_ack_down() {
  sudo apt-get -qq remove ack > /dev/null
}
