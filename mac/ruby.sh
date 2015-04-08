_ruby_installed() {
  return `hash ruby 2>/dev/null`;
}

_ruby_up() {
  brew install rbenv >/dev/null
  brew install ruby-build >/dev/null
  rbenv install 2.2.1 >/dev/null
}
