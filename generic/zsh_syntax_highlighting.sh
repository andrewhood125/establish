local_deps=(oh_my_zsh)
_load_books "zsh-syntax-highlighting" "${local_deps[@]}"
dep=("${local_deps[@]}" "${deps[@]}")

_zsh_syntax_highlighting_installed() {
  if [[ -d "~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]] ; then
    return 0;
  fi
  return 1;
}

_zsh_syntax_highlighting_up() {
  eval "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
}

_zsh_syntax_highlighting() {
  if [[ _zsh_syntax_highlighting_installed ]] ; then
    echo -e "\talready installed."
  else
    _zsh_syntax_highlighting_up
  fi
}
