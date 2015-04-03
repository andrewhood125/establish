_load_book "${OS}/ctags.sh"

_ctags_installed() {
  return `hash ctags 2>/dev/null`;
}
