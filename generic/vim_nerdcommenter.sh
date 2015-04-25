# vim-nerdcommenter dependencies
vim_nerdcommenter_deps=(pathogen)

vim_nerdcommenter_dir="${HOME}/.vim/bundle/vim-nerdcommenter"

# Is vim-nerdcommenter installed?
_vim_nerdcommenter_installed() {
  [ -d "$vim_nerdcommenter_dir" ]
}

# Install vim-nerdcommenter
_vim_nerdcommenter_up() {
  git clone --quiet https://github.com/scrooloose/nerdcommenter.git
}

# Upgrade vim-nerdcommenter
_vim_nerdcommenter_upgrade() {
  cd $vim_nerdcommenter_dir && git pull --quiet > /dev/null
}

# Remove vim-nerdcommenter
_vim_nerdcommenter_down() {
  rm -rf $vim_nerdcommenter_dir
}
