# vim-syntastic dependencies
vim_syntastic_deps=(pathogen)

vim_syntastic_dir="${HOME}/.vim/bundle/vim-syntastic"

# Is vim-syntastic installed?
_vim_syntastic_installed() {
  [ -d "$vim_syntastic_dir" ]
}

# Install vim-syntastic
_vim_syntastic_up() {
  git clone --quiet https://github.com/scrooloose/syntastic.git $vim_syntastic_dir
}

# Upgrade vim-syntastic
_vim_syntastic_upgrade() {
  cd $vim_syntastic_dir && git pull --quiet > /dev/null
}

# Remove vim-syntastic
_vim_syntastic_down() {
  rm -rf $vim_syntastic_dir
}
