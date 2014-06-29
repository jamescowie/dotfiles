function behat --description '±Behat shortcut'
    if test -e ./bin/behat
        ./bin/behat $argv
    else
        set_color red
        echo 'Whoops Behat is not installed.'
        if test -f "composer.json"
            set_color purple
            echo 'Shall we install behat for you ? [yN]'
            read action
            if contains "y" $action
                composer require 'behat/behat *'
            end
        end
    end
end

make_completion behat 'behat'
