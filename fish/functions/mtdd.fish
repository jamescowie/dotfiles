function mtdd --description '±Make project Magento TDD'
    echo '
{
    "config": {
        "bin-dir": "bin"
    },
    "require": {
        "php": ">=5.3.0"
    },
    "require-dev": {
        "magetest/magento-behat-extension": "dev-develop",
        "magetest/magento-phpspec-extension": "~2.0"
    },
    "autoload": {
        "psr-0": {
            "": [
                "public/app",
                "public/app/code/local",
                "public/app/code/community",
                "public/app/code/core",
                "public/lib"
            ]
        }
    },
    "minimum-stability": "dev"
}
' > composer.json

composer install
end
