# vim-ctrlp dependencies
vim_ctrlp_deps=(pathogen)

vim_ctrlp_dir="${HOME}/.vim/bundle/vim-ctrlp"

# Is vim-ctrlp installed?
_vim_ctrlp_installed() {
  [ -d "$vim_ctrlp_dir" ]
}

# Install vim-ctrlp
_vim_ctrlp_up() {
  git clone --quiet https://github.com/kien/ctrlp.vim.git $vim_ctrlp_dir
}

# Upgrade vim-ctrlp
_vim_ctrlp_upgrade() {
  cd $vim_ctrlp_dir && git pull --quiet > /dev/null
}

# Remove vim-ctrlp
_vim_ctrlp_down() {
  rm -rf $vim_ctrlp_dir
}
