#!/usr/bin/env bash
source "util.sh"

OS="Unknown"
unique_deps=()

_determine_os
_load_dotfiles_deps "${1}"
echo "Loading books..."
_load_books "${1}" "${deps[@]}"
declare -f
_trim_duplicates
_install_deps
_copy_dots "${1}"

