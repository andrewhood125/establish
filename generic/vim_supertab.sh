# vim-supertab dependencies
vim_supertab_deps=(pathogen)

vim_supertab_dir="${HOME}/.vim/bundle/vim-supertab"

# Is vim-supertab installed?
_vim_supertab_installed() {
  [ -d "$vim_supertab_dir" ]
}

# Install vim-supertab
_vim_supertab_up() {
  git clone --quiet https://github.com/ervandew/supertab.git
}

# Upgrade vim-supertab
_vim_supertab_upgrade() {
  cd $vim_supertab_dir && git pull --quiet > /dev/null
}

# Remove vim-supertab
_vim_supertab_down() {
  rm -rf $vim_supertab_dir
}
