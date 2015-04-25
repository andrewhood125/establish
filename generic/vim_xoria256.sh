# vim-xoria256 dependencies
vim_xoria256_deps=(pathogen)

vim_xoria256_dir="${HOME}/.vim/bundle/vim-xoria256"

# Is vim-xoria256 installed?
_vim_xoria256_installed() {
  [ -d "$vim_xoria256_dir" ]
}

# Install vim-xoria256
_vim_xoria256_up() {
  git clone --quiet https://github.com/vim-scripts/xoria256.vim.git $vim_xoria256_dir
}

# Upgrade vim-xoria256
_vim_xoria256_upgrade() {
  cd $vim_xoria256_dir && git pull --quiet > /dev/null
}

# Remove vim-xoria256
_vim_xoria256_down() {
  rm -rf $vim_xoria256_dir
}
