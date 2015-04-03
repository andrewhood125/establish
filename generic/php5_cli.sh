_load_book "${OS}/php5_cli.sh"

_php5_cli_installed() {
  return `hash php 2>/dev/null`;
}
