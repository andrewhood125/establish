# nodejs dependencies
nodejs_deps=()

# Is nodejs installed?
_nodejs_installed() {
  return `hash node 2>/dev/null`;
}
