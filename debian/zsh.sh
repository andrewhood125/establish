_zsh_up() {
  sudo apt-get -qq install zsh > /dev/null
  chsh --shell /bin/zsh
}
