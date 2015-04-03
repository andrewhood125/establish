_load_book "${OS}/zsh.sh"

_zsh_installed() {
  return `hash zsh 2>/dev/null`;
}
