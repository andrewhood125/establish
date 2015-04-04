airline_dir="${HOME}/.janus/vim-airline"

_janus_vim_airline_installed() {
  [ -d "${airline_dir}" ]
}

_janus_vim_airline_up() {
  git clone --quiet https://github.com/bling/vim-airline.git ${airline_dir}
}
