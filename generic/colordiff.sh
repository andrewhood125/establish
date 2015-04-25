# colordiff dependencies
colordiff_deps=()

# Is colordiff installed?
_colordiff_installed() {
  return `hash colordiff 2>/dev/null`;
}
