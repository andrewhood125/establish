composer_deps=(php5_cli curl)
load_books "${composer_deps[@]}"
deps=("${composer_deps[@]}" "${deps[@]}")

debian_composer() {
  eval "curl -sS https://getcomposer.org/installer | php"
  eval "sudo mv composer.phar /usr/local/bin/composer"
}
