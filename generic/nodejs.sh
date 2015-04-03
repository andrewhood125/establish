_load_book "${OS}/nodejs.sh"

_nodejs_installed() {
  return `hash node 2>/dev/null`;
}
