# Show usage if incorrect number of args
if [ "$#" -lt 1 ] ; then
  echo "USAGE:";
  echo -e "\t`basename ${0}` create ${1:-package} [dependencies ...]\n"
  exit 1;
fi

PACKAGE=${1//-/_}
PACKAGE_PRETTY=${1}

# Remove the package from the
# params and leave the package deps
shift

BLOCK="# ${PACKAGE_PRETTY} dependencies
${PACKAGE}_deps=($@)

${PACKAGE}_dir=\"\${HOME}/.vim/bundle/${PACKAGE_PRETTY}\"

# Is ${PACKAGE_PRETTY} installed?
_${PACKAGE}_installed() {
  return \`hash ${PACKAGE_PRETTY} 2>/dev/null\`;
  [ -d \"\${HOME}/.${PACKAGE_PRETTY}/\" ]
  [ -d \"\$${PACKAGE}_dir\" ]
  [ -e \"\${HOME}/.${PACKAGE_PRETTY}\" ]
}

# Install ${PACKAGE_PRETTY}
_${PACKAGE}_up() {
  git clone --quiet https://github.com/${PACKAGE_PRETTY}/${PACKAGE_PRETTY} \$${PACKAGE}_dir
  sudo apt-get -qq install ${PACKAGE_PRETTY} > /dev/null
  brew install ${PACKAGE_PRETTY} > /dev/null
  npm install -g ${PACKAGE_PRETTY} > /dev/null
}

# Upgrade ${PACKAGE_PRETTY}
_${PACKAGE}_upgrade() {
  cd ~/.${PACKAGE_PRETTY} && git pull --quiet > /dev/null
  cd \$${PACKAGE}_dir && git pull --quiet > /dev/null
  sudo apt-get -qq install ${PACKAGE_PRETTY} > /dev/null
  brew upgrade ${PACKAGE_PRETTY} > /dev/null
  npm update -g ${PACKAGE_PRETTY} > /dev/null
}

# Remove ${PACKAGE_PRETTY}
_${PACKAGE}_down() {
  rm -rf ~/.${PACKAGE_PRETTY}
  rm -rf \$${PACKAGE}_dir
  sudo apt-get -qq remove ${PACKAGE_PRETTY} > /dev/null
  brew remove ${PACKAGE_PRETTY} > /dev/null
  npm uninstall -g ${PACKAGE_PRETTY} > /dev/null
}"

echo "${BLOCK}" >> "${ESTABLISH_DIR}/generic/${PACKAGE}.sh"
echo "${BLOCK}" >> "${ESTABLISH_DIR}/debian/${PACKAGE}.sh"
echo "${BLOCK}" >> "${ESTABLISH_DIR}/mac/${PACKAGE}.sh"
