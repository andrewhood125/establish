_ruby_installed() {
  return `hash ruby 2>/dev/null`;
}

_ruby_up() {
  `brew install rbenv`
  `brew install ruby-build`
  `rbenv install 2.2.1`
}
