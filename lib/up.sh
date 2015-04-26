OS="";
unique_deps=()

. "${ESTABLISH_DIR}/lib/load.sh"

# look for depends.sh or fail
if [ -n "$TEST" ] ; then
  echo "TEST MODE"
elif [ ! -e "depends.sh" ] ; then
  echo "depends.sh not found."
  exit;
else
  # load depends.sh
  . "depends.sh"
fi

# determine operating system
if [ -f "/etc/debian_version" ] ; then
  OS="debian";
elif [ `uname` == "Darwin" ] ; then
  OS="mac";
  # load brew book
  . "${ESTABLISH_DIR}/mac/brew.sh"
  if ! _brew_installed; then
    _brew_up
  fi
else
  echo "Operating system not supported."
  exit;
fi

# load dependencies
_load_books "depends.sh" "${deps[@]}"

# remove duplicates
unique_deps=$( awk 'BEGIN{RS=ORS=" "}!a[$0]++' <<<${deps[@]} );
unique_deps=${unique_deps//-/_}

# display what is to be installled
echo "Installing: ${unique_deps[@]}"

# Establish sudo so we can utilize it within the timeout
sudo -p "Establish may need root, to prevent hang ups please authorize now: " pwd > /dev/null

# reverse deps if removing
if [ "$COMMAND" == "down" ] ; then
  reverse_unique_deps=()
  for (( idx=${#unique_deps[@]}-1 ; idx>=0 ; idx-- )) ; do
    reverse_unique_deps=("${unique_deps[idx]}" "${reverse_unique_deps[@]}")
  done
  $unique_deps=$reverse_unique_deps
fi

# install dependencies
for i in ${unique_deps[@]}; do

  case $COMMAND in
    "upgrade")
      printf "Upgrading ${i}" 
      _${i}_upgrade &
      while kill -0 $! 2> /dev/null; do
        printf "."
        sleep 1
      done
      printf "${i}"
      echo -e " \xE2\x9C\x93"
      ;;

    "down")
      if _${i}_installed; then
        printf "Removing ${i}" 
        _${i}_down &
        while kill -0 $! 2> /dev/null; do
          printf "."
          sleep 1
        done
      else
        printf "${i}"
      fi
      echo -e " \xE2\x9C\x93"
      ;;

    *)
      if ! _${i}_installed; then
        printf "Installing ${i}" 
        _${i}_up &
        while kill -0 $! 2> /dev/null; do
          printf "."
          sleep 1
        done
      else
        printf "${i}"
      fi
      echo -e " \xE2\x9C\x93"
      ;;

  esac

done

# run _after if it exists
if $(type -t _after > /dev/null) ; then
  _after
fi
