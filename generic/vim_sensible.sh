# vim-sensible dependencies
vim_sensible_deps=(pathogen)

vim_sensible_dir="${HOME}/.vim/bundle/vim-sensible"

# Is vim-sensible installed?
_vim_sensible_installed() {
  [ -d "$vim_sensible_dir" ]
}

# Install vim-sensible
_vim_sensible_up() {
  git clone --quiet https://github.com/tpope/vim-sensible $vim_sensible_dir
}

# Upgrade vim-sensible
_vim_sensible_upgrade() {
  cd $vim_sensible_dir && git pull --quiet > /dev/null
}

# Remove vim-sensible
_vim_sensible_down() {
  rm -rf $vim_sensible_dir
}
