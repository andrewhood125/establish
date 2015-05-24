# vim-scala dependencies
vim_scala_deps=(pathogen)

vim_scala_dir="${HOME}/.vim/bundle/vim-scala"

# Is vim-scala installed?
_vim_scala_installed() {
  [ -d "$vim_scala_dir" ]
}

# Install vim-scala
_vim_scala_up() {
  git clone --quiet https://github.com/derekwyatt/vim-scala $vim_scala_dir
}

# Upgrade vim-scala
_vim_scala_upgrade() {
  cd $vim_scala_dir && git pull --quiet > /dev/null
}

# Remove vim-scala
_vim_scala_down() {
  rm -rf $vim_scala_dir
}
