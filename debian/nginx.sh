# Is nginx installed?
_nginx_installed() {
  [ -d "/etc/nginx" ]
}

# Install nginx
_nginx_up() {
  sudo apt-get -qq install nginx > /dev/null
}

# Upgrade nginx
_nginx_upgrade() {
  sudo apt-get -qq install nginx > /dev/null
}

# Remove nginx
_nginx_down() {
  sudo apt-get -qq remove nginx > /dev/null
}
