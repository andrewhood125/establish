# vim-snipmate dependencies
vim_snipmate_deps=(vim-tlib vim-addon-mw-utils)

vim_snipmate_dir="${HOME}/.vim/bundle/vim-snipmate"

# Is vim-snipmate installed?
_vim_snipmate_installed() {
  [ -d "$vim_snipmate_dir" ]
}

# Install vim-snipmate
_vim_snipmate_up() {
  git clone --quiet https://github.com/garbas/vim-snipmate $vim_snipmate_dir
}

# Upgrade vim-snipmate
_vim_snipmate_upgrade() {
  cd $vim_snipmate_dir && git pull --quiet > /dev/null
}

# Remove vim-snipmate
_vim_snipmate_down() {
  rm -rf $vim_snipmate_dir
}
