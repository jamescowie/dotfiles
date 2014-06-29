function phpspec --description '±PHPSpec shortcut'
    if test -e ./bin/phpspec
        ./bin/phpspec $argv
    else
        set_color red
        echo 'Whoops PHPSpec is not installed.'
        if test -f "composer.json"
            set_color purple
            echo 'Shall we install PHPSpec for you ? [yN]'
            read action
            if contains "y" $action
                composer require 'phpspec/phpspec *'
            end
        end

    end
end

make_completion phpspec 'phpspec'
