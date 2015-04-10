# Is curl installed?
_curl_installed() {
  return `hash curl 2>/dev/null`;
}
