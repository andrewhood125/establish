local_deps=(oh_my_zsh)
_load_books "${local_deps[@]}"
dep=("${local_deps[@]}" "${deps[@]}")

_zsh_syntax_highlighting() {
  eval "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
}
