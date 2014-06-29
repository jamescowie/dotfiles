function behat --description '±Behat shortcut'
    if test -e ./bin/behat
        ./bin/behat $argv
    else
        echo 'Whoops Behat is not installed.'
        if test -f "composer.json"
            set_color orange
            echo 'Shall we install behat for you ? [yN]'
            read action
            if contains "Y" $action
                composer require 'behat/behat *'
            end
        end
    end
end

make_completion behat 'behat'
