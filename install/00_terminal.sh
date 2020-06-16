# Hide "last login" line when starting a new terminal session
touch $HOME/.hushlogin

# Create a Sites directory if it doesn't exists
if [ ! -d $HOME/Sites ]; then
  mkdir $HOME/Sites;
fi

# Install zsh
echo 'Install oh-my-zsh'
echo '-----------------'
rm -rf $HOME/.oh-my-zsh
curl -L https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
rm -rf $HOME/.zshrc