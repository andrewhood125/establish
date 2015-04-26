# vim-addon-mw-utils dependencies
vim_addon_mw_utils_deps=(pathogen)

vim_addon_mw_utils_dir="${HOME}/.vim/bundle/vim-addon-mw-utils"

# Is vim-addon-mw-utils installed?
_vim_addon_mw_utils_installed() {
  [ -d "$vim_addon_mw_utils_dir" ]
}

# Install vim-addon-mw-utils
_vim_addon_mw_utils_up() {
  git clone --quiet https://github.com/MarcWeber/vim-addon-mw-utils $vim_addon_mw_utils_dir
}

# Upgrade vim-addon-mw-utils
_vim_addon_mw_utils_upgrade() {
  cd $vim_addon_mw_utils_dir && git pull --quiet > /dev/null
}

# Remove vim-addon-mw-utils
_vim_addon_mw_utils_down() {
  rm -rf $vim_addon_mw_utils_dir
}
