echo -e "\t${BASH_SOURCE}"
_php5_mcrypt_installed() {
  if [[ -f "/usr/local/etc/php/5.6/conf.d/ext-mcrypt.ini" ]] ; then
    return 0;
  fi
  return 1;
}

_php5_mcrypt_up() {
  `brew install php56-mcrypt`
}
