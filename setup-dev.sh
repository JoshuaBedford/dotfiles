### PART 2: Setup the Laravel dev environment. ###
# Note: This requires part 1 (terminal setup) to be completed!

# Add directory to path for laravel and valet support
echo "export PATH=$HOME/.composer/vendor/bin:$PATH" >> ~/.zshrc

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet spatie/http-status-check bramus/mixed-content-scan

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install
# cd into ~/Sites

# Install global NPM packages
npm install --global yarn

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Sites
cd $HOME/Sites
$HOME/.composer/vendor/bin/valet park
cd $HOME/.dotfiles

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
