function symf --description '±Create a Symfony project'

composer create-project symfony/framework-standard-edition .

echo 'vendor/
bin/' >> .gitignore

composer require "phpspec/phpspec *"
composer require "behat/behat >3"
git init
end
