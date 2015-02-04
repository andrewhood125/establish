#!/usr/bin/env bash

source "colors.sh"
source "util.sh"

# assue mac
OS="mac"

# check if debian
if [ -f "/etc/debian_version" ];
then
  OS="debian"
fi

source "$1/dotstrap.sh"
echo "Loading books..."
load_books "${deps[@]}"

unique_deps=$( awk 'BEGIN{RS=ORS=" "}!a[$0]++' <<<${deps[@]} );

# Include the repos deps
echo "Installing deps..."
for i in ${unique_deps[@]}; do
  echo -e "${CYAN}"
  eval ${OS}_${i}
  echo -e "${RESET}"
done

# copy config files over
for i in `ls $1/dots`; do
  cp -i $1/dots/$i ~/.$i
done
