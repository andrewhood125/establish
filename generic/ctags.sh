# Is ctags installed?
_ctags_installed() {
  return `hash ctags 2>/dev/null`;
}
