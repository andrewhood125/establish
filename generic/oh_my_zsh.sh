# Is oh_my_zsh installed?
_oh_my_zsh_installed() {
  [ -d "${HOME}/.oh-my-zsh/" ]
}

# Install oh_my_zsh
_oh_my_zsh_up() {
  curl -SsL http://install.ohmyz.sh | sh
}

# Upgrade oh_my_zsh
_oh_my_zsh_upgrade() {
  upgrade_oh_my_zsh
}

# Remove oh_my_zsh
_oh_my_zsh_down() {
  uninstall_oh_my_zsh
}
