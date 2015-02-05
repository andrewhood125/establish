mcrypt_deps=(php5_cli)
load_books "${mcrypt_deps[@]}"
deps=("${mcrypt_deps[@]}" "${deps[@]}")

mac_php5_mcrypt() {
  eval "brew install php56-mcrypt"
}
