# Start a PHP server from a directory, optionally specifying the port
function phpserver() {
	local port="${1:-4000}"
	local ip=$(ipconfig getifaddr en0)
	
	{
		sleep 2 
		open "http://${ip}:${port}/"
	} > /dev/null

	php -S "${ip}:${port}"
}

# Laravel
alias artisan='php artisan'
alias fresh="php artisan migrate:fresh --seed"
alias seed="php artisan db:seed"

# Composer
path_append "$HOME/.composer/vendor/bin"
path_append "$HOME/.config/composer/vendor/bin"
