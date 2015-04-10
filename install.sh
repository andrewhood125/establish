#!/usr/bin/env bash

SHELLRC="~/.`basename $SHELL`rc"

git clone --quiet https://github.com/andrewhood125/establish.git ~/.establish

echo -e "\nAdd establish to your PATH and reload $SHELL:\n"
echo "    echo -e '\n# Add Establish to PATH\nexport PATH=\"\$PATH:\$HOME/.establish/bin\"' >> ${SHELLRC}"
echo "    source ${SHELLRC}"
