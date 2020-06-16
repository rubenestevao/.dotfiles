# Loads functions
for file in $DOTFILES/functions/*(N); do
  source "$file"
done

# Adds to path dotfiles binaries
path_append "$DOTFILES/bin"

function _src() {
    local patterns file
    
    patterns="*.sh"

    if is-macos; then
        patterns="$patterns|*.sh.macos"
    fi

    if is-ubuntu; then
        patterns="$patterns|*.sh.ubuntu"
    fi

    for file in $(eval "echo $DOTFILES/source/($patterns)(N)"); do
        source "$file"
    done
}

# Loads dotfiles
_src && unset -f _src
