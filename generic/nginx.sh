_load_book "${OS}/nginx.sh"

_nginx_installed() {
  [ -d "/etc/nginx" ]
}
