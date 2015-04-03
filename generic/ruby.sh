_load_book "${OS}/ruby.sh"

_ruby_installed() {
  return `hash ruby 2>/dev/null`;
}
