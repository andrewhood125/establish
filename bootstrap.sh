#!/usr/bin/env bash

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

# Install deps
echo "Installing deps..."
deps=(ruby zsh vim)

for i in ${deps[@]}; do
  echo -e "${CYAN}"
  eval ${OS}_${i}
  echo -e "${RESET}"
done

# copy config files over
