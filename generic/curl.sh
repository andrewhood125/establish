_load_book "${OS}/curl.sh"

_curl_installed() {
  return `hash curl 2>/dev/null`;
}
