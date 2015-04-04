_nodejs_up() {
  echo 'deb http://http.debian.net/debian wheezy-backports main' | sudo tee -a /etc/apt/sources.list.d/establish.list
  sudo apt-get -qq update
  sudo apt-get -qq -t wheezy-backports install nodejs > /dev/null
  sudo ln -s /usr/bin/nodejs /usr/bin/node
}
