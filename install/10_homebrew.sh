# Check for Homebrew and install if we don't have it
if [ ! -f "which brew" ]; then
  echo 'Install homebrew'
  echo '----------------'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
echo 'Run Brewfile'
echo '----------------'
brew tap homebrew/bundle
brew bundle install --file $DOTFILES/misc/homebrew/Brewfile
