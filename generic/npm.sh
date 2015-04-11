# npm dependencies
npm_deps=(nodejs curl)

# Is npm installed?
_npm_installed() {
  return `hash npm 2>/dev/null`;
}

# Install npm
_npm_up() {
  curl -SsLo- https://npmjs.org/install.sh | sudo sh
}

# Upgrade npm
_npm_upgrade() {
  sudo npm install npm -g
}

# Remove npm
_npm_down() {
  sudo npm uninstall npm -g
}
