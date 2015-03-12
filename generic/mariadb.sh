_load_book "${OS}/mariadb.sh"

_mariadb_installed() {
  [ -d "/etc/mysql" ]
}

_mariadb() {
  if _mariadb_installed ; then
    echo -e "\tMariaDB or MySQL already installed."
  else
    _mariadb_up
  fi
}
