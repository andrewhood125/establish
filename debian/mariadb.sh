_mariadb_up() {
  sudo apt-get -qq install python-software-properties > /dev/null
  sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
  sudo add-apt-repository 'deb http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.0/debian wheezy main'
  sudo apt-get -qq update
  sudo apt-get -qq install mariadb-server > /dev/null
}
