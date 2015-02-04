function load_books() {
  for i in "${@}"; do
    book="${OS}/${i}.sh"
    echo -e "\t${book}"
    . ${book}
  done
}
