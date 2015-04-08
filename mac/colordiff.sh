
# colordiff dependencies
colordiff_deps=()

# Is colordiff installed?
_colordiff_installed() {
  return `hash colordiff 2>/dev/null`;
}

# Install colordiff
_colordiff_up() {
  brew install colordiff > /dev/null
}
