# vim-tlib dependencies
vim_tlib_deps=(pathogen)

vim_tlib_dir="${HOME}/.vim/bundle/vim-tlib"

# Is vim-tlib installed?
_vim_tlib_installed() {
  [ -d "$vim_tlib_dir" ]
}

# Install vim-tlib
_vim_tlib_up() {
  git clone --quiet https://github.com/tomtom/tlib_vim $vim_tlib_dir
}

# Upgrade vim-tlib
_vim_tlib_upgrade() {
  cd $vim_tlib_dir && git pull --quiet > /dev/null
}

# Remove vim-tlib
_vim_tlib_down() {
  rm -rf $vim_tlib_dir
}
