#!/usr/bin/env bash
REMOTE="https://raw.githubusercontent.com/andrewhood125/establish/master/"
TIME=$(date +"%s")

_determine_os() {
  if [[ -f "/etc/debian_version" ]] ; then OS="debian"; fi
  if [[ `uname` == "Darwin" ]] ; then OS="mac"; fi
  echo -e "OS:\t${OS}"
}

_install_deps() {
  for i in ${unique_deps[@]}; do
    echo "Installing ${i}..."
    eval _${i}
  done
}

_load_books() {
  local caller="${1}"
  echo "${caller} is loading..."
  shift
  for i in "${@}"; do
    _load_remote_book "generic/${i}.sh"
  done
}

_load_remote_book() {
  echo -e "\t${1}"
  . <(curl --silent ${REMOTE}${1}?time=${TIME})
}

_load_dotfiles_deps() {
  . "$1"
  echo "deps:"
  echo -e "\t${deps[@]}"
}

_trim_duplicates() {
  echo "deps after load:"
  echo -e "\t${deps[@]}"
  unique_deps=$( awk 'BEGIN{RS=ORS=" "}!a[$0]++' <<<${deps[@]} );
  echo "unique_deps:"
  echo -e "\t${unique_deps[@]}"
}

OS="Unknown"
unique_deps=()

_determine_os
_load_dotfiles_deps "${1}"
echo "Loading books..."
_load_books "${1}" "${deps[@]}"
_trim_duplicates
_install_deps
