echo -e "\t${BASH_SOURCE}"
composer_deps=(php5_cli curl)
deps=("${composer_deps[@]}" "${deps[@]}")
_load_books "composer" "${composer_deps[@]}"

_composer_installed() {
  return `hash composer 2>/dev/null`;
}
_composer_up() {
  `curl -sS https://getcomposer.org/installer | php`
  `sudo mv composer.phar /usr/local/bin/composer`
}

_composer() {
  if _composer_installed ; then
    echo -e "\talready installed."
  else
    _composer_up
  fi
}
