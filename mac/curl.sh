# Install curl
_curl_up() {
  brew install curl > /dev/null
}

# Upgrade curl
_curl_upgrade() {
  brew upgrade curl > /dev/null
}

# Remove curl
_curl_down() {
  brew remove curl > /dev/null
}
