# oh_my_zsh dependencies
oh_my_zsh_deps=(curl zsh)

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
  bash "${HOME}/.oh-my-zsh/tools/upgrade.sh"
}

# Remove oh_my_zsh
_oh_my_zsh_down() {
  bash "${HOME}/.oh-my-zsh/tools/uninstall.sh"
}
