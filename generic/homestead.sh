homestead_deps=(composer php5_mcrypt)

_homestead_installed() {
  return `hash homestead 2>/dev/null`;
}

_homestead_up() {
  composer --quiet global require "laravel/homestead=~2.0"
}
