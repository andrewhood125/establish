composer_deps=(php5_cli curl)
_load_books "${composer_deps[@]}"
deps=("${composer_deps[@]}" "${deps[@]}")

_composer_installed() {
  if [[ -f "/usr/local/bin/composer" ]] ; then
    return 0;
  fi
  return 1;
}
_composer_up() {
  eval "curl -sS https://getcomposer.org/installer | php"
  eval "sudo mv composer.phar /usr/local/bin/composer"
}

_composer() {
  if [[ _composer_installed ]] ; then
    echo "Composer already installed."
  else
    _composer_up
  fi
}
