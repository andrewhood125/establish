# pathogen dependencies
pathogen_deps=(vim)

# Is pathogen installed?
_pathogen_installed() {
  [ -e "${HOME}/.vim/autoload/pathogen.vim" ]
}

# Install pathogen
_pathogen_up() {
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

# Upgrade pathogen
_pathogen_upgrade() {
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

# Remove pathogen
_pathogen_down() {
  rm -rf ~/.vim/autload/pathogen.vim
}
