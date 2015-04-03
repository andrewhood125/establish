_load_book "${OS}/ack.sh"

_ack_installed() {
  return `hash ack 2>/dev/null`;
}
