function symf --description '±Create a Symfony project'

composer create-project symfony/framework-standard-edition .

echo 'vendor/
bin/' >> .gitignore

composer require "phpspec/phpspec *"
composer require "behat/behat >3"
composer require "bossa/phpspec2-expect *"
git init
end
