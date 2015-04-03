composer_deps=(php5_cli curl)
deps=("${composer_deps[@]}" "${deps[@]}")
_load_books "composer" "${composer_deps[@]}"

_composer_installed() {
  return `hash composer 2>/dev/null`;
}
_composer_up() {
  eval "curl -sS https://getcomposer.org/installer | php"
  eval "sudo mv composer.phar /usr/local/bin/composer"
}
