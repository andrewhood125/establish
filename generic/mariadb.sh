_load_book "${OS}/mariadb.sh"

_mariadb_installed() {
  [ -d "/etc/mysql" ]
}
