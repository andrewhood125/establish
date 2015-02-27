echo -e "\t${BASH_SOURCE}"

_nodejs_up() {
  echo "deb http://http.debian.net/debian wheezy-backports main" > /etc/apt/sources.list.d/establish.list
  eval "sudo apt-get update"
  eval "sudo apt-get -t wheezy-backports install nodejs"
  eval "sudo ln -s /usr/bin/nodejs /usr/bin/node"
}
