mcrypt_deps=(php5_cli)
_load_books "${mcrypt_deps[@]}"
deps=("${mcrypt_deps[@]}" "${deps[@]}")

_php5_mcrypt() {
  eval "brew install php56-mcrypt"
}
