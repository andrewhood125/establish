echo -e "\t${BASH_SOURCE}"
homestead_deps=(composer php5_mcrypt)
deps=("${homestead_deps[@]}" "${deps[@]}")
_load_books "homestead" "${homestead_deps[@]}"

_homestead_installed() {
  return `hash homestead 2>/dev/null`;
}

_homestead_up() {
  eval "composer global require "laravel/homestead=~2.0""
}

_homestead() {
  if _homestead_installed ; then
    echo -e "\talready installed."
  else
    _homestead_up
  fi
}
