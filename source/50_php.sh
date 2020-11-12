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

# Switch PHP versions
phpv() {
    if [ $1 = "7.4" ]; then
        valet use php
    else
        valet use php@$1
    fi
    sed -in "s/128M/512M/g" /usr/local/etc/php/$1/conf.d/php-memory-limits.ini
    composer global update
    source ~/.zshrc
}

alias php70="phpv 7.0"
alias php71="phpv 7.1"
alias php72="phpv 7.2"
alias php73="phpv 7.3"
alias php74="phpv 7.4"

# Composer
path_append "$HOME/.composer/vendor/bin"
path_append "$HOME/.config/composer/vendor/bin"
