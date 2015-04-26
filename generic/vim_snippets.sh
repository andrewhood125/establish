# vim-snippets dependencies
vim_snippets_deps=(vim-snipmate)

vim_snippets_dir="${HOME}/.vim/bundle/vim-snippets"

# Is vim-snippets installed?
_vim_snippets_installed() {
  [ -d "$vim_snippets_dir" ]
}

# Install vim-snippets
_vim_snippets_up() {
  git clone --quiet https://github.com/honza/vim-snippets $vim_snippets_dir
}

# Upgrade vim-snippets
_vim_snippets_upgrade() {
  cd $vim_snippets_dir && git pull --quiet > /dev/null
}

# Remove vim-snippets
_vim_snippets_down() {
  rm -rf $vim_snippets_dir
}
