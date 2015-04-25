# vim-emmet dependencies
vim_emmet_deps=(pathogen)

vim_emmet_dir="${HOME}/.vim/bundle/vim-emmet"

# Is vim-emmet installed?
_vim_emmet_installed() {
  [ -d "$vim_emmet_dir" ]
}

# Install vim-emmet
_vim_emmet_up() {
  git clone --quiet https://github.com/mattn/emmet-vim $vim_emmet_dir
}

# Upgrade vim-emmet
_vim_emmet_upgrade() {
  cd $vim_emmet_dir && git pull --quiet > /dev/null
}

# Remove vim-emmet
_vim_emmet_down() {
  rm -rf $vim_emmet_dir
}
