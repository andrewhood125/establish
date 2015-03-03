_ruby_installed() {
  return `hash ruby 2>/dev/null`;
}

_ruby_up() {
  `brew install rbenv`
  `brew install ruby-build`
  `rbenv install 2.1.5`
}

_ruby() {
  if _ruby_installed ; then
    echo -e "\talready installed."
  else
    _ruby_up
  fi
}
