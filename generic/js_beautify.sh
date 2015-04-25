# js-beautify dependencies
js_beautify_deps=(npm)

# Is js-beautify installed?
_js_beautify_installed() {
  return `hash js-beautify 2>/dev/null`;
}

# Install js-beautify
_js_beautify_up() {
  npm install -g js-beautify > /dev/null
}

# Upgrade js-beautify
_js_beautify_upgrade() {
  npm update -g js-beautify > /dev/null
}

# Remove js-beautify
_js_beautify_down() {
  npm uninstall -g js-beautify > /dev/null
}
