# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Go to Sites folder
alias sites="cd $HOME/Sites"
