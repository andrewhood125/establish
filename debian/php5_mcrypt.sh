echo -e "\t${BASH_SOURCE}"
_php5_mcrypt_installed() {
  return `hash dpkg -s php5-mcrypt 2>/dev/null`;
}

_php5_mcrypt_up() {
  eval "sudo apt-get install php5-mcrypt"
}
