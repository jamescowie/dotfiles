function silex --description '±Create a Silex project'

composer create-project silex/silex .

echo 'vendor/
bin/' >> .gitignore

composer require "phpspec/phpspec *"
composer require "behat/behat >3"
git init
end
