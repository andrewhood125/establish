_ruby_installed() {
  return hash ruby 2>/dev/null;
}

_ruby_up() {
  eval "brew install rbenv"
  eval "brew install ruby-build"
  eval "rbenv install 2.1.5"
}

_ruby() {
  if [[ _ruby_installed ]] ; then
    echo -e "\talready installed."
  else
    _ruby_up
  fi
}
