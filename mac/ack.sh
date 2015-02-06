_ack_installed() {
  return hash ack 2>/dev/null;
}

_ack_up() {
  eval "brew install ack"
}

_ack() {
  if [[ _ack_installed ]] ; then
    echo -e "\talready installed."
  else
    _ack_up
  fi
}
