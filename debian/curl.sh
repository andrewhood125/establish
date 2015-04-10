# Install curl
_curl_up() {
  sudo apt-get -qq install curl > /dev/null
}

# Upgrade curl
_curl_upgrade() {
  sudo apt-get -qq install curl > /dev/null
}

# Remove curl
_curl_down() {
  sudo apt-get -qq remove curl > /dev/null
}
