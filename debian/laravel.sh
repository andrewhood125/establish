laravel_deps=(composer php5_mcrypt)
load_books "${laravel_deps[@]}"
deps=("${laravel_deps[@]}" "${deps[@]}")

debian_laravel() {
  # noop just deps
}
