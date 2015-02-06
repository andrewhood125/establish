composer_deps=(php5_cli curl)
_load_books "${composer_deps[@]}"
deps=("${composer_deps[@]}" "${deps[@]}")

_composer() {
  eval "curl -sS https://getcomposer.org/installer | php"
  eval "sudo mv composer.phar /usr/local/bin/composer"
}
