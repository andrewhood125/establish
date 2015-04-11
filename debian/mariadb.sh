# Is mariadb installed?
_mariadb_installed() {
  return `hash mysql 2>/dev/null`;
}

# Install mariadb
_mariadb_up() {
  sudo apt-get -qq install python-software-properties > /dev/null
  sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
  sudo add-apt-repository 'deb http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.0/debian wheezy main'
  sudo apt-get -qq update
  sudo apt-get -qq install mariadb-server
}

# Upgrade mariadb
_mariadb_upgrade() {
  sudo apt-get -qq install mariadb-server > /dev/null
}

# Remove mariadb
_mariadb_down() {
  sudo apt-get -qq remove mariadb-server > /dev/null
}
