# htop dependencies
htop_deps=()

htop_dir="${HOME}/.vim/bundle/htop"

# Is htop installed?
_htop_installed() {
  return `hash htop 2>/dev/null`;
  [ -d "${HOME}/.htop/" ]
  [ -d "$htop_dir" ]
  [ -e "${HOME}/.htop" ]
}

# Install htop
_htop_up() {
  git clone --quiet https://github.com/htop/htop $htop_dir
  sudo apt-get -qq install htop > /dev/null
  brew install htop > /dev/null
  npm install -g htop > /dev/null
}

# Upgrade htop
_htop_upgrade() {
  cd ~/.htop && git pull --quiet > /dev/null
  cd $htop_dir && git pull --quiet > /dev/null
  sudo apt-get -qq install htop > /dev/null
  brew upgrade htop > /dev/null
  npm update -g htop > /dev/null
}

# Remove htop
_htop_down() {
  rm -rf ~/.htop
  rm -rf $htop_dir
  sudo apt-get -qq remove htop > /dev/null
  brew remove htop > /dev/null
  npm uninstall -g htop > /dev/null
}
