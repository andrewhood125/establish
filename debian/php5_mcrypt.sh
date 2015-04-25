_php5_mcrypt_installed() {
  [ -e "/etc/php5/mods-available/mcrypt.ini" ]
}

_php5_mcrypt_up() {
  sudo apt-get -qq install php5-mcrypt 2> /dev/null
}
