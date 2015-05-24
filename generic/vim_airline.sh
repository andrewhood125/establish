# vim-airline dependencies
vim_airline_deps=(pathogen)

vim_airline_dir="${HOME}/.vim/bundle/vim-airline"

# Is vim-airline installed?
_vim_airline_installed() {
  [ -d "$vim_airline_dir" ]
}

# Install vim-airline
_vim_airline_up() {
  git clone --quiet https://github.com/bling/vim-airline $vim_airline_dir
}

# Upgrade vim-airline
_vim_airline_upgrade() {
  cd $vim_airline_dir && git pull --quiet > /dev/null
}

# Remove vim-airline
_vim_airline_down() {
  rm -rf $vim_airline_dir
}
