_load_book "${OS}/php5_mysql.sh"

_php5_mysql_installed() {
  [ -e "/etc/php5/mods-available/mysql.ini" ]
}
