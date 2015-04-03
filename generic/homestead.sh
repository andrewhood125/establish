homestead_deps=(composer php5_mcrypt)
deps=("${homestead_deps[@]}" "${deps[@]}")
_load_books "homestead" "${homestead_deps[@]}"

_homestead_installed() {
  return `hash homestead 2>/dev/null`;
}

_homestead_up() {
  eval "composer global require "laravel/homestead=~2.0""
}
