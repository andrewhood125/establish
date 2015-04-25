# vim-blade dependencies
vim_blade_deps=(pathogen)

vim_blade_dir="${HOME}/.vim/bundle/vim-blade"

# Is vim-blade installed?
_vim_blade_installed() {
  [ -d "$vim_blade_dir" ]
}

# Install vim-blade
_vim_blade_up() {
  git clone --quiet https://github.com/xsbeats/vim-blade $vim_blade_dir
}

# Upgrade vim-blade
_vim_blade_upgrade() {
  cd $vim_blade_dir && git pull --quiet > /dev/null
}

# Remove vim-blade
_vim_blade_down() {
  rm -rf $vim_blade_dir
}
