OS="";
unique_deps=()

. "${ESTABLISH_DIR}/lib/load.sh"

# look for depends.sh or fail
if [ ! -e "depends.sh" ] ; then
  echo "depends.sh not found."
  exit;
fi

# determine operating system
if [ -f "/etc/debian_version" ] ; then
  OS="debian";
elif [ `uname` == "Darwin" ] ; then
  OS="mac";
else
  echo "Operating system not supported."
  exit;
fi

# load depends.sh
. "depends.sh"

# load dependencies
_load_books "depends.sh" "${deps[@]}"

# remove duplicates
unique_deps=$( awk 'BEGIN{RS=ORS=" "}!a[$0]++' <<<${deps[@]} );
unique_deps=${unique_deps//-/_}

# install dependencies
for i in ${unique_deps[@]}; do
  echo "Installing ${i}..."
  if ! _${i}_installed; then
    eval _${i}_up;
  else
    echo -e "\talready installed."
  fi
done

# run _after if it exists
if $(type -t _after > /dev/null) ; then
  _after
fi
