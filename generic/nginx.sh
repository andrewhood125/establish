echo -e "\t${BASH_SOURCE}"
_load_remote_book "${OS}/nginx.sh"

_nginx_installed() {
  return `hash nginx 2>/dev/null`;
}

_nginx() {
  if _nginx_installed ; then
    echo -e "\talready installed."
  else
    _nginx_up
  fi
}

