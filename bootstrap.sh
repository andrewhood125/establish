#!/usr/bin/env bash

# Life is better in color
source "colors.sh"

# assue mac
OS="mac"

# check if debian
if [ -f "/etc/debian_version" ];
then
  OS="debian"
fi

# load books
echo "Loading books..."
for i in `ls ${OS}`; do
  book="${OS}/${i}"
  echo -e "\t${book}"
  . ${book}
done

# Include the repos deps
source "$1/dotstrap.sh"
echo "Installing deps..."
for i in ${deps[@]}; do
  echo -e "${CYAN}"
  eval ${OS}_${i}
  echo -e "${RESET}"
done

# copy config files over
for i in `ls $1/dots`; do
  cp -i $1/dots/$i ~/.$i
done
