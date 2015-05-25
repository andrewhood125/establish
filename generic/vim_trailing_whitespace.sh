# vim-trailing-whitespace dependencies
vim_trailing_whitespace_deps=(pathogen)

vim_trailing_whitespace_dir="${HOME}/.vim/bundle/vim-trailing-whitespace"

# Is vim-trailing-whitespace installed?
_vim_trailing_whitespace_installed() {
  [ -d "$vim_trailing_whitespace_dir" ]
}

# Install vim-trailing-whitespace
_vim_trailing_whitespace_up() {
  git clone --quiet https://github.com/bronson/vim-trailing-whitespace $vim_trailing_whitespace_dir
}

# Upgrade vim-trailing-whitespace
_vim_trailing_whitespace_upgrade() {
  cd $vim_trailing_whitespace_dir && git pull --quiet > /dev/null
}

# Remove vim-trailing-whitespace
_vim_trailing_whitespace_down() {
  rm -rf $vim_trailing_whitespace_dir
}
