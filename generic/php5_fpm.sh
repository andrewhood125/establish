_load_book "${OS}/php5_fpm.sh"

_php5_fpm_installed() {
  [ -d "/etc/php5/fpm" ]
}

_php5_fpm() {
  if _php5_fpm_installed; then
    echo -e "\talready installed."
  else
    _php5_fpm_up
  fi
}
