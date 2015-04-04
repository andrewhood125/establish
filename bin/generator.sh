#! /usr/bin/env bash
PACKAGE=$1
OS=${2}

BLOCK="
# ${PACKAGE} dependencies
${PACKAGE}_deps=()

# Is ${PACKAGE} installed?
_${PACKAGE}_installed() {
  # return \`hash ${PACKAGE} 2>/dev/null\`;
  # [ -d \"\${HOME}/.${PACKAGE}/\" ]
}

# Install ${PACKAGE}
_${PACKAGE}_up() {
  # git clone https://github.com/${PACKAGE}/${PACKAGE}
  # apt-get install ${PACKAGE}
  # brew install ${PACKAGE}
}"

echo "${BLOCK}" > ${OS}/${PACKAGE}.sh
