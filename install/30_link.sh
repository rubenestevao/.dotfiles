echo 'Linking dotfiles'
echo '-----------------'
for link in $DOTFILES/link/*(N); do
    if [ -d "${link}" ]; then
        # -v verbose
        # -R recursive
        # -t target
        # -d destination
        stow -v -R -t $HOME $(basename $link) -d $DOTFILES/link > /dev/null 2>&1
    fi
done
