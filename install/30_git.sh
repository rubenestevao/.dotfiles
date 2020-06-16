# Configure git
echo 'Configure git'
echo '---------------------'

git config --global include.path $DOTFILES/misc/git/gitconfig.inc
git config --global user.name "Rúben Estêvão"
git config --global user.email rubenmaster94@gmail.com
git config --global core.excludesfile $HOME/.global-gitignore