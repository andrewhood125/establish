laravel_deps=(composer php5_mcrypt)
_load_books "homestead" "${laravel_deps[@]}"
deps=("${laravel_deps[@]}" "${deps[@]}")

_homestead_installed() {
  return hash homestead 2>/dev/null;
}

_homestead_up() {
  eval 'composer global require "laravel/homestead=~2.0"'
}

_homestead() {
  if [[ _homestead_installed ]] ; then
    echo -e "\talready installed."
  else
    _homestead_up
  fi
}
