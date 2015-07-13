# vim-html5 dependencies
vim_html5_deps=(pathogen)

vim_html5_dir="${HOME}/.vim/bundle/vim-html5"

# Is vim-html5 installed?
_vim_html5_installed() {
  [ -d "$vim_html5_dir" ]
}

# Install vim-html5
_vim_html5_up() {
  git clone --quiet https://github.com/othree/html5.vim $vim_html5_dir
}

# Upgrade vim-html5
_vim_html5_upgrade() {
  cd $vim_html5_dir && git pull --quiet > /dev/null
}

# Remove vim-html5
_vim_html5_down() {
  rm -rf $vim_html5_dir
}
