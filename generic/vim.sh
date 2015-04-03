_load_book "${OS}/vim.sh"

_vim_installed() {
  return `hash vim 2>/dev/null`;
}
