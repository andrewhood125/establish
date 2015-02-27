echo -e "\t${BASH_SOURCE}"
_load_remote_book "${OS}/php5_mcrypt.sh"
mcrypt_deps=(php5_cli)
deps=("${mcrypt_deps[@]}" "${deps[@]}")
_load_books "php5_mcrypt" "${mcrypt_deps[@]}"

_php5_mcrypt() {
  if _php5_mcrypt_installed ; then
    echo -e "\talready installed."
  else
    _php5_mcrypt_up
  fi
}
