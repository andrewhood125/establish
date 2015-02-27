_load_remote_book "${OS}/php5_fpm.sh"

_php5_fpm_installed() {
  return `hash php5-fpm 2>/dev/null`;
}

_php5_fpm() {
  if _php5_fpm_installed; then
    echo -e "\talready installed."
  else
    _php5_fpm_up
  fi
}
