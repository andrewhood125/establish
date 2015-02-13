echo -e "\t${BASH_SOURCE}"
_janus_vim_html5_installed() {
  if [[ -d "${HOME}/.janus/html5.vim" ]] ; then
    return 0;
  fi
  return 1;
}

_janus_vim_html5_up() {
  `git clone https://github.com/othree/html5.vim.git ${HOME}/.janus/html5.vim`
}

_janus_vim_html5() {
  if _janus_vim_html5_installed ; then
    echo -e "\talready installed."
  else
    _janus_vim_html5_up
  fi
}
