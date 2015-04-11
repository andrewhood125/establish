# php5_cli dependencies
php5_cli_deps=()

# Is php5_cli installed?
_php5_cli_installed() {
  return `hash php 2>/dev/null`;
}
