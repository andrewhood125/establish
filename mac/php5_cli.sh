_php5_cli_installed() {
  return hash php 2>/dev/null;
}

_php5_cli_up() {
  eval "brew install php56"
}

_php5_cli() {
  if [[ _php5_cli_installed ]] ; then
    echo -e "\talready installed.";
  else
    _php5_cli_up
  fi
}
