_nodejs_up() {
  eval "echo 'deb http://http.debian.net/debian wheezy-backports main' | sudo tee -a /etc/apt/sources.list.d/establish.list"
  eval "sudo apt-get update"
  eval "sudo apt-get -t wheezy-backports install nodejs"
  eval "sudo ln -s /usr/bin/nodejs /usr/bin/node"
}
