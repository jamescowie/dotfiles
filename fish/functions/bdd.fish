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
        "psr-4": {
            "Jcowie\\CoreDomain":"src/"
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
          - defaultContext
' > behat.yml

composer install
./bin/behat --init
git init

echo '<?xml version="1.0" encoding="utf-8" ?>
<phpunit bootstrap="./vendor/autoload.php">
    <testsuites>
        <testsuite name="Project test suite">
            <directory>./tests</directory>
        </testsuite>
    </testsuites>
</phpunit>' > phpunit.xml

mkdir tests

g aa
g ci -m 'First commit'

end
