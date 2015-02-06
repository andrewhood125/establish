_copy_dots() {
  for i in `ls $1/dots`; do
    cp -i $1/dots/$i ~/.$i
  done
}

_determine_os() {
  if [[ -f "/etc/debian_version" ]] ; then OS="debian"; fi
  if [[ `uname` == "Darwin" ]] ; then OS="mac"; fi
}

_install_deps() {
  for i in ${unique_deps[@]}; do
    echo "Installing ${i}..."
    eval _${i}
  done
}

_load_books() {
  local caller="${1}"
  shift
  for i in "${@}"; do
    book="${OS}/${i}.sh"
    echo -e "${caller} requires...\t${book}"
    . ${book}
  done
}

_load_dotfiles_deps() {
  . "$1/guido.sh"
  echo "${deps[@]}"
}

_trim_duplicates() {
  unique_deps=$( awk 'BEGIN{RS=ORS=" "}!a[$0]++' <<<${deps[@]} );
}
