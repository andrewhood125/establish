echo -e "\t${BASH_SOURCE}"
. "${OS}/curl.sh"

_curl_installed() {
  return `hash curl 2>/dev/null`;
}

_curl() {
  if _curl_installed ; then
    echo -e "\talready installed."
  else
    _curl_up
  fi
}
