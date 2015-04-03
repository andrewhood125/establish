_load_book "${OS}/php5_mcrypt.sh"
mcrypt_deps=(php5_cli)
deps=("${mcrypt_deps[@]}" "${deps[@]}")
_load_books "php5_mcrypt" "${mcrypt_deps[@]}"
