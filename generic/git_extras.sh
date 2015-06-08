# git-extras dependencies
git_extras_deps=(git)

# Is git-extras installed?
_git_extras_installed() {
  return `hash git-extras 2>/dev/null`;
}
