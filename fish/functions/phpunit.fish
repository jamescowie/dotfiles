function phpunit --description '±PHPUnit shortcut'
    if test -e ./bin/phpunit
        ./bin/phpunit $argv
    else
        echo 'Whoops Behat is not installed. Are you in a project ?'
    end
end

make_completion phpunit 'phpunit'
