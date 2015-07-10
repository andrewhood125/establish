# vim-fugitive dependencies
vim_fugitive_deps=(pathogen git)

vim_fugitive_dir="${HOME}/.vim/bundle/vim-fugitive"

# Is vim-fugitive installed?
_vim_fugitive_installed() {
  [ -d "$vim_fugitive_dir" ]
}

# Install vim-fugitive
_vim_fugitive_up() {
  git clone --quiet https://github.com/tpope/vim-fugitive $vim_fugitive_dir
}

# Upgrade vim-fugitive
_vim_fugitive_upgrade() {
  cd $vim_fugitive_dir && git pull --quiet > /dev/null
}

# Remove vim-fugitive
_vim_fugitive_down() {
  rm -rf $vim_fugitive_dir
}
