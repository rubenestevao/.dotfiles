# Install Laravel Valet
echo 'Install laravel valet'
echo '---------------------'
composer global require laravel/valet
$(composer global config home -q)/vendor/bin/valet install
$(composer global config home -q)/vendor/bin/valet trust
$(composer global config home -q)/vendor/bin/valet park $HOME/Sites

