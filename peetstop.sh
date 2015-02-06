#!/usr/bin/env bash
. "util.sh"

OS="Unknown"
unique_deps=()

_determine_os
_load_dotfiles_deps "${1}"
_load_books "${deps[@]}"
_trim_duplicates
_install_deps
_copy_dots "${1}"

