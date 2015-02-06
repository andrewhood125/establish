laravel_deps=(composer php5_mcrypt)
_load_books "${laravel_deps[@]}"
deps=("${laravel_deps[@]}" "${deps[@]}")

_laravel() {
  eval 'composer global require "laravel/installer=~1.1"'
  eval 'composer global require "laravel/homestead=~2.0"'
}
