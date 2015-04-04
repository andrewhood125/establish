npm_deps=(nodejs curl)

_npm_installed() {
  return `hash npm 2>/dev/null`;
}

_npm_up() {
  curl -SsLo- https://npmjs.org/install.sh | sudo sh
}
