# vim-delimitmate dependencies
vim_delimitmate_deps=(pathogen)

vim_delimitmate_dir="${HOME}/.vim/bundle/vim-delimitmate"

# Is vim-delimitmate installed?
_vim_delimitmate_installed() {
  [ -d "$vim_delimitmate_dir" ]
}

# Install vim-delimitmate
_vim_delimitmate_up() {
  git clone --quiet https://github.com/Raimondi/delimitMate $vim_delimitmate_dir
}

# Upgrade vim-delimitmate
_vim_delimitmate_upgrade() {
  cd $vim_delimitmate_dir && git pull --quiet > /dev/null
}

# Remove vim-delimitmate
_vim_delimitmate_down() {
  rm -rf $vim_delimitmate_dir
}
