die() {
  echo -e "${RED} ${1} ${RESET}"
  type ${2}
}

_establish_usage() {
  echo "USAGE:";
  echo -e "\t`basename ${0}` [up|down|upgrade]"
  echo -e "\t`basename ${0}` create"
  echo -e "\t`basename ${0}` test"
  echo -e "\t`basename ${0}` self-update"
  exit 1;
}


