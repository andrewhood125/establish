_load_books() {
  local caller="${1}"
  echo "${caller} is loading..."
  shift
  for i in "${@}"; do

    # Replace - with _
    i=${i//-/_}

    _load_book "${i}.sh"

    # Prepend any deps
    var=$i"_deps[@]"
    deps=("${!var}" "${deps[@]}")

    _load_books "${i}" "${!var}"
  done
}

_load_book() {
  GENERIC_BOOK="$HOME/.establish/generic/${1}"
  OS_BOOK="$HOME/.establish/${OS}/${1}" 2> /dev/null

  if [ -e $GENERIC_BOOK ] ; then
    . $GENERIC_BOOK
    echo -e "\tgeneric/$1"
  else
    echo -e "\tgeneric/$1 not found!"
  fi

  if [ -e $OS_BOOK ] ; then
    . $OS_BOOK
    echo -e "\t${OS}/$1"
  else
    echo -e "\t${OS}/$1 not found!"
  fi
}
