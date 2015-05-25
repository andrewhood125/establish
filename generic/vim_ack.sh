# vim-ack dependencies
vim_ack_deps=(pathogen ack)

vim_ack_dir="${HOME}/.vim/bundle/vim-ack"

# Is vim-ack installed?
_vim_ack_installed() {
  [ -d "$vim_ack_dir" ]
}

# Install vim-ack
_vim_ack_up() {
  git clone --quiet https://github.com/mileszs/ack.vim $vim_ack_dir
}

# Upgrade vim-ack
_vim_ack_upgrade() {
  cd $vim_ack_dir && git pull --quiet > /dev/null
}

# Remove vim-ack
_vim_ack_down() {
  rm -rf $vim_ack_dir
}
