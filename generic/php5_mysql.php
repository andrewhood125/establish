_load_book "${OS}/php5_mysql.sh"

_php5_mysql_installed() {
  [ -e "/etc/php5/mods-available/mysql.ini" ]
}

_php5_mysql() {
  if _php5_mysql_installed; then
    echo -e "\tphp5-mysql already installed."
  else
    _php5_mysql_up
  fi
}
