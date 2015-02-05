laravel_deps=(composer php5_mcrypt)
load_books "${laravel_deps[@]}"
deps=("${laravel_deps[@]}" "${deps[@]}")

mac_laravel() {
  eval 'composer global require "laravel/installer=~1.1"'
  eval 'composer global require "laravel/homestead=~2.0"'
}
