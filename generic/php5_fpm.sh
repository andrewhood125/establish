_load_book "${OS}/php5_fpm.sh"

_php5_fpm_installed() {
  [ -d "/etc/php5/fpm" ]
}
