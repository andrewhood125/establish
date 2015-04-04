_php5_mcrypt_installed() {
  [ -f "/usr/local/etc/php/5.6/conf.d/ext-mcrypt.ini" ]
}

_php5_mcrypt_up() {
  `brew install php56-mcrypt`
}
