# Is brew installed?
_brew_installed() {
  return `hash brew 2>/dev/null`;
}

# Install brew
_brew_up() {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}
