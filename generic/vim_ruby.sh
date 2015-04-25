# vim-ruby dependencies
vim_ruby_deps=(pathogen)

vim_ruby_dir="${HOME}/.vim/bundle/vim-ruby"

# Is vim-ruby installed?
_vim_ruby_installed() {
  [ -d "$vim_ruby_dir" ]
}

# Install vim-ruby
_vim_ruby_up() {
  git clone --quiet https://github.com/vim-ruby/vim-ruby $vim_ruby_dir
}

# Upgrade vim-ruby
_vim_ruby_upgrade() {
  cd $vim_ruby_dir && git pull --quiet > /dev/null
}

# Remove vim-ruby
_vim_ruby_down() {
  rm -rf $vim_ruby_dir
}
