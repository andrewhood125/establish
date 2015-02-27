_php5_mcrypt_installed() {
  if [[ -a "/etc/php5/mods-available/mcrypt.ini" ]] ; then
    return 0;
  else
    return 1;
  fi
}

_php5_mcrypt_up() {
  eval "sudo apt-get -y -q install php5-mcrypt"
}
