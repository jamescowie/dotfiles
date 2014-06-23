function bdd --description '±Make project BDD'
echo '{
    "require": {
        "behat/behat": "~3.0.9",
        "phpspec/phpspec": "*",
        "phpunit/phpunit": "*",
        "bossa/phpspec2-expect": "dev-master"
    },
    "config": {
        "bin-dir": "bin/"
    },
    "autoload": {
        "psr-0": {
            "":"src/"
        }
    }
}' > composer.json

echo '
default:
  gherkin:
    cache:
  suites:
    default:
      contexts:
' > behat.yml

composer install
./bin/behat --init
git init
end
