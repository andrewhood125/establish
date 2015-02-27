_load_remote_book "${OS}/ack.sh"

_ack_installed() {
  return `hash ack 2>/dev/null`;
}

_ack() {
  if _ack_installed ; then
    echo -e "\talready installed."
  else
    _ack_up
  fi
}
