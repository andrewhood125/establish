# composer dependencies
composer_deps=(php5-cli curl)

# Is composer installed?
_composer_installed() {
  return `hash composer 2>/dev/null`;
}

# Install composer
_composer_up() {
  curl -sS https://getcomposer.org/installer | php -- --quiet > /dev/null
  sudo mv composer.phar /usr/local/bin/composer
}

# Upgrade composer
_composer_upgrade() {
  composer self-update > /dev/null
}

# Remove composer
_composer_down() {
  sudo rm -rf /usr/local/bin/composer
}
