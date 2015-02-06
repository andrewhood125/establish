airline_dir="~/.janus/vim-airline"
_janus_vim_airline_installed() {
  if [[ -d "${airline_dir}" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_vim_airline_up() {
  eval "git clone https://github.com/bling/vim-airline.git ${airline_dir}"
}

_janus_vim_airline() {
  if [[ _janus_vim_airline_installed ]] ; then
    echo -e "\talready installed."
  else
    _janus_vim_airline_up
  fi
}
