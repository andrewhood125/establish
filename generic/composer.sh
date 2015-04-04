composer_deps=(php5_cli curl)

_composer_installed() {
  return `hash composer 2>/dev/null`;
}

_composer_up() {
  curl -sS https://getcomposer.org/installer | php -- --quiet > /dev/null
  sudo mv composer.phar /usr/local/bin/composer
}
