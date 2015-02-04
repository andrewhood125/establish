mcrypt_deps=(php5_cli)
load_books "${mcrypt_deps[@]}"
deps=("${mcrypt_deps[@]}" "${deps[@]}")

debian_php5_mcrypt() {
  eval "sudo apt-get install php5-mcrypt"
}
