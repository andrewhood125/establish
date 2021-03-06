# homestead dependencies
homestead_deps=(composer php5-mcrypt)

# Is homestead installed?
_homestead_installed() {
  [ -d "${HOME}/.composer/vendor/laravel/homestead" ]
}

# Install homestead
_homestead_up() {
  composer --quiet global require "laravel/homestead=~2.0"
}

# Upgrade homestead
_homestead_upgrade() {
  composer --quiet global update laravel/homestead
}

# Remove homestead
_homestead_down() {
  composer --quiet global remove "laravel/homestead"
}
