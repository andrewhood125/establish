_curl_installed() {
  return `hash curl 2>/dev/null`;
}

_curl_up() {
  brew install curl >/dev/null
}
