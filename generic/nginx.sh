_load_book "${OS}/nginx.sh"

_nginx_installed() {
  [ -d "/etc/nginx" ]
}

_nginx() {
  if _nginx_installed ; then
    echo -e "\talready installed."
  else
    _nginx_up
  fi
}

