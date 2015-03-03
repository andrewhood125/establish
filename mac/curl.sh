_curl_installed() {
  return `hash curl 2>/dev/null`;
}

_curl_up() {
  `brew install curl`
}

_curl() {
  if _curl_installed ; then
    echo -e "\talready installed."
  else
    _curl_up
  fi
}
