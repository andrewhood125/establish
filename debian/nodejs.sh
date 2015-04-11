nodejs_list="/etc/apt/sources.list.d/nodejs.list"

# Install nodejs
_nodejs_up() {
  echo 'deb http://http.debian.net/debian wheezy-backports main' | sudo tee -a ${nodejs_list}
  sudo apt-get -qq update
  sudo apt-get -qq -t wheezy-backports install nodejs > /dev/null
  sudo ln -s /usr/bin/nodejs /usr/bin/node
}

# Upgrade nodejs
_nodejs_upgrade() {
  sudo apt-get -qq -t wheezy-backports install nodejs > /dev/null
}

# Remove nodejs
_nodejs_down() {
  sudo apt-get -qq remove nodejs > /dev/null
}
