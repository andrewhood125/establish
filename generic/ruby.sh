_load_remote_book "${OS}/ruby.sh"

_ruby_installed() {
  return `hash ruby 2>/dev/null`;
}

_ruby() {
  if _ruby_installed ; then
    echo -e "\talready installed."
  else
    _ruby_up
  fi
}
