# vim-autoformat dependencies
vim_autoformat_deps=(js-beautify)

vim_autoformat_dir="${HOME}/.vim/bundle/vim-autoformat"

# Is vim-autoformat installed?
_vim_autoformat_installed() {
  [ -d "$vim_autoformat_dir" ]
}

# Install vim-autoformat
_vim_autoformat_up() {
  git clone --quiet https://github.com/Chiel92/vim-autoformat.git $vim_autoformat_dir
}

# Upgrade vim-autoformat
_vim_autoformat_upgrade() {
  cd $vim_autoformat_dir && git pull --quiet > /dev/null
}

# Remove vim-autoformat
_vim_autoformat_down() {
  rm -rf $vim_autoformat_dir
}
