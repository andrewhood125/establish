# ack dependencies
ack_deps=()

# Is ack installed?
_ack_installed() {
  return `hash ack 2>/dev/null`;
}
