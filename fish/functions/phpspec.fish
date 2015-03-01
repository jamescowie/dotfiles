function phpspec --description '±PHPSpec shortcut'
    if test -e ./bin/phpspec
        ./bin/phpspec $argv --format=pretty
    else
        set_color red
        echo 'Whoops PHPSpec is not installed.'
        if test -f "composer.json"
            set_color purple
            echo 'Shall we install PHPSpec for you ? [yN]'
            read action
            if contains "y" $action
                composer require 'phpspec/phpspec ~2.0' --dev
            end
        else
            set_color purple
            echo 'Shall we install composer and PHPSpec for you? [yN]'
            read action
            if contains "y" $action
                echo '
{
    "require-dev": {
        "phpspec/phpspec": "~2.0"
    },
    "config": {
        "bin-dir": "bin"
    },
    "autoload": {"psr-0": {"": "src"}}
}
' > composer.json
            composer install
            end
        end

    end
end

make_completion phpspec 'phpspec'
