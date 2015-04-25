# vim-nerdtree dependencies
vim_nerdtree_deps=(pathogen)

vim_nerdtree_dir="${HOME}/.vim/bundle/vim-nerdtree"

# Is vim-nerdtree installed?
_vim_nerdtree_installed() {
  [ -d "$vim_nerdtree_dir" ]
}

# Install vim-nerdtree
_vim_nerdtree_up() {
  git clone --quiet https://github.com/scrooloose/nerdtree
}

# Upgrade vim-nerdtree
_vim_nerdtree_upgrade() {
  cd $vim_nerdtree_dir && git pull --quiet > /dev/null
}

# Remove vim-nerdtree
_vim_nerdtree_down() {
  rm -rf $vim_nerdtree_dir
}
