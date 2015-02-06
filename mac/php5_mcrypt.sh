mcrypt_deps=(php5_cli)
_load_books "php5_mcrypt" "${mcrypt_deps[@]}"
deps=("${mcrypt_deps[@]}" "${deps[@]}")

_php5_mcrypt_installed() {
  if [[ -f "/usr/local/etc/php/5.6/conf.d/ext-mcrypt.ini" ]] ; then
    return 0;
  fi
  return 1;
}

_php5_mcrypt_up() {
  eval "brew install php56-mcrypt"
}

_php5_mcrypt() {
  if [[ _php5_mcrypt_installed ]] ; then
    echo -e "\talready installed."
  else
    _php5_mcrypt_up
  fi
}
